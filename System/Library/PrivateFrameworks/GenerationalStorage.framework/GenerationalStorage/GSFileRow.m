@interface GSFileRow
+ (BOOL)createEntry:(id)a3 withDocumentID:(unint64_t)a4 fileID:(unint64_t)a5 error:(id *)a6;
+ (BOOL)storageIDExists:(id)a3 storageID:(int64_t)a4;
+ (id)enumerate:(id)a3;
+ (id)enumerate:(id)a3 withPathPrefix:(const char *)a4;
+ (id)fileRow:(id)a3 byDocumentID:(unint64_t)a4;
+ (id)fileRow:(id)a3 byFileID:(unint64_t)a4;
+ (id)fileRow:(id)a3 byRowID:(int64_t)a4;
+ (int64_t)tableRowCount:(id)a3;
- (BOOL)saveToDB:(id)a3;
- (id)initFromPQLResultSet:(id)a3 error:(id *)a4;
@end

@implementation GSFileRow

- (id)initFromPQLResultSet:(id)a3 error:(id *)a4
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = GSFileRow;
  v6 = [(GSFileRow *)&v8 init];
  if (v6)
  {
    v6->file_row_id = [v5 longLongAtIndex:0];
    v6->file_inode = [v5 longLongAtIndex:1];
    v6->file_last_seen = [v5 longAtIndex:2];
    v6->file_status = [v5 longLongAtIndex:3];
    v6->file_document_id = [v5 longLongAtIndex:4];
  }

  return v6;
}

+ (BOOL)createEntry:(id)a3 withDocumentID:(unint64_t)a4 fileID:(unint64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [v9 execute:{@"INSERT INTO files (file_row_id, file_inode, file_last_seen, file_status, file_document_id) VALUES (NULL, %lld, %ld, %d, %lld)", a5, time(0), 1, a4}];
  v11 = v10;
  if (a6 && (v10 & 1) == 0)
  {
    *a6 = [v9 translatedError];
  }

  return v11;
}

- (BOOL)saveToDB:(id)a3
{
  v4 = a3;
  v5 = time(0);
  self->file_last_seen = v5;
  file_row_id = self->file_row_id;
  if (!file_row_id)
  {
    sub_1000275AC();
  }

  v7 = [v4 execute:{@"UPDATE files SET file_inode = %lld, file_status = %d, file_last_seen = %ld, file_document_id = %lld  WHERE file_row_id = %lld", self->file_inode, self->file_status, v5, self->file_document_id, file_row_id}];

  return v7;
}

+ (id)fileRow:(id)a3 byDocumentID:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 fetchObjectOfClass:objc_opt_class() sql:{@"SELECT file_row_id, file_inode, file_last_seen, file_status, file_document_id FROM files WHERE file_document_id = %lld", a4}];

  return v6;
}

+ (id)fileRow:(id)a3 byRowID:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 fetchObjectOfClass:objc_opt_class() sql:{@"SELECT file_row_id, file_inode, file_last_seen, file_status, file_document_id FROM files WHERE file_row_id = %lld", a4}];

  return v6;
}

+ (id)fileRow:(id)a3 byFileID:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 fetchObjectOfClass:objc_opt_class() sql:{@"SELECT file_row_id, file_inode, file_last_seen, file_status, file_document_id FROM files WHERE file_inode = %lld", a4}];

  return v6;
}

+ (int64_t)tableRowCount:(id)a3
{
  v3 = a3;
  v4 = [v3 fetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(*) FROM files"];

  v5 = [v4 longLongValue];
  return v5;
}

+ (BOOL)storageIDExists:(id)a3 storageID:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 fetchObjectOfClass:objc_opt_class() sql:{@"SELECT COUNT(*) FROM files WHERE file_document_id = %lld", a4}];

  v7 = [v6 BOOLValue];
  return v7;
}

+ (id)enumerate:(id)a3
{
  v3 = [a3 fetch:{@"SELECT file_row_id, file_inode, file_last_seen, file_status, file_document_id FROM files"}];
  v4 = [v3 enumerateObjectsOfClass:objc_opt_class()];

  return v4;
}

+ (id)enumerate:(id)a3 withPathPrefix:(const char *)a4
{
  v6 = strlen(a4) - 1;
  v7 = (a4[v6] + 1);
  v8 = a3;
  v9 = [NSString stringWithFormat:@"%.*s%c", v6, a4, v7];
  v10 = [v8 fetch:{@"SELECT file_row_id FROM files WHERE file_path >= %s AND file_path < %@", a4, v9}];

  v11 = [v10 enumerateObjectsOfClass:objc_opt_class()];

  return v11;
}

@end