@interface DAFolder
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation DAFolder

- (id)description
{
  v12.receiver = self;
  v12.super_class = DAFolder;
  v3 = [(DAFolder *)&v12 description];
  v4 = [(DAFolder *)self folderID];
  v5 = [(DAFolder *)self folderName];
  v6 = [(DAFolder *)self parentFolderID];
  v7 = [(DAFolder *)self dataclass];
  v8 = [(DAFolder *)self isDefault];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringByAppendingFormat:@" folderID = %@, name = %@, _parentFolderID %@, _dataclass %ld, _isDefault %@", v4, v5, v6, v7, v9];

  return v10;
}

- (unint64_t)hash
{
  v2 = [(DAFolder *)self folderID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v10 = [v9 folderName];
    if (v10 || ([(DAFolder *)self folderName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = [v9 folderName];
      v4 = [(DAFolder *)self folderName];
      if (![v11 isEqualToString:v4])
      {
        LOBYTE(v13) = 0;
        goto LABEL_39;
      }

      v27 = v11;
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    v14 = [v9 folderID];
    if (v14 || ([(DAFolder *)self folderID], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = [v9 folderID];
      v6 = [(DAFolder *)self folderID];
      if (![v5 isEqualToString:v6])
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

    v24 = v6;
    v25 = v5;
    v15 = [v9 parentFolderID];
    if (v15 || ([(DAFolder *)self parentFolderID], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = [v9 parentFolderID];
      v5 = [(DAFolder *)self parentFolderID];
      if (![v6 isEqualToString:v5])
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

    v16 = [v9 dataclass];
    if (v16 == [(DAFolder *)self dataclass])
    {
      v17 = [v9 isDefault];
      v13 = v17 ^ [(DAFolder *)self isDefault]^ 1;
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
    v6 = v24;
    v5 = v25;
    if (v15)
    {

      if (v23)
      {
LABEL_29:
        v12 = v26;
LABEL_30:

        if (v14)
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
    if (v14)
    {
LABEL_31:

      if (!v12)
      {
        goto LABEL_32;
      }

LABEL_38:
      v11 = v27;
LABEL_39:

      if (v10)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    }

LABEL_37:

    if ((v12 & 1) == 0)
    {
LABEL_32:
      if (v10)
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