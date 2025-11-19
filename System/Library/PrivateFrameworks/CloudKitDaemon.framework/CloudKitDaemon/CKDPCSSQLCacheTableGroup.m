@interface CKDPCSSQLCacheTableGroup
+ (id)groupIdentifierForContainerID:(id)a3 accountOverrideInfo:(id)a4;
+ (id)groupNameForContainerID:(id)a3 accountOverrideInfo:(id)a4;
- (void)createTables;
@end

@implementation CKDPCSSQLCacheTableGroup

- (void)createTables
{
  v5.receiver = self;
  v5.super_class = CKDPCSSQLCacheTableGroup;
  [(CKSQLiteContainerAttributedTableGroup *)&v5 createTables];
  v3 = objc_alloc_init(CKDPCSSQLCacheTable);
  objc_msgSend_addTable_(self, v4, v3);
}

+ (id)groupIdentifierForContainerID:(id)a3 accountOverrideInfo:(id)a4
{
  v5 = a4;
  v8 = objc_msgSend_containerIdentifier(a3, v6, v7);
  v13 = objc_msgSend_accountID(v5, v9, v10);
  if (v13)
  {
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%@.%@", v8, v13);
    if (v14)
    {
      goto LABEL_13;
    }
  }

  v15 = objc_msgSend_altDSID(v5, v11, v12);
  if (!v15 || (v18 = v15, objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%@.%@", v8, v15), v19 = objc_claimAutoreleasedReturnValue(), v18, !v19))
  {
    v21 = objc_msgSend_email(v5, v16, v17);
    if (v21)
    {
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%@.%@", v8, v21);
    }

    else
    {
      v19 = 0;
    }

    if (v5 && !v19)
    {
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%@.Anonymous", v8);
    }

    if (!v19)
    {
      v14 = v8;
LABEL_13:
      v19 = v14;
    }
  }

  return v19;
}

+ (id)groupNameForContainerID:(id)a3 accountOverrideInfo:(id)a4
{
  v4 = objc_msgSend_groupIdentifierForContainerID_accountOverrideInfo_(a1, a2, a3, a4);
  v6 = objc_msgSend_groupNameWithDomain_domainIdentifier_groupName_(MEMORY[0x277CBC660], v5, 2, v4, @"PCSCache");

  return v6;
}

@end