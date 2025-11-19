@interface TabGroupTabOrderProvider
- (TabGroupTabOrderProvider)initWithTabGroup:(id)a3;
- (WBSOrderedTab)selectedTabForTabOrderProvider;
- (id)originatingTabForTab:(id)a3;
- (id)tabAtIndex:(unint64_t)a3;
- (id)wbTabForOrderedTab:(id)a3;
- (unint64_t)indexForTab:(id)a3;
- (unint64_t)indexOfSelectedTab;
- (unint64_t)numberOfTabs;
@end

@implementation TabGroupTabOrderProvider

- (TabGroupTabOrderProvider)initWithTabGroup:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TabGroupTabOrderProvider;
  v6 = [(TabGroupTabOrderProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tabGroup, a3);
    v8 = v7;
  }

  return v7;
}

- (id)wbTabForOrderedTab:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 tab];
  }

  else
  {
    tabGroup = self->_tabGroup;
    v7 = [v4 identifier];

    v5 = [(WBTabGroup *)tabGroup tabWithUUID:v7];
    v4 = v7;
  }

  return v5;
}

OrderedWBTabWrapper *__47__TabGroupTabOrderProvider_orderedTabsForTabs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[OrderedWBTabWrapper alloc] initWithWBTab:v2];

  return v3;
}

- (unint64_t)indexForTab:(id)a3
{
  tabGroup = self->_tabGroup;
  v5 = a3;
  v6 = [(WBTabGroup *)tabGroup tabs];
  v7 = [(TabGroupTabOrderProvider *)self wbTabForOrderedTab:v5];

  v8 = [v6 indexOfObject:v7];
  return v8;
}

- (unint64_t)indexOfSelectedTab
{
  v3 = [(WBTabGroup *)self->_tabGroup tabs];
  v4 = [(TabGroupTabOrderProvider *)self selectedTabForTabOrderProvider];
  v5 = [(TabGroupTabOrderProvider *)self wbTabForOrderedTab:v4];
  v6 = [v3 indexOfObject:v5];

  return v6;
}

- (unint64_t)numberOfTabs
{
  v2 = [(WBTabGroup *)self->_tabGroup tabs];
  v3 = [v2 count];

  return v3;
}

- (id)originatingTabForTab:(id)a3
{
  v4 = a3;
  if ([v4 shouldSelectOriginatingTabWhenClosed])
  {
    v5 = [v4 ancestorTabIdentifiers];
    v6 = [v5 lastObject];

    if (v6)
    {
      v7 = [OrderedWBTabWrapper alloc];
      v8 = [(WBTabGroup *)self->_tabGroup tabWithUUID:v6];
      v9 = [(OrderedWBTabWrapper *)v7 initWithWBTab:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WBSOrderedTab)selectedTabForTabOrderProvider
{
  v2 = self->_tabGroup;
  v3 = [OrderedWBTabWrapper alloc];
  v4 = [(WBTabGroup *)v2 lastSelectedTabUUID];
  v5 = [(WBTabGroup *)v2 tabWithUUID:v4];

  v6 = [(OrderedWBTabWrapper *)v3 initWithWBTab:v5];

  return v6;
}

- (id)tabAtIndex:(unint64_t)a3
{
  v5 = [OrderedWBTabWrapper alloc];
  v6 = [(WBTabGroup *)self->_tabGroup tabs];
  v7 = [v6 objectAtIndexedSubscript:a3];
  v8 = [(OrderedWBTabWrapper *)v5 initWithWBTab:v7];

  return v8;
}

@end