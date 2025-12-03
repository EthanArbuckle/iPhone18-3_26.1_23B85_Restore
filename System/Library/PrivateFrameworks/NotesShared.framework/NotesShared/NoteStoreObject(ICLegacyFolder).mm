@interface NoteStoreObject(ICLegacyFolder)
- (__CFString)localizedTitle;
- (uint64_t)compare:()ICLegacyFolder;
- (uint64_t)depth;
- (uint64_t)isCustomFolder;
- (uint64_t)isDefaultFolder;
- (void)addNotesObject:()ICLegacyFolder;
- (void)newNoteInContext:()ICLegacyFolder;
@end

@implementation NoteStoreObject(ICLegacyFolder)

- (__CFString)localizedTitle
{
  titleForTableViewCell = [self titleForTableViewCell];
  v2 = titleForTableViewCell;
  if (titleForTableViewCell)
  {
    v3 = titleForTableViewCell;
  }

  else
  {
    v3 = &stru_2827172C0;
  }

  v4 = v3;

  return v3;
}

- (uint64_t)depth
{
  account = [self account];
  isExchangeAccount = [account isExchangeAccount];

  if (isExchangeAccount)
  {
    return 0;
  }

  v5 = MEMORY[0x277CBEBC0];
  externalIdentifier = [self externalIdentifier];
  v7 = [v5 URLWithString:externalIdentifier];
  pathComponents = [v7 pathComponents];
  v9 = [pathComponents count] - 3;

  return v9 & ~(v9 >> 63);
}

- (void)newNoteInContext:()ICLegacyFolder
{
  v4 = a3;
  objc_opt_class();
  v5 = ICCheckedDynamicCast();

  newlyAddedNote = [v5 newlyAddedNote];

  [newlyAddedNote setStore:self];
  return newlyAddedNote;
}

- (void)addNotesObject:()ICLegacyFolder
{
  v4 = a3;
  objc_opt_class();
  v5 = ICCheckedDynamicCast();

  [v5 setStore:self];
}

- (uint64_t)isDefaultFolder
{
  account = [self account];
  defaultStore = [account defaultStore];
  v4 = [self isEqual:defaultStore];

  return v4;
}

- (uint64_t)isCustomFolder
{
  if ([self isDefaultFolder])
  {
    return 0;
  }

  else
  {
    return [self isTrashFolder] ^ 1;
  }
}

- (uint64_t)compare:()ICLegacyFolder
{
  v4 = a3;
  v5 = ICProtocolCast();
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = ICProtocolCast();
    if (v7)
    {
      if ([self isDefaultFolder])
      {
        v6 = -1;
      }

      else if ([v7 isDefaultFolder])
      {
        v6 = 1;
      }

      else
      {
        parentFolder = [self parentFolder];
        parentFolder2 = [v7 parentFolder];

        if (parentFolder == parentFolder2)
        {
          localizedTitle = [self localizedTitle];
          localizedTitle2 = [v7 localizedTitle];
          v6 = [localizedTitle localizedStandardCompare:localizedTitle2];
        }

        else
        {
          selfCopy = self;
          v12 = v7;
          depth = [selfCopy depth];
          depth2 = [v12 depth];
          v15 = depth2;
          parentFolder4 = selfCopy;
          if (depth <= depth2)
          {
            parentFolder3 = v12;
            if (depth2 > depth)
            {
              parentFolder3 = v12;
              do
              {
                v21 = parentFolder3;
                parentFolder3 = [parentFolder3 parentFolder];

                --v15;
              }

              while (v15 > depth);
              parentFolder4 = selfCopy;
            }
          }

          else
          {
            do
            {
              v17 = parentFolder4;
              parentFolder4 = [parentFolder4 parentFolder];

              --depth;
            }

            while (depth > v15);
            parentFolder3 = v12;
          }

          v30 = selfCopy;
          v16ParentFolder = [parentFolder4 parentFolder];
          v18ParentFolder = [parentFolder3 parentFolder];

          if (v16ParentFolder == v18ParentFolder)
          {
            v18ParentFolder2 = parentFolder3;
            v16ParentFolder2 = parentFolder4;
          }

          else
          {
            do
            {
              v16ParentFolder2 = [parentFolder4 parentFolder];

              v18ParentFolder2 = [parentFolder3 parentFolder];

              v24ParentFolder = [v16ParentFolder2 parentFolder];
              v25ParentFolder = [v18ParentFolder2 parentFolder];

              parentFolder4 = v16ParentFolder2;
              parentFolder3 = v18ParentFolder2;
            }

            while (v24ParentFolder != v25ParentFolder);
          }

          if ([v16ParentFolder2 isEqual:v18ParentFolder2])
          {
            depth3 = [v30 depth];
            if (depth3 < [v12 depth])
            {
              v6 = -1;
            }

            else
            {
              v6 = 1;
            }
          }

          else
          {
            v6 = [v16ParentFolder2 compare:v18ParentFolder2];
          }
        }
      }
    }

    else
    {
      v8 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(NoteAccountObject(ICLegacyAccount) *)self compare:v4, v8];
      }

      v6 = 0;
    }
  }

  return v6;
}

@end