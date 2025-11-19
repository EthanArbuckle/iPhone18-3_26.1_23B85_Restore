@interface DOCNodeThumbnailIdentifier
- (BOOL)isEqual:(id)a3;
- (DOCNodeThumbnailIdentifier)initWithNodeIdentifier:(id)a3 modificationDate:(id)a4 contentVersion:(id)a5 folderType:(unint64_t)a6 isTopLevelSharedItem:(BOOL)a7 isDownloaded:(BOOL)a8 fileExtension:(id)a9 customFolder:(id)a10 isActionable:(BOOL)a11;
- (id)description;
- (id)identifierIgnoringDownloadStatus;
- (unint64_t)hash;
@end

@implementation DOCNodeThumbnailIdentifier

- (id)identifierIgnoringDownloadStatus
{
  v3 = [DOCNodeThumbnailIdentifier alloc];
  v4 = [(DOCNodeThumbnailIdentifier *)self nodeIdentifier];
  v5 = [(DOCNodeThumbnailIdentifier *)self modificationDate];
  v6 = [(DOCNodeThumbnailIdentifier *)self contentVersion];
  v7 = [(DOCNodeThumbnailIdentifier *)self folderType];
  v8 = [(DOCNodeThumbnailIdentifier *)self isTopLevelSharedItem];
  v9 = [(DOCNodeThumbnailIdentifier *)self fileExtension];
  LOBYTE(v12) = [(DOCNodeThumbnailIdentifier *)self isActionable];
  v10 = [(DOCNodeThumbnailIdentifier *)v3 initWithNodeIdentifier:v4 modificationDate:v5 contentVersion:v6 folderType:v7 isTopLevelSharedItem:v8 isDownloaded:0 fileExtension:v9 customFolder:0 isActionable:v12];

  return v10;
}

- (unint64_t)hash
{
  v3 = [(DOCNodeThumbnailIdentifier *)self nodeIdentifier];
  v4 = [v3 hash];

  v5 = [(DOCNodeThumbnailIdentifier *)self modificationDate];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(DOCNodeThumbnailIdentifier *)self contentVersion];
  v8 = [v7 hash] - v6 + 32 * v6;

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
  v14 = [(DOCNodeThumbnailIdentifier *)self fileExtension];
  v15 = [v14 hash] - v13 + 32 * v13;

  v16 = [(DOCNodeThumbnailIdentifier *)self customFolderId];
  v17 = [v16 hash] - v15 + 32 * v15;

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

- (DOCNodeThumbnailIdentifier)initWithNodeIdentifier:(id)a3 modificationDate:(id)a4 contentVersion:(id)a5 folderType:(unint64_t)a6 isTopLevelSharedItem:(BOOL)a7 isDownloaded:(BOOL)a8 fileExtension:(id)a9 customFolder:(id)a10 isActionable:(BOOL)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a9;
  v21 = a10;
  v34.receiver = self;
  v34.super_class = DOCNodeThumbnailIdentifier;
  v22 = [(DOCNodeThumbnailIdentifier *)&v34 init];
  if (v22)
  {
    v23 = [v17 copy];
    nodeIdentifier = v22->_nodeIdentifier;
    v22->_nodeIdentifier = v23;

    v25 = [v18 copy];
    modificationDate = v22->_modificationDate;
    v22->_modificationDate = v25;

    v27 = [v19 copy];
    contentVersion = v22->_contentVersion;
    v22->_contentVersion = v27;

    v22->_folderType = a6;
    v22->_isTopLevelSharedItem = a7;
    v22->_isDownloaded = a8;
    v29 = [v20 copy];
    fileExtension = v22->_fileExtension;
    v22->_fileExtension = v29;

    v31 = [v21 copy];
    customFolderId = v22->_customFolderId;
    v22->_customFolderId = v31;

    v22->_isActionable = a11;
  }

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v7 = 1;
    goto LABEL_31;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    nodeIdentifier = self->_nodeIdentifier;
    v9 = [(DOCNodeThumbnailIdentifier *)v5 nodeIdentifier];
    if (nodeIdentifier != v9)
    {
      v10 = self->_nodeIdentifier;
      v3 = [(DOCNodeThumbnailIdentifier *)v5 nodeIdentifier];
      if (![v10 isEqual:v3])
      {
        v7 = 0;
        goto LABEL_29;
      }
    }

    modificationDate = self->_modificationDate;
    v12 = [(DOCNodeThumbnailIdentifier *)v5 modificationDate];
    if (modificationDate != v12)
    {
      v13 = self->_modificationDate;
      v14 = [(DOCNodeThumbnailIdentifier *)v5 modificationDate];
      if (![(NSDate *)v13 isEqual:v14])
      {
        v7 = 0;
LABEL_27:

LABEL_28:
        if (nodeIdentifier == v9)
        {
LABEL_30:

          goto LABEL_31;
        }

LABEL_29:

        goto LABEL_30;
      }

      v42 = v14;
    }

    contentVersion = self->_contentVersion;
    v16 = [(DOCNodeThumbnailIdentifier *)v5 contentVersion];
    if (contentVersion != v16)
    {
      v17 = self->_contentVersion;
      v18 = [(DOCNodeThumbnailIdentifier *)v5 contentVersion];
      v19 = v17;
      v20 = v18;
      if (![v19 isEqual:v18])
      {
        v7 = 0;
        goto LABEL_25;
      }

      v41 = v20;
    }

    folderType = self->_folderType;
    if (folderType != [(DOCNodeThumbnailIdentifier *)v5 folderType]|| (isTopLevelSharedItem = self->_isTopLevelSharedItem, isTopLevelSharedItem != [(DOCNodeThumbnailIdentifier *)v5 isTopLevelSharedItem]) || (isDownloaded = self->_isDownloaded, isDownloaded != [(DOCNodeThumbnailIdentifier *)v5 isDownloaded]))
    {
      v7 = 0;
      goto LABEL_22;
    }

    fileExtension = self->_fileExtension;
    [(DOCNodeThumbnailIdentifier *)v5 fileExtension];
    v40 = v39 = fileExtension;
    if (fileExtension != v40)
    {
      v25 = self->_fileExtension;
      v38 = [(DOCNodeThumbnailIdentifier *)v5 fileExtension];
      if (![(NSString *)v25 isEqualToString:?])
      {
        v7 = 0;
        v26 = v40;
        goto LABEL_38;
      }
    }

    customFolderId = self->_customFolderId;
    v29 = [(DOCNodeThumbnailIdentifier *)v5 customFolderId];
    v37 = customFolderId;
    v30 = customFolderId == v29;
    v31 = v29;
    if (v30 || (v36 = self->_customFolderId, [(DOCNodeThumbnailIdentifier *)v5 customFolderId], v32 = objc_claimAutoreleasedReturnValue(), v33 = v36, v35 = v32, [(NSString *)v33 isEqualToString:?]))
    {
      isActionable = self->_isActionable;
      v7 = isActionable == [(DOCNodeThumbnailIdentifier *)v5 isActionable];
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
      if (contentVersion == v16)
      {
LABEL_26:

        v14 = v42;
        if (modificationDate == v12)
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

  v5 = [(DOCNodeThumbnailIdentifier *)self nodeIdentifier];
  v6 = [(DOCNodeThumbnailIdentifier *)self modificationDate];
  v7 = [(DOCNodeThumbnailIdentifier *)self contentVersion];
  v8 = [(DOCNodeThumbnailIdentifier *)self folderType];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[DOCNodeThumbnailIdentifier isTopLevelSharedItem](self, "isTopLevelSharedItem")}];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DOCNodeThumbnailIdentifier isDownloaded](self, "isDownloaded")}];
  v11 = [(DOCNodeThumbnailIdentifier *)self fileExtension];
  v12 = [(DOCNodeThumbnailIdentifier *)self customFolderId];
  [v4 appendFormat:@"%@, %@, %@, %lu, %@, %@, %@, %@", v5, v6, v7, v8, v9, v10, v11, v12];

  return v4;
}

@end