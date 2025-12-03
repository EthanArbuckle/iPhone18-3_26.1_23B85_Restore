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
      markedForDeletion = [v5 markedForDeletion];
LABEL_9:

      goto LABEL_10;
    }

    objc_opt_class();
    v7 = ICDynamicCast();
    v8 = v7;
    if (v7)
    {
      account = [v7 account];
      markedForDeletion2 = [account markedForDeletion];
      goto LABEL_7;
    }

    v12 = ICProtocolCast();
    account = v12;
    if (v12)
    {
      if (![v12 enabled])
      {
        markedForDeletion = 1;
        goto LABEL_8;
      }

      markedForDeletion2 = [account didChooseToMigrate];
LABEL_7:
      markedForDeletion = markedForDeletion2;
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
        markedForDeletion = 1;
LABEL_44:

        goto LABEL_8;
      }

      account2 = [v14 account];
      if (account2)
      {
        account3 = [v14 account];
        markedForDeletion = [account3 markedForDeletion];
LABEL_42:

        goto LABEL_43;
      }

LABEL_26:
      markedForDeletion = 1;
LABEL_43:

      goto LABEL_44;
    }

    v15 = ICProtocolCast();
    account2 = v15;
    if (v15)
    {
      if ([v15 isDeletedOrInTrash] & 1) != 0 || (objc_msgSend(account2, "isTrashFolder"))
      {
        goto LABEL_26;
      }

      account3 = [account2 account];
      if ([account3 enabled])
      {
        v16Account = [account2 account];
        markedForDeletion = [v16Account didChooseToMigrate];
LABEL_41:

        goto LABEL_42;
      }

LABEL_29:
      markedForDeletion = 1;
      goto LABEL_42;
    }

    objc_opt_class();
    v19 = ICDynamicCast();
    account3 = v19;
    if (v19)
    {
      if ([v19 isDeletedOrInTrash])
      {
        goto LABEL_29;
      }

      v16Account = [account3 account];
      if (v16Account)
      {
        v17Account = [account3 account];
        markedForDeletion = [v17Account markedForDeletion];
LABEL_40:

        goto LABEL_41;
      }
    }

    else
    {
      v20 = ICProtocolCast();
      v16Account = v20;
      if (v20 && ([v20 isMarkedForDeletion] & 1) == 0 && (objc_msgSend(v16Account, "isDeletedOrInTrash") & 1) == 0)
      {
        v17Account = [v16Account folder];
        v21Account = [v17Account account];
        if ([v21Account enabled])
        {
          folder = [v16Account folder];
          account4 = [folder account];
          markedForDeletion = [account4 didChooseToMigrate];
        }

        else
        {
          markedForDeletion = 1;
        }

        goto LABEL_40;
      }
    }

    markedForDeletion = 1;
    goto LABEL_41;
  }

  markedForDeletion = 1;
LABEL_10:

  return markedForDeletion;
}

@end