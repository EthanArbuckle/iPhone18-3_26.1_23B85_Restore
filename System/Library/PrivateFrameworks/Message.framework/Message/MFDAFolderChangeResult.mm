@interface MFDAFolderChangeResult
- (MFDAFolderChangeResult)initWithStatusCode:(int64_t)a3 error:(id)a4 folderID:(id)a5 folderName:(id)a6;
- (id)description;
@end

@implementation MFDAFolderChangeResult

- (MFDAFolderChangeResult)initWithStatusCode:(int64_t)a3 error:(id)a4 folderID:(id)a5 folderName:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = MFDAFolderChangeResult;
  v14 = [(MFDAFolderChangeResult *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_statusCode = a3;
    objc_storeStrong(&v14->_error, a4);
    v16 = [v12 copy];
    folderID = v15->_folderID;
    v15->_folderID = v16;

    v18 = [v13 copy];
    folderName = v15->_folderName;
    v15->_folderName = v18;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MFDAFolderChangeResult;
  v4 = [(MFDAFolderChangeResult *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ status %ld, error %@, folderID %@, folderName %@", v4, self->_statusCode, self->_error, self->_folderID, self->_folderName];

  return v5;
}

@end