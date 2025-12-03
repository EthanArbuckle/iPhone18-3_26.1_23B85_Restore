@interface MUIMailboxFilterProvider
- (BOOL)_isInbox;
- (BOOL)_isMailboxOfSmartMailboxType:(int64_t)type;
- (MUIMailboxFilterGroup)accountsFilterGroup;
- (MUIMailboxFilterProvider)initWithFilterContext:(id)context mailboxFilterClass:(Class)class;
- (NSArray)accountFilters;
- (NSArray)allFilters;
- (NSArray)defaultFilters;
- (NSArray)filtersGroups;
- (id)_accountsInSmartMailboxScope;
- (id)_addressedGroup;
- (id)_andFilterGroup;
- (id)_flagsFilterGroup;
- (id)groupContainingFilter:(id)filter;
- (id)reduce:(id)reduce;
- (void)dealloc;
- (void)defaultFilters;
- (void)setSenderFilter:(id)filter;
@end

@implementation MUIMailboxFilterProvider

- (MUIMailboxFilterProvider)initWithFilterContext:(id)context mailboxFilterClass:(Class)class
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = MUIMailboxFilterProvider;
  v7 = [(MUIMailboxFilterProvider *)&v15 init];
  if (v7)
  {
    mailboxes = [contextCopy mailboxes];
    v9 = [mailboxes copy];
    mailboxes = v7->_mailboxes;
    v7->_mailboxes = v9;

    focus = [contextCopy focus];
    focus = v7->_focus;
    v7->_focus = focus;

    if (!class)
    {
      class = objc_opt_class();
    }

    objc_storeStrong(&v7->_mailboxFilterClass, class);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__vipsDidChange_ name:*MEMORY[0x277D06D28] object:0];
    [defaultCenter addObserver:v7 selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x277D76810] object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
    accountsFilterGroup = [(MUIMailboxFilterProvider *)self accountsFilterGroup];
    [v4 ef_addOptionalObject:accountsFilterGroup];

    _flagsFilterGroup = [(MUIMailboxFilterProvider *)self _flagsFilterGroup];
    [v4 ef_addOptionalObject:_flagsFilterGroup];

    _addressedGroup = [(MUIMailboxFilterProvider *)self _addressedGroup];
    [v4 ef_addOptionalObject:_addressedGroup];

    _andFilterGroup = [(MUIMailboxFilterProvider *)self _andFilterGroup];
    [v4 ef_addOptionalObject:_andFilterGroup];

    v9 = [v4 copy];
    v10 = self->_filtersGroups;
    self->_filtersGroups = v9;

    filtersGroups = self->_filtersGroups;
  }

  return filtersGroups;
}

- (NSArray)allFilters
{
  filtersGroups = [(MUIMailboxFilterProvider *)self filtersGroups];
  v3 = [filtersGroups ef_flatMap:&__block_literal_global_24];

  return v3;
}

- (NSArray)defaultFilters
{
  mailboxFilterClass = [(MUIMailboxFilterProvider *)self mailboxFilterClass];
  v5 = [(MUIMailboxFilterProvider *)self _isMailboxOfSmartMailboxType:2];
  v6 = [mailboxFilterClass alloc];
  if (v5)
  {
    initForFlaggedMessages = [v6 initForFlaggedMessages];
  }

  else
  {
    initForFlaggedMessages = [v6 initForUnreadMessages];
  }

  v8 = initForFlaggedMessages;
  allFilters = [(MUIMailboxFilterProvider *)self allFilters];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__MUIMailboxFilterProvider_defaultFilters__block_invoke;
  v16[3] = &unk_27818A890;
  v10 = v8;
  v17 = v10;
  v11 = [allFilters ef_filter:v16];

  if (![v11 count])
  {
    [(MUIMailboxFilterProvider *)a2 defaultFilters];
  }

  focus = [(MUIMailboxFilterProvider *)self focus];
  if (focus)
  {
    focusFilters = [(MUIMailboxFilterProvider *)self focusFilters];
    if ([focusFilters count])
    {
      v14 = [v11 ef_filter:&__block_literal_global_16_0];

      v11 = [v14 arrayByAddingObjectsFromArray:focusFilters];
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

- (id)groupContainingFilter:(id)filter
{
  filterCopy = filter;
  individualVIPFilterGroup = [(MUIMailboxFilterProvider *)self individualVIPFilterGroup];
  filters = [individualVIPFilterGroup filters];
  v7 = [filters containsObject:filterCopy];

  if (v7)
  {
    v8 = individualVIPFilterGroup;
  }

  else
  {
    filtersGroups = [(MUIMailboxFilterProvider *)self filtersGroups];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__MUIMailboxFilterProvider_groupContainingFilter___block_invoke;
    v11[3] = &unk_27818A8D8;
    v12 = filterCopy;
    v8 = [filtersGroups ef_firstObjectPassingTest:v11];
  }

  return v8;
}

uint64_t __50__MUIMailboxFilterProvider_groupContainingFilter___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 filters];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)reduce:(id)reduce
{
  reduceCopy = reduce;
  v5 = [reduceCopy ef_partition:&__block_literal_global_19];
  accountFilters = [(MUIMailboxFilterProvider *)self accountFilters];
  v7 = [accountFilters count];
  first = [v5 first];
  v9 = [first count];

  if (v7 == v9)
  {
    second = [v5 second];

    reduceCopy = second;
  }

  return reduceCopy;
}

- (NSArray)accountFilters
{
  if (!self->_accountFilters)
  {
    mailboxes = [(MUIMailboxFilterProvider *)self mailboxes];
    if ([mailboxes count] == 1)
    {
      mailboxes2 = [(MUIMailboxFilterProvider *)self mailboxes];
      firstObject = [mailboxes2 firstObject];
      isSmartMailbox = [firstObject isSmartMailbox];

      if (!isSmartMailbox)
      {
        goto LABEL_6;
      }

      mailboxes = [(MUIMailboxFilterProvider *)self _accountsInSmartMailboxScope];
      mailboxes3 = [(MUIMailboxFilterProvider *)self mailboxes];
      firstObject2 = [mailboxes3 firstObject];

      mailboxFilterClass = [(MUIMailboxFilterProvider *)self mailboxFilterClass];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __42__MUIMailboxFilterProvider_accountFilters__block_invoke;
      v15[3] = &unk_27818A900;
      v16 = firstObject2;
      v17 = mailboxFilterClass;
      v10 = firstObject2;
      v11 = [mailboxes ef_map:v15];
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
    mailboxes = [(MUIMailboxFilterProvider *)self mailboxes];
    if ([mailboxes count] == 1)
    {
      mailboxes2 = [(MUIMailboxFilterProvider *)self mailboxes];
      firstObject = [mailboxes2 firstObject];
      isSmartMailbox = [firstObject isSmartMailbox];

      if (!isSmartMailbox)
      {
        goto LABEL_6;
      }

      mailboxes3 = [(MUIMailboxFilterProvider *)self mailboxes];
      mailboxes = [mailboxes3 firstObject];

      v25 = 0;
      mailboxScope = [mailboxes mailboxScope];
      repository = [mailboxes repository];
      v10 = [mailboxScope allMailboxObjectIDsWithMailboxTypeResolver:repository forExclusion:&v25];

      v11 = MEMORY[0x277D07150];
      repository2 = [mailboxes repository];
      allObjects = [v10 allObjects];
      v14 = [repository2 mailboxesForObjectIDs:allObjects];
      v15 = [v11 join:v14];
      result = [v15 result];

      v17 = MEMORY[0x277CBEB98];
      v18 = [result ef_compactMapSelector:sel_account];
      v19 = [v17 setWithArray:v18];
      allObjects2 = [v19 allObjects];

      v21 = [allObjects2 sortedArrayUsingComparator:&__block_literal_global_27];

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
    accountFilters = [(MUIMailboxFilterProvider *)self accountFilters];

    if (accountFilters)
    {
      v4 = _EFLocalizedString();
      accountFilters2 = [(MUIMailboxFilterProvider *)self accountFilters];
      v6 = [MUIMailboxFilterGroup groupWithName:v4 combinator:1 selectionCardinality:0 filters:accountFilters2];
      accountsFilterGroup = self->_accountsFilterGroup;
      self->_accountsFilterGroup = v6;
    }
  }

  v8 = self->_accountsFilterGroup;

  return v8;
}

- (id)_flagsFilterGroup
{
  array = [MEMORY[0x277CBEB18] array];
  mailboxFilterClass = [(MUIMailboxFilterProvider *)self mailboxFilterClass];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__MUIMailboxFilterProvider__flagsFilterGroup__block_invoke;
  aBlock[3] = &unk_27818A948;
  aBlock[4] = self;
  v11 = array;
  v12 = mailboxFilterClass;
  v5 = array;
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

- (BOOL)_isMailboxOfSmartMailboxType:(int64_t)type
{
  mailboxes = [(MUIMailboxFilterProvider *)self mailboxes];
  if ([mailboxes count] == 1 && (objc_msgSend(mailboxes, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isSmartMailbox"), v5, v6))
  {
    v7 = [mailboxes objectAtIndexedSubscript:0];
    v8 = [v7 smartMailboxType] == type;
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
  mailboxFilterClass = [(MUIMailboxFilterProvider *)self mailboxFilterClass];
  initForToMeMessages = [[mailboxFilterClass alloc] initForToMeMessages];
  v9[0] = initForToMeMessages;
  initForCCMeMessages = [[mailboxFilterClass alloc] initForCCMeMessages];
  v9[1] = initForCCMeMessages;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v6 = _EFLocalizedString();
  v7 = [MUIMailboxFilterGroup groupWithName:v6 combinator:1 selectionCardinality:1 filters:v5];

  return v7;
}

- (id)_andFilterGroup
{
  array = [MEMORY[0x277CBEB18] array];
  mailboxFilterClass = [(MUIMailboxFilterProvider *)self mailboxFilterClass];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__MUIMailboxFilterProvider__andFilterGroup__block_invoke;
  aBlock[3] = &unk_27818A948;
  aBlock[4] = self;
  v5 = array;
  v17 = v5;
  v18 = mailboxFilterClass;
  v6 = _Block_copy(aBlock);
  v6[2](v6, 4);
  v6[2](v6, 0);
  v6[2](v6, 6);
  if (+[MUIiCloudMailCleanupService isFeatureAvailable])
  {
    mailboxes = [(MUIMailboxFilterProvider *)self mailboxes];
    v8 = [mailboxes count];

    if (v8 == 1)
    {
      mailboxes2 = [(MUIMailboxFilterProvider *)self mailboxes];
      firstObject = [mailboxes2 firstObject];

      account = [firstObject account];
      if ([account supportsiCloudCleanup])
      {
        isTrashMailbox = [firstObject isTrashMailbox];

        if (isTrashMailbox)
        {
          v6[2](v6, 14);
        }
      }

      else
      {
      }
    }
  }

  senderFilter = [(MUIMailboxFilterProvider *)self senderFilter];
  [v5 ef_addOptionalObject:senderFilter];

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
  mailboxes = [(MUIMailboxFilterProvider *)self mailboxes];
  v4 = [mailboxes count];

  if (v4 != 1)
  {
    return 1;
  }

  mailboxes2 = [(MUIMailboxFilterProvider *)self mailboxes];
  lastObject = [mailboxes2 lastObject];
  isInboxMailbox = [lastObject isInboxMailbox];

  return isInboxMailbox;
}

- (void)setSenderFilter:(id)filter
{
  filterCopy = filter;
  if ((EFObjectsAreEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_senderFilter, filter);
    filtersGroups = self->_filtersGroups;
    self->_filtersGroups = 0;
  }
}

- (void)defaultFilters
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"MUIMailboxFilterProvider.m" lineNumber:97 description:@"Should always return a default filter"];
}

@end