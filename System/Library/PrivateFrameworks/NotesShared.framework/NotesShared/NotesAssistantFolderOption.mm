@interface NotesAssistantFolderOption
+ (void)disambiguateFolderOptions:(id)a3;
+ (void)disambiguateSameTitleFolderOptions:(id)a3;
- (NotesAssistantFolderOption)initWithLegacyFolder:(id)a3;
- (NotesAssistantFolderOption)initWithModernFolder:(id)a3;
- (id)debugDescription;
@end

@implementation NotesAssistantFolderOption

+ (void)disambiguateFolderOptions:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 title];
        v13 = [v5 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v13 = [MEMORY[0x277CBEB58] set];
          v14 = [v11 title];
          [v5 setObject:v13 forKeyedSubscript:v14];
        }

        [v13 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v8);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [v5 allValues];
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        if ([v20 count] >= 2)
        {
          [a1 disambiguateSameTitleFolderOptions:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v17);
  }

  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"fullTitle" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v31 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  [v6 sortUsingDescriptors:v22];
}

- (NotesAssistantFolderOption)initWithLegacyFolder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NotesAssistantFolderOption;
  v5 = [(NotesAssistantFolderOption *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectID];
    managedObjectID = v5->_managedObjectID;
    v5->_managedObjectID = v6;

    v8 = [v4 localizedTitle];
    title = v5->_title;
    v5->_title = v8;

    objc_storeStrong(&v5->_fullTitle, v5->_title);
    v10 = [v4 parentFolder];
    v11 = [v10 localizedTitle];
    parentTitle = v5->_parentTitle;
    v5->_parentTitle = v11;

    v13 = [v4 account];
    v14 = [v13 name];
    accountTitle = v5->_accountTitle;
    v5->_accountTitle = v14;

    v16 = [v4 identifierURIPathComponent];
    identifierURIPathComponent = v5->_identifierURIPathComponent;
    v5->_identifierURIPathComponent = v16;
  }

  return v5;
}

- (NotesAssistantFolderOption)initWithModernFolder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NotesAssistantFolderOption;
  v5 = [(NotesAssistantFolderOption *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectID];
    managedObjectID = v5->_managedObjectID;
    v5->_managedObjectID = v6;

    v8 = [v4 localizedTitle];
    title = v5->_title;
    v5->_title = v8;

    objc_storeStrong(&v5->_fullTitle, v5->_title);
    v10 = [v4 parent];
    v11 = [v10 localizedTitle];
    parentTitle = v5->_parentTitle;
    v5->_parentTitle = v11;

    v13 = [v4 accountName];
    accountTitle = v5->_accountTitle;
    v5->_accountTitle = v13;

    v15 = [v4 identifierURIPathComponent];
    identifierURIPathComponent = v5->_identifierURIPathComponent;
    v5->_identifierURIPathComponent = v15;

    v17 = [v4 account];
    v18 = [v17 accountType];

    if (v18 == 1)
    {
      v19 = [v4 account];
      v20 = [v19 identifier];
      accountIdentifier = v5->_accountIdentifier;
      v5->_accountIdentifier = v20;
    }

    else
    {
      v19 = v5->_accountIdentifier;
      v5->_accountIdentifier = 0;
    }
  }

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NotesAssistantFolderOption *)self title];
  v6 = [v3 stringWithFormat:@"<%@: %p>(title: \"%@\"", v4, self, v5];

  return v6;
}

+ (void)disambiguateSameTitleFolderOptions:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 title];
        v10 = [v8 parentTitle];

        if (v10)
        {
          v11 = MEMORY[0x277CCACA8];
          v12 = [v8 parentTitle];
          [v11 stringWithFormat:@"%@/%@", v12, v9];
        }

        else
        {
          v12 = [v8 accountTitle];
          [v9 stringByAppendingFormat:@" [%@]", v12];
        }
        v13 = ;

        [v8 setFullTitle:v13];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

@end