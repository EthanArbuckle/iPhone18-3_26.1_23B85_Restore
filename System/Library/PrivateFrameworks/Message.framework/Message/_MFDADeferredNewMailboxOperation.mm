@interface _MFDADeferredNewMailboxOperation
- (_MFDADeferredNewMailboxOperation)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _MFDADeferredNewMailboxOperation

- (_MFDADeferredNewMailboxOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _MFDADeferredNewMailboxOperation;
  v5 = [(_MFDADeferredNewMailboxOperation *)&v13 init];
  if (v5)
  {
    if (([v4 allowsKeyedCoding] & 1) == 0)
    {
      __assert_rtn("[_MFDADeferredNewMailboxOperation initWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 762, "[aDecoder allowsKeyedCoding] && aDecoder must allow keyed coding");
    }

    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ParentFolderID"];
    parentFolderID = v5->_parentFolderID;
    v5->_parentFolderID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TemporaryFolderID"];
    temporaryFolderID = v5->_temporaryFolderID;
    v5->_temporaryFolderID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    __assert_rtn("[_MFDADeferredNewMailboxOperation encodeWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 773, "[aCoder allowsKeyedCoding] && aCoder must allow keyed coding");
  }

  [v4 encodeObject:self->_displayName forKey:@"DisplayName"];
  [v4 encodeObject:self->_parentFolderID forKey:@"ParentFolderID"];
  [v4 encodeObject:self->_temporaryFolderID forKey:@"TemporaryFolderID"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MFDADeferredNewMailboxOperation;
  v4 = [(_MFDADeferredNewMailboxOperation *)&v8 description];
  parentFolderID = self->_parentFolderID;
  v6 = [v3 stringWithFormat:@"%@ display-name %@, parent-folder-id %@, temporary-folder-id %@", v4, self->_displayName, parentFolderID, self->_temporaryFolderID];

  return v6;
}

@end