@interface DOCNodeThumbnailIdentifier
- (BOOL)isEqual:(id)equal;
- (DOCNodeThumbnailIdentifier)initWithNodeIdentifier:(id)identifier modificationDate:(id)date contentVersion:(id)version folderType:(unint64_t)type isTopLevelSharedItem:(BOOL)item isDownloaded:(BOOL)downloaded fileExtension:(id)extension customFolder:(id)self0 isActionable:(BOOL)self1;
- (id)description;
- (id)identifierIgnoringDownloadStatus;
- (unint64_t)hash;
@end

@implementation DOCNodeThumbnailIdentifier

- (id)identifierIgnoringDownloadStatus
{
  v3 = [DOCNodeThumbnailIdentifier alloc];
  nodeIdentifier = [(DOCNodeThumbnailIdentifier *)self nodeIdentifier];
  modificationDate = [(DOCNodeThumbnailIdentifier *)self modificationDate];
  contentVersion = [(DOCNodeThumbnailIdentifier *)self contentVersion];
  folderType = [(DOCNodeThumbnailIdentifier *)self folderType];
  isTopLevelSharedItem = [(DOCNodeThumbnailIdentifier *)self isTopLevelSharedItem];
  fileExtension = [(DOCNodeThumbnailIdentifier *)self fileExtension];
  LOBYTE(v12) = [(DOCNodeThumbnailIdentifier *)self isActionable];
  v10 = [(DOCNodeThumbnailIdentifier *)v3 initWithNodeIdentifier:nodeIdentifier modificationDate:modificationDate contentVersion:contentVersion folderType:folderType isTopLevelSharedItem:isTopLevelSharedItem isDownloaded:0 fileExtension:fileExtension customFolder:0 isActionable:v12];

  return v10;
}

- (unint64_t)hash
{
  nodeIdentifier = [(DOCNodeThumbnailIdentifier *)self nodeIdentifier];
  v4 = [nodeIdentifier hash];

  modificationDate = [(DOCNodeThumbnailIdentifier *)self modificationDate];
  v6 = [modificationDate hash] - v4 + 32 * v4;

  contentVersion = [(DOCNodeThumbnailIdentifier *)self contentVersion];
  v8 = [contentVersion hash] - v6 + 32 * v6;

  v9 = [(DOCNodeThumbnailIdentifier *)self folderType]- v8 + 32 * v8;
  if ([(DOCNodeThumbnailIdentifier *)self isTopLevelSharedItem])
  {
    v10 = 37;
  }

  else
  {
    v10 = 41;
  }

  v11 = v10 - v9 + 32 * v9;
  if ([(DOCNodeThumbnailIdentifier *)self isDownloaded])
  {
    v12 = 37;
  }

  else
  {
    v12 = 41;
  }

  v13 = v12 - v11 + 32 * v11;
  fileExtension = [(DOCNodeThumbnailIdentifier *)self fileExtension];
  v15 = [fileExtension hash] - v13 + 32 * v13;

  customFolderId = [(DOCNodeThumbnailIdentifier *)self customFolderId];
  v17 = [customFolderId hash] - v15 + 32 * v15;

  if ([(DOCNodeThumbnailIdentifier *)self isActionable])
  {
    v18 = 37;
  }

  else
  {
    v18 = 41;
  }

  return v18 - v17 + 32 * v17;
}

- (DOCNodeThumbnailIdentifier)initWithNodeIdentifier:(id)identifier modificationDate:(id)date contentVersion:(id)version folderType:(unint64_t)type isTopLevelSharedItem:(BOOL)item isDownloaded:(BOOL)downloaded fileExtension:(id)extension customFolder:(id)self0 isActionable:(BOOL)self1
{
  identifierCopy = identifier;
  dateCopy = date;
  versionCopy = version;
  extensionCopy = extension;
  folderCopy = folder;
  v34.receiver = self;
  v34.super_class = DOCNodeThumbnailIdentifier;
  v22 = [(DOCNodeThumbnailIdentifier *)&v34 init];
  if (v22)
  {
    v23 = [identifierCopy copy];
    nodeIdentifier = v22->_nodeIdentifier;
    v22->_nodeIdentifier = v23;

    v25 = [dateCopy copy];
    modificationDate = v22->_modificationDate;
    v22->_modificationDate = v25;

    v27 = [versionCopy copy];
    contentVersion = v22->_contentVersion;
    v22->_contentVersion = v27;

    v22->_folderType = type;
    v22->_isTopLevelSharedItem = item;
    v22->_isDownloaded = downloaded;
    v29 = [extensionCopy copy];
    fileExtension = v22->_fileExtension;
    v22->_fileExtension = v29;

    v31 = [folderCopy copy];
    customFolderId = v22->_customFolderId;
    v22->_customFolderId = v31;

    v22->_isActionable = actionable;
  }

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
    goto LABEL_31;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    nodeIdentifier = self->_nodeIdentifier;
    nodeIdentifier = [(DOCNodeThumbnailIdentifier *)equalCopy nodeIdentifier];
    if (nodeIdentifier != nodeIdentifier)
    {
      v10 = self->_nodeIdentifier;
      nodeIdentifier2 = [(DOCNodeThumbnailIdentifier *)equalCopy nodeIdentifier];
      if (![v10 isEqual:nodeIdentifier2])
      {
        v7 = 0;
        goto LABEL_29;
      }
    }

    modificationDate = self->_modificationDate;
    modificationDate = [(DOCNodeThumbnailIdentifier *)equalCopy modificationDate];
    if (modificationDate != modificationDate)
    {
      v13 = self->_modificationDate;
      modificationDate2 = [(DOCNodeThumbnailIdentifier *)equalCopy modificationDate];
      if (![(NSDate *)v13 isEqual:modificationDate2])
      {
        v7 = 0;
LABEL_27:

LABEL_28:
        if (nodeIdentifier == nodeIdentifier)
        {
LABEL_30:

          goto LABEL_31;
        }

LABEL_29:

        goto LABEL_30;
      }

      v42 = modificationDate2;
    }

    contentVersion = self->_contentVersion;
    contentVersion = [(DOCNodeThumbnailIdentifier *)equalCopy contentVersion];
    if (contentVersion != contentVersion)
    {
      v17 = self->_contentVersion;
      contentVersion2 = [(DOCNodeThumbnailIdentifier *)equalCopy contentVersion];
      v19 = v17;
      v20 = contentVersion2;
      if (![v19 isEqual:contentVersion2])
      {
        v7 = 0;
        goto LABEL_25;
      }

      v41 = v20;
    }

    folderType = self->_folderType;
    if (folderType != [(DOCNodeThumbnailIdentifier *)equalCopy folderType]|| (isTopLevelSharedItem = self->_isTopLevelSharedItem, isTopLevelSharedItem != [(DOCNodeThumbnailIdentifier *)equalCopy isTopLevelSharedItem]) || (isDownloaded = self->_isDownloaded, isDownloaded != [(DOCNodeThumbnailIdentifier *)equalCopy isDownloaded]))
    {
      v7 = 0;
      goto LABEL_22;
    }

    fileExtension = self->_fileExtension;
    [(DOCNodeThumbnailIdentifier *)equalCopy fileExtension];
    v40 = v39 = fileExtension;
    if (fileExtension != v40)
    {
      v25 = self->_fileExtension;
      fileExtension = [(DOCNodeThumbnailIdentifier *)equalCopy fileExtension];
      if (![(NSString *)v25 isEqualToString:?])
      {
        v7 = 0;
        v26 = v40;
        goto LABEL_38;
      }
    }

    customFolderId = self->_customFolderId;
    customFolderId = [(DOCNodeThumbnailIdentifier *)equalCopy customFolderId];
    v37 = customFolderId;
    v30 = customFolderId == customFolderId;
    v31 = customFolderId;
    if (v30 || (v36 = self->_customFolderId, [(DOCNodeThumbnailIdentifier *)equalCopy customFolderId], v32 = objc_claimAutoreleasedReturnValue(), v33 = v36, v35 = v32, [(NSString *)v33 isEqualToString:?]))
    {
      isActionable = self->_isActionable;
      v7 = isActionable == [(DOCNodeThumbnailIdentifier *)equalCopy isActionable];
      if (v37 == v31)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_37:
    v26 = v40;
    if (v39 == v40)
    {
LABEL_39:

LABEL_22:
      v20 = v41;
      if (contentVersion == contentVersion)
      {
LABEL_26:

        modificationDate2 = v42;
        if (modificationDate == modificationDate)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_25:

      goto LABEL_26;
    }

LABEL_38:

    goto LABEL_39;
  }

  v7 = 0;
LABEL_31:

  return v7;
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = DOCNodeThumbnailIdentifier;
  v3 = [(DOCNodeThumbnailIdentifier *)&v14 description];
  v4 = [v3 mutableCopy];

  nodeIdentifier = [(DOCNodeThumbnailIdentifier *)self nodeIdentifier];
  modificationDate = [(DOCNodeThumbnailIdentifier *)self modificationDate];
  contentVersion = [(DOCNodeThumbnailIdentifier *)self contentVersion];
  folderType = [(DOCNodeThumbnailIdentifier *)self folderType];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[DOCNodeThumbnailIdentifier isTopLevelSharedItem](self, "isTopLevelSharedItem")}];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DOCNodeThumbnailIdentifier isDownloaded](self, "isDownloaded")}];
  fileExtension = [(DOCNodeThumbnailIdentifier *)self fileExtension];
  customFolderId = [(DOCNodeThumbnailIdentifier *)self customFolderId];
  [v4 appendFormat:@"%@, %@, %@, %lu, %@, %@, %@, %@", nodeIdentifier, modificationDate, contentVersion, folderType, v9, v10, fileExtension, customFolderId];

  return v4;
}

@end