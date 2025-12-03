@interface NotesAssistantFolderOption
+ (void)disambiguateFolderOptions:(id)options;
+ (void)disambiguateSameTitleFolderOptions:(id)options;
- (NotesAssistantFolderOption)initWithLegacyFolder:(id)folder;
- (NotesAssistantFolderOption)initWithModernFolder:(id)folder;
- (id)debugDescription;
@end

@implementation NotesAssistantFolderOption

+ (void)disambiguateFolderOptions:(id)options
{
  v34 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = optionsCopy;
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
        title = [v11 title];
        v13 = [dictionary objectForKeyedSubscript:title];

        if (!v13)
        {
          v13 = [MEMORY[0x277CBEB58] set];
          title2 = [v11 title];
          [dictionary setObject:v13 forKeyedSubscript:title2];
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
  allValues = [dictionary allValues];
  v16 = [allValues countByEnumeratingWithState:&v23 objects:v32 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        if ([v20 count] >= 2)
        {
          [self disambiguateSameTitleFolderOptions:v20];
        }
      }

      v17 = [allValues countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v17);
  }

  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"fullTitle" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v31 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  [v6 sortUsingDescriptors:v22];
}

- (NotesAssistantFolderOption)initWithLegacyFolder:(id)folder
{
  folderCopy = folder;
  v19.receiver = self;
  v19.super_class = NotesAssistantFolderOption;
  v5 = [(NotesAssistantFolderOption *)&v19 init];
  if (v5)
  {
    objectID = [folderCopy objectID];
    managedObjectID = v5->_managedObjectID;
    v5->_managedObjectID = objectID;

    localizedTitle = [folderCopy localizedTitle];
    title = v5->_title;
    v5->_title = localizedTitle;

    objc_storeStrong(&v5->_fullTitle, v5->_title);
    parentFolder = [folderCopy parentFolder];
    localizedTitle2 = [parentFolder localizedTitle];
    parentTitle = v5->_parentTitle;
    v5->_parentTitle = localizedTitle2;

    account = [folderCopy account];
    name = [account name];
    accountTitle = v5->_accountTitle;
    v5->_accountTitle = name;

    identifierURIPathComponent = [folderCopy identifierURIPathComponent];
    identifierURIPathComponent = v5->_identifierURIPathComponent;
    v5->_identifierURIPathComponent = identifierURIPathComponent;
  }

  return v5;
}

- (NotesAssistantFolderOption)initWithModernFolder:(id)folder
{
  folderCopy = folder;
  v23.receiver = self;
  v23.super_class = NotesAssistantFolderOption;
  v5 = [(NotesAssistantFolderOption *)&v23 init];
  if (v5)
  {
    objectID = [folderCopy objectID];
    managedObjectID = v5->_managedObjectID;
    v5->_managedObjectID = objectID;

    localizedTitle = [folderCopy localizedTitle];
    title = v5->_title;
    v5->_title = localizedTitle;

    objc_storeStrong(&v5->_fullTitle, v5->_title);
    parent = [folderCopy parent];
    localizedTitle2 = [parent localizedTitle];
    parentTitle = v5->_parentTitle;
    v5->_parentTitle = localizedTitle2;

    accountName = [folderCopy accountName];
    accountTitle = v5->_accountTitle;
    v5->_accountTitle = accountName;

    identifierURIPathComponent = [folderCopy identifierURIPathComponent];
    identifierURIPathComponent = v5->_identifierURIPathComponent;
    v5->_identifierURIPathComponent = identifierURIPathComponent;

    account = [folderCopy account];
    accountType = [account accountType];

    if (accountType == 1)
    {
      account2 = [folderCopy account];
      identifier = [account2 identifier];
      accountIdentifier = v5->_accountIdentifier;
      v5->_accountIdentifier = identifier;
    }

    else
    {
      account2 = v5->_accountIdentifier;
      v5->_accountIdentifier = 0;
    }
  }

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  title = [(NotesAssistantFolderOption *)self title];
  v6 = [v3 stringWithFormat:@"<%@: %p>(title: \"%@\"", v4, self, title];

  return v6;
}

+ (void)disambiguateSameTitleFolderOptions:(id)options
{
  v19 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [optionsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(optionsCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        title = [v8 title];
        parentTitle = [v8 parentTitle];

        if (parentTitle)
        {
          v11 = MEMORY[0x277CCACA8];
          parentTitle2 = [v8 parentTitle];
          [v11 stringWithFormat:@"%@/%@", parentTitle2, title];
        }

        else
        {
          parentTitle2 = [v8 accountTitle];
          [title stringByAppendingFormat:@" [%@]", parentTitle2];
        }
        v13 = ;

        [v8 setFullTitle:v13];
      }

      v5 = [optionsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

@end