@interface CompletionGroup
- (CompletionGroup)initWithTitle:(id)title groupIdentifier:(id)identifier completions:(id)completions query:(id)query maximumNumberOfCompletions:(unint64_t)ofCompletions;
- (NSString)defaultHeaderTitle;
- (id)headerView;
- (void)configureHeaderView:(id)view forCompletionList:(id)list;
- (void)setCompletions:(id)completions;
- (void)setQuery:(id)query;
@end

@implementation CompletionGroup

- (CompletionGroup)initWithTitle:(id)title groupIdentifier:(id)identifier completions:(id)completions query:(id)query maximumNumberOfCompletions:(unint64_t)ofCompletions
{
  titleCopy = title;
  identifierCopy = identifier;
  completionsCopy = completions;
  queryCopy = query;
  v29.receiver = self;
  v29.super_class = CompletionGroup;
  v16 = [(SFResultSection *)&v29 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    groupIdentifier = v16->_groupIdentifier;
    v16->_groupIdentifier = v17;

    [(SFResultSection *)v16 setTitle:titleCopy];
    [(SFResultSection *)v16 setMaxInitiallyVisibleResults:ofCompletions];
    [(CompletionGroup *)v16 setCompletions:completionsCopy];
    firstObject = [(NSArray *)v16->_completions firstObject];
    if (objc_opt_respondsToSelector() & 1) != 0 && [firstObject needsSectionHeader] && (objc_opt_respondsToSelector())
    {
      completionTableHeaderViewReuseIdentifier = [firstObject completionTableHeaderViewReuseIdentifier];
      v21 = [completionTableHeaderViewReuseIdentifier copy];
      headerViewReuseIdentifier = v16->_headerViewReuseIdentifier;
      v16->_headerViewReuseIdentifier = v21;
    }

    firstObject2 = [completionsCopy firstObject];
    sfSearchResultValue = [firstObject2 sfSearchResultValue];
    sectionBundleIdentifier = [sfSearchResultValue sectionBundleIdentifier];

    if (!sectionBundleIdentifier)
    {
      v26 = WBS_LOG_CHANNEL_PREFIXParsec();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [CompletionGroup initWithTitle:v26 groupIdentifier:? completions:? query:? maximumNumberOfCompletions:?];
      }
    }

    [(SFResultSection *)v16 setBundleIdentifier:sectionBundleIdentifier];
    [(CompletionGroup *)v16 setQuery:queryCopy];
    v27 = v16;
  }

  return v16;
}

- (id)headerView
{
  firstObject = [(NSArray *)self->_completions firstObject];
  if (objc_opt_respondsToSelector())
  {
    completionTableHeaderView = [firstObject completionTableHeaderView];
  }

  else
  {
    completionTableHeaderView = 0;
  }

  return completionTableHeaderView;
}

- (void)configureHeaderView:(id)view forCompletionList:(id)list
{
  viewCopy = view;
  firstObject = [(NSArray *)self->_completions firstObject];
  if (objc_opt_respondsToSelector())
  {
    [firstObject configureCompletionTableHeaderView:viewCopy forCompletionListGroup:self];
  }
}

- (NSString)defaultHeaderTitle
{
  firstObject = [(NSArray *)self->_completions firstObject];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![firstObject usesDefaultHeaderView])
  {
    title = 0;
  }

  else
  {
    title = [(SFResultSection *)self title];
  }

  return title;
}

- (void)setCompletions:(id)completions
{
  completionsCopy = completions;
  if (self->_completions != completionsCopy)
  {
    v9 = completionsCopy;
    maxInitiallyVisibleResults = [(SFResultSection *)self maxInitiallyVisibleResults];
    if (maxInitiallyVisibleResults && maxInitiallyVisibleResults < [(NSArray *)v9 count])
    {
      v6 = [(NSArray *)v9 subarrayWithRange:0, [(SFResultSection *)self maxInitiallyVisibleResults]];
    }

    else
    {
      v6 = [(NSArray *)v9 copy];
    }

    completions = self->_completions;
    self->_completions = v6;

    v8 = [(NSArray *)self->_completions safari_mapObjectsUsingBlock:&__block_literal_global_17];
    [(SFResultSection *)self setResults:v8];

    completionsCopy = v9;
  }
}

- (void)setQuery:(id)query
{
  v17 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_query, query);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    completions = [(CompletionGroup *)self completions];
    v7 = [completions countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(completions);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 setQuery:queryCopy];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [completions countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

@end