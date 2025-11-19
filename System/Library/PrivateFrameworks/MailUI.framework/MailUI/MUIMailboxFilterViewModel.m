@interface MUIMailboxFilterViewModel
- (MUIMailboxFilter)senderFilter;
- (MUIMailboxFilterViewModel)initWithProvider:(id)a3 formatter:(id)a4 selectedFilters:(id)a5 sortedFilters:(id)a6 isFilteringAvailable:(BOOL)a7;
- (NSArray)reducedSelectedFilters;
- (NSArray)selectedFilters;
- (id)_compoundPredicateForFilters:(id)a3;
- (id)predicateForSelectedFilters;
- (id)selectedFiltersDescription;
- (void)_notifySelectedFiltersObserver;
- (void)reselectFocusFilters;
- (void)setFilterEnabled:(BOOL)a3;
- (void)setSelectedFilters:(id)a3;
- (void)setSenderFilter:(id)a3;
@end

@implementation MUIMailboxFilterViewModel

- (MUIMailboxFilterViewModel)initWithProvider:(id)a3 formatter:(id)a4 selectedFilters:(id)a5 sortedFilters:(id)a6 isFilteringAvailable:(BOOL)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MUIMailboxFilterViewModel initWithProvider:a2 formatter:self selectedFilters:? sortedFilters:? isFilteringAvailable:?];
    if (v15)
    {
      goto LABEL_3;
    }
  }

  [MUIMailboxFilterViewModel initWithProvider:a2 formatter:self selectedFilters:? sortedFilters:? isFilteringAvailable:?];
LABEL_3:
  v25.receiver = self;
  v25.super_class = MUIMailboxFilterViewModel;
  v18 = [(MUIMailboxFilterViewModel *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_provider, a3);
    objc_storeStrong(&v19->_formatter, a4);
    v20 = [v16 copy];
    selectedFilters = v19->_selectedFilters;
    v19->_selectedFilters = v20;

    v22 = [MEMORY[0x277D07180] observableObserver];
    selectedFiltersObservable = v19->_selectedFiltersObservable;
    v19->_selectedFiltersObservable = v22;

    v19->_filterAvailable = a7;
  }

  return v19;
}

- (id)selectedFiltersDescription
{
  v3 = [(MUIMailboxFilterViewModel *)self formatter];
  v4 = [(MUIMailboxFilterViewModel *)self reducedSelectedFilters];
  v5 = [v3 stringForObjectValue:v4];

  return v5;
}

- (void)setFilterEnabled:(BOOL)a3
{
  if (self->_filterEnabled != a3)
  {
    self->_filterEnabled = a3;
    if (!a3)
    {
      [(MUIMailboxFilterViewModel *)self setSenderFilter:0];
    }
  }
}

- (NSArray)reducedSelectedFilters
{
  v3 = [(MUIMailboxFilterViewModel *)self provider];
  v4 = [(MUIMailboxFilterViewModel *)self selectedFilters];
  v5 = [v3 reduce:v4];

  return v5;
}

- (MUIMailboxFilter)senderFilter
{
  v2 = [(MUIMailboxFilterViewModel *)self provider];
  v3 = [v2 senderFilter];

  return v3;
}

- (void)setSenderFilter:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MUIMailboxFilterViewModel *)self provider];
  v6 = [v5 senderFilter];

  if ((EFObjectsAreEqual() & 1) == 0)
  {
    v7 = [(MUIMailboxFilterViewModel *)self provider];
    [v7 setSenderFilter:v4];

    if (v4)
    {
      if ([(MUIMailboxFilterViewModel *)self isFilterEnabled])
      {
        v8 = [(MUIMailboxFilterViewModel *)self selectedFilters];
        v9 = [v8 arrayByAddingObject:v4];
        [(MUIMailboxFilterViewModel *)self setSelectedFilters:v9];
      }

      else
      {
        v10[0] = v4;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
        [(MUIMailboxFilterViewModel *)self setSelectedFilters:v8];
      }
    }

    else if (v6)
    {
      [(MUIMailboxFilterViewModel *)self setSelectedFilters:MEMORY[0x277CBEBF8]];
    }
  }
}

- (NSArray)selectedFilters
{
  if (![(NSArray *)self->_selectedFilters count])
  {
    v3 = [(MUIMailboxFilterViewModel *)self provider];
    v4 = [v3 defaultFilters];
    selectedFilters = self->_selectedFilters;
    self->_selectedFilters = v4;
  }

  v6 = self->_selectedFilters;

  return v6;
}

- (void)setSelectedFilters:(id)a3
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;
  p_selectedFilters = &self->_selectedFilters;
  if (self->_selectedFilters != v5)
  {
    v7 = v5;
    objc_storeStrong(p_selectedFilters, v4);
    p_selectedFilters = [(MUIMailboxFilterViewModel *)self _notifySelectedFiltersObserver];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_selectedFilters, v5);
}

- (void)reselectFocusFilters
{
  v3 = [(MUIMailboxFilterViewModel *)self provider];
  v7 = [v3 focusFilters];

  if ([v7 count])
  {
    v4 = [(MUIMailboxFilterViewModel *)self selectedFilters];
    v5 = [v4 ef_filter:&__block_literal_global_26];

    v6 = [v5 arrayByAddingObjectsFromArray:v7];

    [(MUIMailboxFilterViewModel *)self setSelectedFilters:v6];
  }
}

- (id)predicateForSelectedFilters
{
  if ([(MUIMailboxFilterViewModel *)self isFilterAvailable])
  {
    v3 = [(MUIMailboxFilterViewModel *)self selectedFilters];
    v4 = [(MUIMailboxFilterViewModel *)self _compoundPredicateForFilters:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_compoundPredicateForFilters:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__MUIMailboxFilterViewModel__compoundPredicateForFilters___block_invoke;
    v17[3] = &unk_27818A990;
    v17[4] = self;
    v6 = [v5 ef_groupBy:v17];
    v7 = [v6 allKeys];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __58__MUIMailboxFilterViewModel__compoundPredicateForFilters___block_invoke_2;
    v15 = &unk_27818A9D8;
    v16 = v6;
    v8 = v6;
    v9 = [v7 ef_map:&v12];

    v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:{v9, v12, v13, v14, v15}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __58__MUIMailboxFilterViewModel__compoundPredicateForFilters___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 provider];
  v5 = [v4 groupContainingFilter:v3];

  return v5;
}

id __58__MUIMailboxFilterViewModel__compoundPredicateForFilters___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 ef_map:&__block_literal_global_16_1];
  v6 = [v3 combinator];

  if (v6)
  {
    [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v5];
  }

  else
  {
    [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v5];
  }
  v7 = ;

  return v7;
}

- (void)_notifySelectedFiltersObserver
{
  v4 = [(MUIMailboxFilterViewModel *)self selectedFiltersObservable];
  v3 = [(MUIMailboxFilterViewModel *)self selectedFilters];
  [v4 observerDidReceiveResult:v3];
}

- (void)initWithProvider:(uint64_t)a1 formatter:(uint64_t)a2 selectedFilters:sortedFilters:isFilteringAvailable:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIMailboxFilterViewModel.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"provider"}];
}

- (void)initWithProvider:(uint64_t)a1 formatter:(uint64_t)a2 selectedFilters:sortedFilters:isFilteringAvailable:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIMailboxFilterViewModel.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"formatter"}];
}

@end