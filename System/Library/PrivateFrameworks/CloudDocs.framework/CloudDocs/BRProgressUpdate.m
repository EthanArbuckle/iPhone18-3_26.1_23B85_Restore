@interface BRProgressUpdate
- (BRProgressUpdate)initWithCoder:(id)a3;
- (NSArray)parentFileIDs;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)parentFileIDs;
@end

@implementation BRProgressUpdate

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<progress %@", self->_folderID];
  v4 = v3;
  uploadTotalSize = self->_uploadTotalSize;
  if (uploadTotalSize)
  {
    [v3 appendFormat:@" ul:%llu/%llu (%.1f%%)", self->_uploadCompletedSize, uploadTotalSize, self->_uploadCompletedSize * 100.0 / uploadTotalSize];
  }

  downloadTotalSize = self->_downloadTotalSize;
  if (downloadTotalSize)
  {
    [v4 appendFormat:@" dl:%llu/%llu (%.1f%%)", self->_downloadCompletedSize, downloadTotalSize, self->_downloadCompletedSize * 100.0 / downloadTotalSize];
  }

  [v4 appendString:@">"];

  return v4;
}

- (NSArray)parentFileIDs
{
  parentFileIDs = self->_parentFileIDs;
  if (!parentFileIDs)
  {
    v4 = brc_bread_crumbs("[BRProgressUpdate parentFileIDs]", 44);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(BRProgressUpdate *)v4 parentFileIDs];
    }

    parentFileIDs = self->_parentFileIDs;
  }

  return parentFileIDs;
}

- (BRProgressUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BRProgressUpdate;
  v5 = [(BRProgressUpdate *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    folderID = v5->_folderID;
    v5->_folderID = v6;

    v5->_uploadCompletedSize = [v4 decodeInt64ForKey:@"ul"];
    v5->_uploadTotalSize = [v4 decodeInt64ForKey:@"ulDone"];
    v5->_downloadCompletedSize = [v4 decodeInt64ForKey:@"dl"];
    v5->_downloadTotalSize = [v4 decodeInt64ForKey:@"dlDone"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  folderID = self->_folderID;
  v5 = a3;
  [v5 encodeObject:folderID forKey:@"id"];
  [v5 encodeInt64:self->_uploadCompletedSize forKey:@"ul"];
  [v5 encodeInt64:self->_uploadTotalSize forKey:@"ulDone"];
  [v5 encodeInt64:self->_downloadCompletedSize forKey:@"dl"];
  [v5 encodeInt64:self->_downloadTotalSize forKey:@"dlDone"];
}

- (void)parentFileIDs
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: this call was not supposed to be made%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end