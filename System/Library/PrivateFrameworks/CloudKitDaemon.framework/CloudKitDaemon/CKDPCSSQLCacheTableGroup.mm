@interface CKDPCSSQLCacheTableGroup
+ (id)groupIdentifierForContainerID:(id)d accountOverrideInfo:(id)info;
+ (id)groupNameForContainerID:(id)d accountOverrideInfo:(id)info;
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

+ (id)groupIdentifierForContainerID:(id)d accountOverrideInfo:(id)info
{
  infoCopy = info;
  v8 = objc_msgSend_containerIdentifier(d, v6, v7);
  v13 = objc_msgSend_accountID(infoCopy, v9, v10);
  if (v13)
  {
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%@.%@", v8, v13);
    if (v14)
    {
      goto LABEL_13;
    }
  }

  v15 = objc_msgSend_altDSID(infoCopy, v11, v12);
  if (!v15 || (v18 = v15, objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%@.%@", v8, v15), v19 = objc_claimAutoreleasedReturnValue(), v18, !v19))
  {
    v21 = objc_msgSend_email(infoCopy, v16, v17);
    if (v21)
    {
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%@.%@", v8, v21);
    }

    else
    {
      v19 = 0;
    }

    if (infoCopy && !v19)
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

+ (id)groupNameForContainerID:(id)d accountOverrideInfo:(id)info
{
  v4 = objc_msgSend_groupIdentifierForContainerID_accountOverrideInfo_(self, a2, d, info);
  v6 = objc_msgSend_groupNameWithDomain_domainIdentifier_groupName_(MEMORY[0x277CBC660], v5, 2, v4, @"PCSCache");

  return v6;
}

@end