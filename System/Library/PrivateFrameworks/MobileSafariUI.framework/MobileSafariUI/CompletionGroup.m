@interface CompletionGroup
- (CompletionGroup)initWithTitle:(id)a3 groupIdentifier:(id)a4 completions:(id)a5 query:(id)a6 maximumNumberOfCompletions:(unint64_t)a7;
- (NSString)defaultHeaderTitle;
- (id)headerView;
- (void)configureHeaderView:(id)a3 forCompletionList:(id)a4;
- (void)setCompletions:(id)a3;
- (void)setQuery:(id)a3;
@end

@implementation CompletionGroup

- (CompletionGroup)initWithTitle:(id)a3 groupIdentifier:(id)a4 completions:(id)a5 query:(id)a6 maximumNumberOfCompletions:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v29.receiver = self;
  v29.super_class = CompletionGroup;
  v16 = [(SFResultSection *)&v29 init];
  if (v16)
  {
    v17 = [v13 copy];
    groupIdentifier = v16->_groupIdentifier;
    v16->_groupIdentifier = v17;

    [(SFResultSection *)v16 setTitle:v12];
    [(SFResultSection *)v16 setMaxInitiallyVisibleResults:a7];
    [(CompletionGroup *)v16 setCompletions:v14];
    v19 = [(NSArray *)v16->_completions firstObject];
    if (objc_opt_respondsToSelector() & 1) != 0 && [v19 needsSectionHeader] && (objc_opt_respondsToSelector())
    {
      v20 = [v19 completionTableHeaderViewReuseIdentifier];
      v21 = [v20 copy];
      headerViewReuseIdentifier = v16->_headerViewReuseIdentifier;
      v16->_headerViewReuseIdentifier = v21;
    }

    v23 = [v14 firstObject];
    v24 = [v23 sfSearchResultValue];
    v25 = [v24 sectionBundleIdentifier];

    if (!v25)
    {
      v26 = WBS_LOG_CHANNEL_PREFIXParsec();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [CompletionGroup initWithTitle:v26 groupIdentifier:? completions:? query:? maximumNumberOfCompletions:?];
      }
    }

    [(SFResultSection *)v16 setBundleIdentifier:v25];
    [(CompletionGroup *)v16 setQuery:v15];
    v27 = v16;
  }

  return v16;
}

- (id)headerView
{
  v2 = [(NSArray *)self->_completions firstObject];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 completionTableHeaderView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)configureHeaderView:(id)a3 forCompletionList:(id)a4
{
  v6 = a3;
  v5 = [(NSArray *)self->_completions firstObject];
  if (objc_opt_respondsToSelector())
  {
    [v5 configureCompletionTableHeaderView:v6 forCompletionListGroup:self];
  }
}

- (NSString)defaultHeaderTitle
{
  v3 = [(NSArray *)self->_completions firstObject];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v3 usesDefaultHeaderView])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(SFResultSection *)self title];
  }

  return v4;
}

- (void)setCompletions:(id)a3
{
  v4 = a3;
  if (self->_completions != v4)
  {
    v9 = v4;
    v5 = [(SFResultSection *)self maxInitiallyVisibleResults];
    if (v5 && v5 < [(NSArray *)v9 count])
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

    v4 = v9;
  }
}

- (void)setQuery:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_query, a3);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(CompletionGroup *)self completions];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 setQuery:v5];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

@end