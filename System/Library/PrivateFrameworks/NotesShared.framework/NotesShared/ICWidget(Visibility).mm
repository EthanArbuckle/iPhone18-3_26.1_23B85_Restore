@interface ICWidget(Visibility)
- (uint64_t)hidesObject:()Visibility;
@end

@implementation ICWidget(Visibility)

- (uint64_t)hidesObject:()Visibility
{
  v3 = a3;
  if (([v3 isDeleted] & 1) == 0)
  {
    objc_opt_class();
    v5 = ICDynamicCast();
    v6 = v5;
    if (v5)
    {
      v4 = [v5 markedForDeletion];
LABEL_9:

      goto LABEL_10;
    }

    objc_opt_class();
    v7 = ICDynamicCast();
    v8 = v7;
    if (v7)
    {
      v9 = [v7 account];
      v10 = [v9 markedForDeletion];
      goto LABEL_7;
    }

    v12 = ICProtocolCast();
    v9 = v12;
    if (v12)
    {
      if (![v12 enabled])
      {
        v4 = 1;
        goto LABEL_8;
      }

      v10 = [v9 didChooseToMigrate];
LABEL_7:
      v4 = v10;
LABEL_8:

      goto LABEL_9;
    }

    objc_opt_class();
    v13 = ICDynamicCast();
    v14 = v13;
    if (v13)
    {
      if ([v13 markedForDeletion] & 1) != 0 || (objc_msgSend(v14, "isTrashFolder"))
      {
        v4 = 1;
LABEL_44:

        goto LABEL_8;
      }

      v16 = [v14 account];
      if (v16)
      {
        v17 = [v14 account];
        v4 = [v17 markedForDeletion];
LABEL_42:

        goto LABEL_43;
      }

LABEL_26:
      v4 = 1;
LABEL_43:

      goto LABEL_44;
    }

    v15 = ICProtocolCast();
    v16 = v15;
    if (v15)
    {
      if ([v15 isDeletedOrInTrash] & 1) != 0 || (objc_msgSend(v16, "isTrashFolder"))
      {
        goto LABEL_26;
      }

      v17 = [v16 account];
      if ([v17 enabled])
      {
        v18 = [v16 account];
        v4 = [v18 didChooseToMigrate];
LABEL_41:

        goto LABEL_42;
      }

LABEL_29:
      v4 = 1;
      goto LABEL_42;
    }

    objc_opt_class();
    v19 = ICDynamicCast();
    v17 = v19;
    if (v19)
    {
      if ([v19 isDeletedOrInTrash])
      {
        goto LABEL_29;
      }

      v18 = [v17 account];
      if (v18)
      {
        v21 = [v17 account];
        v4 = [v21 markedForDeletion];
LABEL_40:

        goto LABEL_41;
      }
    }

    else
    {
      v20 = ICProtocolCast();
      v18 = v20;
      if (v20 && ([v20 isMarkedForDeletion] & 1) == 0 && (objc_msgSend(v18, "isDeletedOrInTrash") & 1) == 0)
      {
        v21 = [v18 folder];
        v24 = [v21 account];
        if ([v24 enabled])
        {
          v23 = [v18 folder];
          v22 = [v23 account];
          v4 = [v22 didChooseToMigrate];
        }

        else
        {
          v4 = 1;
        }

        goto LABEL_40;
      }
    }

    v4 = 1;
    goto LABEL_41;
  }

  v4 = 1;
LABEL_10:

  return v4;
}

@end