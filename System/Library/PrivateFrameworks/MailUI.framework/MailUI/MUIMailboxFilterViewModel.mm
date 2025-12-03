@interface MUIMailboxFilterViewModel
- (MUIMailboxFilter)senderFilter;
- (MUIMailboxFilterViewModel)initWithProvider:(id)provider formatter:(id)formatter selectedFilters:(id)filters sortedFilters:(id)sortedFilters isFilteringAvailable:(BOOL)available;
- (NSArray)reducedSelectedFilters;
- (NSArray)selectedFilters;
- (id)_compoundPredicateForFilters:(id)filters;
- (id)predicateForSelectedFilters;
- (id)selectedFiltersDescription;
- (void)_notifySelectedFiltersObserver;
- (void)reselectFocusFilters;
- (void)setFilterEnabled:(BOOL)enabled;
- (void)setSelectedFilters:(id)filters;
- (void)setSenderFilter:(id)filter;
@end

@implementation MUIMailboxFilterViewModel

- (MUIMailboxFilterViewModel)initWithProvider:(id)provider formatter:(id)formatter selectedFilters:(id)filters sortedFilters:(id)sortedFilters isFilteringAvailable:(BOOL)available
{
  providerCopy = provider;
  formatterCopy = formatter;
  filtersCopy = filters;
  sortedFiltersCopy = sortedFilters;
  if (providerCopy)
  {
    if (formatterCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MUIMailboxFilterViewModel initWithProvider:a2 formatter:self selectedFilters:? sortedFilters:? isFilteringAvailable:?];
    if (formatterCopy)
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
    objc_storeStrong(&v18->_provider, provider);
    objc_storeStrong(&v19->_formatter, formatter);
    v20 = [filtersCopy copy];
    selectedFilters = v19->_selectedFilters;
    v19->_selectedFilters = v20;

    observableObserver = [MEMORY[0x277D07180] observableObserver];
    selectedFiltersObservable = v19->_selectedFiltersObservable;
    v19->_selectedFiltersObservable = observableObserver;

    v19->_filterAvailable = available;
  }

  return v19;
}

- (id)selectedFiltersDescription
{
  formatter = [(MUIMailboxFilterViewModel *)self formatter];
  reducedSelectedFilters = [(MUIMailboxFilterViewModel *)self reducedSelectedFilters];
  v5 = [formatter stringForObjectValue:reducedSelectedFilters];

  return v5;
}

- (void)setFilterEnabled:(BOOL)enabled
{
  if (self->_filterEnabled != enabled)
  {
    self->_filterEnabled = enabled;
    if (!enabled)
    {
      [(MUIMailboxFilterViewModel *)self setSenderFilter:0];
    }
  }
}

- (NSArray)reducedSelectedFilters
{
  provider = [(MUIMailboxFilterViewModel *)self provider];
  selectedFilters = [(MUIMailboxFilterViewModel *)self selectedFilters];
  v5 = [provider reduce:selectedFilters];

  return v5;
}

- (MUIMailboxFilter)senderFilter
{
  provider = [(MUIMailboxFilterViewModel *)self provider];
  senderFilter = [provider senderFilter];

  return senderFilter;
}

- (void)setSenderFilter:(id)filter
{
  v10[1] = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  provider = [(MUIMailboxFilterViewModel *)self provider];
  senderFilter = [provider senderFilter];

  if ((EFObjectsAreEqual() & 1) == 0)
  {
    provider2 = [(MUIMailboxFilterViewModel *)self provider];
    [provider2 setSenderFilter:filterCopy];

    if (filterCopy)
    {
      if ([(MUIMailboxFilterViewModel *)self isFilterEnabled])
      {
        selectedFilters = [(MUIMailboxFilterViewModel *)self selectedFilters];
        v9 = [selectedFilters arrayByAddingObject:filterCopy];
        [(MUIMailboxFilterViewModel *)self setSelectedFilters:v9];
      }

      else
      {
        v10[0] = filterCopy;
        selectedFilters = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
        [(MUIMailboxFilterViewModel *)self setSelectedFilters:selectedFilters];
      }
    }

    else if (senderFilter)
    {
      [(MUIMailboxFilterViewModel *)self setSelectedFilters:MEMORY[0x277CBEBF8]];
    }
  }
}

- (NSArray)selectedFilters
{
  if (![(NSArray *)self->_selectedFilters count])
  {
    provider = [(MUIMailboxFilterViewModel *)self provider];
    defaultFilters = [provider defaultFilters];
    selectedFilters = self->_selectedFilters;
    self->_selectedFilters = defaultFilters;
  }

  v6 = self->_selectedFilters;

  return v6;
}

- (void)setSelectedFilters:(id)filters
{
  if (filters)
  {
    filtersCopy = filters;
  }

  else
  {
    filtersCopy = MEMORY[0x277CBEBF8];
  }

  v5 = filtersCopy;
  p_selectedFilters = &self->_selectedFilters;
  if (self->_selectedFilters != v5)
  {
    v7 = v5;
    objc_storeStrong(p_selectedFilters, filtersCopy);
    p_selectedFilters = [(MUIMailboxFilterViewModel *)self _notifySelectedFiltersObserver];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_selectedFilters, v5);
}

- (void)reselectFocusFilters
{
  provider = [(MUIMailboxFilterViewModel *)self provider];
  focusFilters = [provider focusFilters];

  if ([focusFilters count])
  {
    selectedFilters = [(MUIMailboxFilterViewModel *)self selectedFilters];
    v5 = [selectedFilters ef_filter:&__block_literal_global_26];

    v6 = [v5 arrayByAddingObjectsFromArray:focusFilters];

    [(MUIMailboxFilterViewModel *)self setSelectedFilters:v6];
  }
}

- (id)predicateForSelectedFilters
{
  if ([(MUIMailboxFilterViewModel *)self isFilterAvailable])
  {
    selectedFilters = [(MUIMailboxFilterViewModel *)self selectedFilters];
    v4 = [(MUIMailboxFilterViewModel *)self _compoundPredicateForFilters:selectedFilters];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_compoundPredicateForFilters:(id)filters
{
  filtersCopy = filters;
  v5 = filtersCopy;
  if (filtersCopy && [filtersCopy count])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__MUIMailboxFilterViewModel__compoundPredicateForFilters___block_invoke;
    v17[3] = &unk_27818A990;
    v17[4] = self;
    v6 = [v5 ef_groupBy:v17];
    allKeys = [v6 allKeys];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __58__MUIMailboxFilterViewModel__compoundPredicateForFilters___block_invoke_2;
    v15 = &unk_27818A9D8;
    v16 = v6;
    v8 = v6;
    v9 = [allKeys ef_map:&v12];

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
  selectedFiltersObservable = [(MUIMailboxFilterViewModel *)self selectedFiltersObservable];
  selectedFilters = [(MUIMailboxFilterViewModel *)self selectedFilters];
  [selectedFiltersObservable observerDidReceiveResult:selectedFilters];
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