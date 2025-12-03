@interface GSFileRow
+ (BOOL)createEntry:(id)entry withDocumentID:(unint64_t)d fileID:(unint64_t)iD error:(id *)error;
+ (BOOL)storageIDExists:(id)exists storageID:(int64_t)d;
+ (id)enumerate:(id)enumerate;
+ (id)enumerate:(id)enumerate withPathPrefix:(const char *)prefix;
+ (id)fileRow:(id)row byDocumentID:(unint64_t)d;
+ (id)fileRow:(id)row byFileID:(unint64_t)d;
+ (id)fileRow:(id)row byRowID:(int64_t)d;
+ (int64_t)tableRowCount:(id)count;
- (BOOL)saveToDB:(id)b;
- (id)initFromPQLResultSet:(id)set error:(id *)error;
@end

@implementation GSFileRow

- (id)initFromPQLResultSet:(id)set error:(id *)error
{
  setCopy = set;
  v8.receiver = self;
  v8.super_class = GSFileRow;
  v6 = [(GSFileRow *)&v8 init];
  if (v6)
  {
    v6->file_row_id = [setCopy longLongAtIndex:0];
    v6->file_inode = [setCopy longLongAtIndex:1];
    v6->file_last_seen = [setCopy longAtIndex:2];
    v6->file_status = [setCopy longLongAtIndex:3];
    v6->file_document_id = [setCopy longLongAtIndex:4];
  }

  return v6;
}

+ (BOOL)createEntry:(id)entry withDocumentID:(unint64_t)d fileID:(unint64_t)iD error:(id *)error
{
  entryCopy = entry;
  v10 = [entryCopy execute:{@"INSERT INTO files (file_row_id, file_inode, file_last_seen, file_status, file_document_id) VALUES (NULL, %lld, %ld, %d, %lld)", iD, time(0), 1, d}];
  v11 = v10;
  if (error && (v10 & 1) == 0)
  {
    *error = [entryCopy translatedError];
  }

  return v11;
}

- (BOOL)saveToDB:(id)b
{
  bCopy = b;
  v5 = time(0);
  self->file_last_seen = v5;
  file_row_id = self->file_row_id;
  if (!file_row_id)
  {
    sub_1000275AC();
  }

  v7 = [bCopy execute:{@"UPDATE files SET file_inode = %lld, file_status = %d, file_last_seen = %ld, file_document_id = %lld  WHERE file_row_id = %lld", self->file_inode, self->file_status, v5, self->file_document_id, file_row_id}];

  return v7;
}

+ (id)fileRow:(id)row byDocumentID:(unint64_t)d
{
  rowCopy = row;
  v6 = [rowCopy fetchObjectOfClass:objc_opt_class() sql:{@"SELECT file_row_id, file_inode, file_last_seen, file_status, file_document_id FROM files WHERE file_document_id = %lld", d}];

  return v6;
}

+ (id)fileRow:(id)row byRowID:(int64_t)d
{
  rowCopy = row;
  v6 = [rowCopy fetchObjectOfClass:objc_opt_class() sql:{@"SELECT file_row_id, file_inode, file_last_seen, file_status, file_document_id FROM files WHERE file_row_id = %lld", d}];

  return v6;
}

+ (id)fileRow:(id)row byFileID:(unint64_t)d
{
  rowCopy = row;
  v6 = [rowCopy fetchObjectOfClass:objc_opt_class() sql:{@"SELECT file_row_id, file_inode, file_last_seen, file_status, file_document_id FROM files WHERE file_inode = %lld", d}];

  return v6;
}

+ (int64_t)tableRowCount:(id)count
{
  countCopy = count;
  v4 = [countCopy fetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(*) FROM files"];

  longLongValue = [v4 longLongValue];
  return longLongValue;
}

+ (BOOL)storageIDExists:(id)exists storageID:(int64_t)d
{
  existsCopy = exists;
  v6 = [existsCopy fetchObjectOfClass:objc_opt_class() sql:{@"SELECT COUNT(*) FROM files WHERE file_document_id = %lld", d}];

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

+ (id)enumerate:(id)enumerate
{
  v3 = [enumerate fetch:{@"SELECT file_row_id, file_inode, file_last_seen, file_status, file_document_id FROM files"}];
  v4 = [v3 enumerateObjectsOfClass:objc_opt_class()];

  return v4;
}

+ (id)enumerate:(id)enumerate withPathPrefix:(const char *)prefix
{
  v6 = strlen(prefix) - 1;
  v7 = (prefix[v6] + 1);
  enumerateCopy = enumerate;
  v9 = [NSString stringWithFormat:@"%.*s%c", v6, prefix, v7];
  v10 = [enumerateCopy fetch:{@"SELECT file_row_id FROM files WHERE file_path >= %s AND file_path < %@", prefix, v9}];

  v11 = [v10 enumerateObjectsOfClass:objc_opt_class()];

  return v11;
}

@end