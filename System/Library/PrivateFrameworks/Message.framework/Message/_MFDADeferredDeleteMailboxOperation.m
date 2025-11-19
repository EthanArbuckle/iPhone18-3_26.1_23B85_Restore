@interface _MFDADeferredDeleteMailboxOperation
- (_MFDADeferredDeleteMailboxOperation)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _MFDADeferredDeleteMailboxOperation

- (_MFDADeferredDeleteMailboxOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _MFDADeferredDeleteMailboxOperation;
  v5 = [(_MFDADeferredDeleteMailboxOperation *)&v9 init];
  if (v5)
  {
    if (([v4 allowsKeyedCoding] & 1) == 0)
    {
      __assert_rtn("[_MFDADeferredDeleteMailboxOperation initWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 803, "[aDecoder allowsKeyedCoding] && aDecoder must allow keyed coding");
    }

    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FolderID"];
    folderID = v5->_folderID;
    v5->_folderID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    __assert_rtn("[_MFDADeferredDeleteMailboxOperation encodeWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 812, "[aCoder allowsKeyedCoding] && aCoder must allow keyed coding");
  }

  [v4 encodeObject:self->_folderID forKey:@"FolderID"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = _MFDADeferredDeleteMailboxOperation;
  v4 = [(_MFDADeferredDeleteMailboxOperation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ folder-id %@", v4, self->_folderID];

  return v5;
}

@end