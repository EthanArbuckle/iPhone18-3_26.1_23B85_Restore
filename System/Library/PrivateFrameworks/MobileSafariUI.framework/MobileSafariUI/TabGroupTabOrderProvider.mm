@interface TabGroupTabOrderProvider
- (TabGroupTabOrderProvider)initWithTabGroup:(id)group;
- (WBSOrderedTab)selectedTabForTabOrderProvider;
- (id)originatingTabForTab:(id)tab;
- (id)tabAtIndex:(unint64_t)index;
- (id)wbTabForOrderedTab:(id)tab;
- (unint64_t)indexForTab:(id)tab;
- (unint64_t)indexOfSelectedTab;
- (unint64_t)numberOfTabs;
@end

@implementation TabGroupTabOrderProvider

- (TabGroupTabOrderProvider)initWithTabGroup:(id)group
{
  groupCopy = group;
  v10.receiver = self;
  v10.super_class = TabGroupTabOrderProvider;
  v6 = [(TabGroupTabOrderProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tabGroup, group);
    v8 = v7;
  }

  return v7;
}

- (id)wbTabForOrderedTab:(id)tab
{
  tabCopy = tab;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [tabCopy tab];
  }

  else
  {
    tabGroup = self->_tabGroup;
    identifier = [tabCopy identifier];

    v5 = [(WBTabGroup *)tabGroup tabWithUUID:identifier];
    tabCopy = identifier;
  }

  return v5;
}

OrderedWBTabWrapper *__47__TabGroupTabOrderProvider_orderedTabsForTabs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[OrderedWBTabWrapper alloc] initWithWBTab:v2];

  return v3;
}

- (unint64_t)indexForTab:(id)tab
{
  tabGroup = self->_tabGroup;
  tabCopy = tab;
  tabs = [(WBTabGroup *)tabGroup tabs];
  v7 = [(TabGroupTabOrderProvider *)self wbTabForOrderedTab:tabCopy];

  v8 = [tabs indexOfObject:v7];
  return v8;
}

- (unint64_t)indexOfSelectedTab
{
  tabs = [(WBTabGroup *)self->_tabGroup tabs];
  selectedTabForTabOrderProvider = [(TabGroupTabOrderProvider *)self selectedTabForTabOrderProvider];
  v5 = [(TabGroupTabOrderProvider *)self wbTabForOrderedTab:selectedTabForTabOrderProvider];
  v6 = [tabs indexOfObject:v5];

  return v6;
}

- (unint64_t)numberOfTabs
{
  tabs = [(WBTabGroup *)self->_tabGroup tabs];
  v3 = [tabs count];

  return v3;
}

- (id)originatingTabForTab:(id)tab
{
  tabCopy = tab;
  if ([tabCopy shouldSelectOriginatingTabWhenClosed])
  {
    ancestorTabIdentifiers = [tabCopy ancestorTabIdentifiers];
    lastObject = [ancestorTabIdentifiers lastObject];

    if (lastObject)
    {
      v7 = [OrderedWBTabWrapper alloc];
      v8 = [(WBTabGroup *)self->_tabGroup tabWithUUID:lastObject];
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
  lastSelectedTabUUID = [(WBTabGroup *)v2 lastSelectedTabUUID];
  v5 = [(WBTabGroup *)v2 tabWithUUID:lastSelectedTabUUID];

  v6 = [(OrderedWBTabWrapper *)v3 initWithWBTab:v5];

  return v6;
}

- (id)tabAtIndex:(unint64_t)index
{
  v5 = [OrderedWBTabWrapper alloc];
  tabs = [(WBTabGroup *)self->_tabGroup tabs];
  v7 = [tabs objectAtIndexedSubscript:index];
  v8 = [(OrderedWBTabWrapper *)v5 initWithWBTab:v7];

  return v8;
}

@end