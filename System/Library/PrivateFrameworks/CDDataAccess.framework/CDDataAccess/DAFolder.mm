@interface DAFolder
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation DAFolder

- (id)description
{
  v12.receiver = self;
  v12.super_class = DAFolder;
  v3 = [(DAFolder *)&v12 description];
  folderID = [(DAFolder *)self folderID];
  folderName = [(DAFolder *)self folderName];
  parentFolderID = [(DAFolder *)self parentFolderID];
  dataclass = [(DAFolder *)self dataclass];
  isDefault = [(DAFolder *)self isDefault];
  v9 = @"NO";
  if (isDefault)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringByAppendingFormat:@" folderID = %@, name = %@, _parentFolderID %@, _dataclass %ld, _isDefault %@", folderID, folderName, parentFolderID, dataclass, v9];

  return v10;
}

- (unint64_t)hash
{
  folderID = [(DAFolder *)self folderID];
  v3 = [folderID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = equalCopy;
    folderName = [v9 folderName];
    if (folderName || ([(DAFolder *)self folderName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      folderName2 = [v9 folderName];
      folderName3 = [(DAFolder *)self folderName];
      if (![folderName2 isEqualToString:folderName3])
      {
        LOBYTE(v13) = 0;
        goto LABEL_39;
      }

      v27 = folderName2;
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    folderID = [v9 folderID];
    if (folderID || ([(DAFolder *)self folderID], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      folderID2 = [v9 folderID];
      folderID3 = [(DAFolder *)self folderID];
      if (![folderID2 isEqualToString:folderID3])
      {
        LOBYTE(v13) = 0;
        goto LABEL_30;
      }

      v26 = v12;
      v23 = 1;
    }

    else
    {
      v26 = v12;
      v22 = 0;
      v23 = 0;
    }

    v24 = folderID3;
    v25 = folderID2;
    parentFolderID = [v9 parentFolderID];
    if (parentFolderID || ([(DAFolder *)self parentFolderID], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      folderID3 = [v9 parentFolderID];
      folderID2 = [(DAFolder *)self parentFolderID];
      if (![folderID3 isEqualToString:folderID2])
      {
        LOBYTE(v13) = 0;
        goto LABEL_26;
      }

      v21 = v3;
      v20 = 1;
    }

    else
    {
      v21 = v3;
      v19 = 0;
      v20 = 0;
    }

    dataclass = [v9 dataclass];
    if (dataclass == [(DAFolder *)self dataclass])
    {
      isDefault = [v9 isDefault];
      v13 = isDefault ^ [(DAFolder *)self isDefault]^ 1;
      if ((v20 & 1) == 0)
      {
LABEL_23:
        v3 = v21;
        goto LABEL_27;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
      if (!v20)
      {
        goto LABEL_23;
      }
    }

    v3 = v21;
LABEL_26:

LABEL_27:
    folderID3 = v24;
    folderID2 = v25;
    if (parentFolderID)
    {

      if (v23)
      {
LABEL_29:
        v12 = v26;
LABEL_30:

        if (folderID)
        {
          goto LABEL_31;
        }

        goto LABEL_37;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_29;
      }
    }

    v12 = v26;
    if (folderID)
    {
LABEL_31:

      if (!v12)
      {
        goto LABEL_32;
      }

LABEL_38:
      folderName2 = v27;
LABEL_39:

      if (folderName)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    }

LABEL_37:

    if ((v12 & 1) == 0)
    {
LABEL_32:
      if (folderName)
      {
LABEL_33:

        goto LABEL_34;
      }

LABEL_40:

      goto LABEL_33;
    }

    goto LABEL_38;
  }

  LOBYTE(v13) = 0;
LABEL_34:

  return v13;
}

@end