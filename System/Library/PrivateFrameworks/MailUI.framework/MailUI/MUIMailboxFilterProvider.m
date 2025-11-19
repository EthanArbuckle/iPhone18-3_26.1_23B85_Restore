@interface MUIMailboxFilterProvider
- (BOOL)_isInbox;
- (BOOL)_isMailboxOfSmartMailboxType:(int64_t)a3;
- (MUIMailboxFilterGroup)accountsFilterGroup;
- (MUIMailboxFilterProvider)initWithFilterContext:(id)a3 mailboxFilterClass:(Class)a4;
- (NSArray)accountFilters;
- (NSArray)allFilters;
- (NSArray)defaultFilters;
- (NSArray)filtersGroups;
- (id)_accountsInSmartMailboxScope;
- (id)_addressedGroup;
- (id)_andFilterGroup;
- (id)_flagsFilterGroup;
- (id)groupContainingFilter:(id)a3;
- (id)reduce:(id)a3;
- (void)dealloc;
- (void)defaultFilters;
- (void)setSenderFilter:(id)a3;
@end

@implementation MUIMailboxFilterProvider

- (MUIMailboxFilterProvider)initWithFilterContext:(id)a3 mailboxFilterClass:(Class)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = MUIMailboxFilterProvider;
  v7 = [(MUIMailboxFilterProvider *)&v15 init];
  if (v7)
  {
    v8 = [v6 mailboxes];
    v9 = [v8 copy];
    mailboxes = v7->_mailboxes;
    v7->_mailboxes = v9;

    v11 = [v6 focus];
    focus = v7->_focus;
    v7->_focus = v11;

    if (!a4)
    {
      a4 = objc_opt_class();
    }

    objc_storeStrong(&v7->_mailboxFilterClass, a4);
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v7 selector:sel__vipsDidChange_ name:*MEMORY[0x277D06D28] object:0];
    [v13 addObserver:v7 selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x277D76810] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MUIMailboxFilterProvider;
  [(MUIMailboxFilterProvider *)&v4 dealloc];
}

- (NSArray)filtersGroups
{
  filtersGroups = self->_filtersGroups;
  if (!filtersGroups)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [(MUIMailboxFilterProvider *)self accountsFilterGroup];
    [v4 ef_addOptionalObject:v5];

    v6 = [(MUIMailboxFilterProvider *)self _flagsFilterGroup];
    [v4 ef_addOptionalObject:v6];

    v7 = [(MUIMailboxFilterProvider *)self _addressedGroup];
    [v4 ef_addOptionalObject:v7];

    v8 = [(MUIMailboxFilterProvider *)self _andFilterGroup];
    [v4 ef_addOptionalObject:v8];

    v9 = [v4 copy];
    v10 = self->_filtersGroups;
    self->_filtersGroups = v9;

    filtersGroups = self->_filtersGroups;
  }

  return filtersGroups;
}

- (NSArray)allFilters
{
  v2 = [(MUIMailboxFilterProvider *)self filtersGroups];
  v3 = [v2 ef_flatMap:&__block_literal_global_24];

  return v3;
}

- (NSArray)defaultFilters
{
  v4 = [(MUIMailboxFilterProvider *)self mailboxFilterClass];
  v5 = [(MUIMailboxFilterProvider *)self _isMailboxOfSmartMailboxType:2];
  v6 = [v4 alloc];
  if (v5)
  {
    v7 = [v6 initForFlaggedMessages];
  }

  else
  {
    v7 = [v6 initForUnreadMessages];
  }

  v8 = v7;
  v9 = [(MUIMailboxFilterProvider *)self allFilters];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__MUIMailboxFilterProvider_defaultFilters__block_invoke;
  v16[3] = &unk_27818A890;
  v10 = v8;
  v17 = v10;
  v11 = [v9 ef_filter:v16];

  if (![v11 count])
  {
    [(MUIMailboxFilterProvider *)a2 defaultFilters];
  }

  v12 = [(MUIMailboxFilterProvider *)self focus];
  if (v12)
  {
    v13 = [(MUIMailboxFilterProvider *)self focusFilters];
    if ([v13 count])
    {
      v14 = [v11 ef_filter:&__block_literal_global_16_0];

      v11 = [v14 arrayByAddingObjectsFromArray:v13];
    }
  }

  return v11;
}

uint64_t __42__MUIMailboxFilterProvider_defaultFilters__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  LODWORD(v2) = [v3 isEqualToFilter:v2];
  v4 = [v3 hasMailboxPredicate];

  return (v2 | v4) & 1;
}

- (id)groupContainingFilter:(id)a3
{
  v4 = a3;
  v5 = [(MUIMailboxFilterProvider *)self individualVIPFilterGroup];
  v6 = [v5 filters];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v9 = [(MUIMailboxFilterProvider *)self filtersGroups];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__MUIMailboxFilterProvider_groupContainingFilter___block_invoke;
    v11[3] = &unk_27818A8D8;
    v12 = v4;
    v8 = [v9 ef_firstObjectPassingTest:v11];
  }

  return v8;
}

uint64_t __50__MUIMailboxFilterProvider_groupContainingFilter___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 filters];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)reduce:(id)a3
{
  v4 = a3;
  v5 = [v4 ef_partition:&__block_literal_global_19];
  v6 = [(MUIMailboxFilterProvider *)self accountFilters];
  v7 = [v6 count];
  v8 = [v5 first];
  v9 = [v8 count];

  if (v7 == v9)
  {
    v10 = [v5 second];

    v4 = v10;
  }

  return v4;
}

- (NSArray)accountFilters
{
  if (!self->_accountFilters)
  {
    v3 = [(MUIMailboxFilterProvider *)self mailboxes];
    if ([v3 count] == 1)
    {
      v4 = [(MUIMailboxFilterProvider *)self mailboxes];
      v5 = [v4 firstObject];
      v6 = [v5 isSmartMailbox];

      if (!v6)
      {
        goto LABEL_6;
      }

      v3 = [(MUIMailboxFilterProvider *)self _accountsInSmartMailboxScope];
      v7 = [(MUIMailboxFilterProvider *)self mailboxes];
      v8 = [v7 firstObject];

      v9 = [(MUIMailboxFilterProvider *)self mailboxFilterClass];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __42__MUIMailboxFilterProvider_accountFilters__block_invoke;
      v15[3] = &unk_27818A900;
      v16 = v8;
      v17 = v9;
      v10 = v8;
      v11 = [v3 ef_map:v15];
      accountFilters = self->_accountFilters;
      self->_accountFilters = v11;
    }
  }

LABEL_6:
  v13 = self->_accountFilters;

  return v13;
}

id __42__MUIMailboxFilterProvider_accountFilters__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [[v3 alloc] initWithAccount:v4 iconFromSmartMailbox:*(a1 + 32)];

  return v5;
}

- (id)_accountsInSmartMailboxScope
{
  if (!self->_accountsInSmartMailboxScope)
  {
    v3 = [(MUIMailboxFilterProvider *)self mailboxes];
    if ([v3 count] == 1)
    {
      v4 = [(MUIMailboxFilterProvider *)self mailboxes];
      v5 = [v4 firstObject];
      v6 = [v5 isSmartMailbox];

      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = [(MUIMailboxFilterProvider *)self mailboxes];
      v3 = [v7 firstObject];

      v25 = 0;
      v8 = [v3 mailboxScope];
      v9 = [v3 repository];
      v10 = [v8 allMailboxObjectIDsWithMailboxTypeResolver:v9 forExclusion:&v25];

      v11 = MEMORY[0x277D07150];
      v12 = [v3 repository];
      v13 = [v10 allObjects];
      v14 = [v12 mailboxesForObjectIDs:v13];
      v15 = [v11 join:v14];
      v16 = [v15 result];

      v17 = MEMORY[0x277CBEB98];
      v18 = [v16 ef_compactMapSelector:sel_account];
      v19 = [v17 setWithArray:v18];
      v20 = [v19 allObjects];

      v21 = [v20 sortedArrayUsingComparator:&__block_literal_global_27];

      accountsInSmartMailboxScope = self->_accountsInSmartMailboxScope;
      self->_accountsInSmartMailboxScope = v21;
    }
  }

LABEL_6:
  v23 = self->_accountsInSmartMailboxScope;

  return v23;
}

uint64_t __56__MUIMailboxFilterProvider__accountsInSmartMailboxScope__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (MUIMailboxFilterGroup)accountsFilterGroup
{
  if (!self->_accountsFilterGroup)
  {
    v3 = [(MUIMailboxFilterProvider *)self accountFilters];

    if (v3)
    {
      v4 = _EFLocalizedString();
      v5 = [(MUIMailboxFilterProvider *)self accountFilters];
      v6 = [MUIMailboxFilterGroup groupWithName:v4 combinator:1 selectionCardinality:0 filters:v5];
      accountsFilterGroup = self->_accountsFilterGroup;
      self->_accountsFilterGroup = v6;
    }
  }

  v8 = self->_accountsFilterGroup;

  return v8;
}

- (id)_flagsFilterGroup
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(MUIMailboxFilterProvider *)self mailboxFilterClass];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__MUIMailboxFilterProvider__flagsFilterGroup__block_invoke;
  aBlock[3] = &unk_27818A948;
  aBlock[4] = self;
  v11 = v3;
  v12 = v4;
  v5 = v3;
  v6 = _Block_copy(aBlock);
  v6[2](v6, 2);
  v6[2](v6, 1);
  v7 = _EFLocalizedString();
  v8 = [MUIMailboxFilterGroup groupWithName:v7 combinator:1 selectionCardinality:1 filters:v5];

  return v8;
}

void __45__MUIMailboxFilterProvider__flagsFilterGroup__block_invoke(uint64_t a1, uint64_t a2)
{
  if (([*(a1 + 32) _isMailboxOfSmartMailboxType:a2] & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = [objc_alloc(*(a1 + 48)) initForSmartMailboxType:a2];
    [v4 ef_addOptionalObject:v5];
  }
}

- (BOOL)_isMailboxOfSmartMailboxType:(int64_t)a3
{
  v4 = [(MUIMailboxFilterProvider *)self mailboxes];
  if ([v4 count] == 1 && (objc_msgSend(v4, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isSmartMailbox"), v5, v6))
  {
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = [v7 smartMailboxType] == a3;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_addressedGroup
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [(MUIMailboxFilterProvider *)self mailboxFilterClass];
  v3 = [[v2 alloc] initForToMeMessages];
  v9[0] = v3;
  v4 = [[v2 alloc] initForCCMeMessages];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v6 = _EFLocalizedString();
  v7 = [MUIMailboxFilterGroup groupWithName:v6 combinator:1 selectionCardinality:1 filters:v5];

  return v7;
}

- (id)_andFilterGroup
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(MUIMailboxFilterProvider *)self mailboxFilterClass];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__MUIMailboxFilterProvider__andFilterGroup__block_invoke;
  aBlock[3] = &unk_27818A948;
  aBlock[4] = self;
  v5 = v3;
  v17 = v5;
  v18 = v4;
  v6 = _Block_copy(aBlock);
  v6[2](v6, 4);
  v6[2](v6, 0);
  v6[2](v6, 6);
  if (+[MUIiCloudMailCleanupService isFeatureAvailable])
  {
    v7 = [(MUIMailboxFilterProvider *)self mailboxes];
    v8 = [v7 count];

    if (v8 == 1)
    {
      v9 = [(MUIMailboxFilterProvider *)self mailboxes];
      v10 = [v9 firstObject];

      v11 = [v10 account];
      if ([v11 supportsiCloudCleanup])
      {
        v12 = [v10 isTrashMailbox];

        if (v12)
        {
          v6[2](v6, 14);
        }
      }

      else
      {
      }
    }
  }

  v13 = [(MUIMailboxFilterProvider *)self senderFilter];
  [v5 ef_addOptionalObject:v13];

  if ([v5 count])
  {
    v14 = [MUIMailboxFilterGroup groupWithName:0 combinator:0 selectionCardinality:1 filters:v5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __43__MUIMailboxFilterProvider__andFilterGroup__block_invoke(uint64_t a1, uint64_t a2)
{
  if (([*(a1 + 32) _isMailboxOfSmartMailboxType:a2] & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = [objc_alloc(*(a1 + 48)) initForSmartMailboxType:a2];
    [v4 ef_addOptionalObject:v5];
  }
}

- (BOOL)_isInbox
{
  v3 = [(MUIMailboxFilterProvider *)self mailboxes];
  v4 = [v3 count];

  if (v4 != 1)
  {
    return 1;
  }

  v5 = [(MUIMailboxFilterProvider *)self mailboxes];
  v6 = [v5 lastObject];
  v7 = [v6 isInboxMailbox];

  return v7;
}

- (void)setSenderFilter:(id)a3
{
  v6 = a3;
  if ((EFObjectsAreEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_senderFilter, a3);
    filtersGroups = self->_filtersGroups;
    self->_filtersGroups = 0;
  }
}

- (void)defaultFilters
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIMailboxFilterProvider.m" lineNumber:97 description:@"Should always return a default filter"];
}

@end