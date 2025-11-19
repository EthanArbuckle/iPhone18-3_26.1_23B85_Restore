@interface _MFDADeferredModifyMailboxOperation
- (_MFDADeferredModifyMailboxOperation)initWithCoder:(id)a3;
- (_MFDADeferredModifyMailboxOperation)initWithFolderID:(id)a3 newParentFolderID:(id)a4 newDisplayName:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _MFDADeferredModifyMailboxOperation

- (_MFDADeferredModifyMailboxOperation)initWithFolderID:(id)a3 newParentFolderID:(id)a4 newDisplayName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _MFDADeferredModifyMailboxOperation;
  v11 = [(_MFDADeferredModifyMailboxOperation *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    folderID = v11->_folderID;
    v11->_folderID = v12;

    v14 = [v9 copy];
    newParentFolderID = v11->_newParentFolderID;
    v11->_newParentFolderID = v14;

    v16 = [v10 copy];
    newDisplayName = v11->_newDisplayName;
    v11->_newDisplayName = v16;
  }

  return v11;
}

- (_MFDADeferredModifyMailboxOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _MFDADeferredModifyMailboxOperation;
  v5 = [(_MFDADeferredModifyMailboxOperation *)&v13 init];
  if (v5)
  {
    if (([v4 allowsKeyedCoding] & 1) == 0)
    {
      __assert_rtn("[_MFDADeferredModifyMailboxOperation initWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 853, "[aDecoder allowsKeyedCoding] && aDecoder must allow keyed coding");
    }

    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FolderID"];
    folderID = v5->_folderID;
    v5->_folderID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NewParentFolderID"];
    newParentFolderID = v5->_newParentFolderID;
    v5->_newParentFolderID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NewDisplayName"];
    newDisplayName = v5->_newDisplayName;
    v5->_newDisplayName = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    __assert_rtn("[_MFDADeferredModifyMailboxOperation encodeWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 864, "[aCoder allowsKeyedCoding] && aCoder must allow keyed coding");
  }

  [v4 encodeObject:self->_folderID forKey:@"FolderID"];
  [v4 encodeObject:self->_newParentFolderID forKey:@"NewParentFolderID"];
  [v4 encodeObject:self->_newDisplayName forKey:@"NewDisplayName"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MFDADeferredModifyMailboxOperation;
  v4 = [(_MFDADeferredModifyMailboxOperation *)&v8 description];
  newParentFolderID = self->_newParentFolderID;
  v6 = [v3 stringWithFormat:@"%@ folder-id %@, new-parent-folder-id %@, new-display-name %@", v4, self->_folderID, newParentFolderID, self->_newDisplayName];

  return v6;
}

@end