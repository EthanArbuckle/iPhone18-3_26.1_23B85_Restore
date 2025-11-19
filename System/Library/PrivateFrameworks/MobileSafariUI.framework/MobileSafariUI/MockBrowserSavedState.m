@interface MockBrowserSavedState
- (id)savedTabsStateForBrowserControllerWithUUID:(id)a3;
- (id)savedTabsStateForBrowserControllerWithUUID:(id)a3 initialURLString:(id)a4;
@end

@implementation MockBrowserSavedState

- (id)savedTabsStateForBrowserControllerWithUUID:(id)a3
{
  v3 = [(MockBrowserSavedState *)self savedTabsStateForBrowserControllerWithUUID:a3 initialURLString:self->_initalURLString];

  return v3;
}

- (id)savedTabsStateForBrowserControllerWithUUID:(id)a3 initialURLString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = objc_alloc_init(MEMORY[0x277D28F10]);
  v8 = [v6 UUIDString];
  [v21 setUUIDString:v8];

  v9 = [v21 dictionaryRepresentation];
  v20 = [v9 mutableCopy];

  v10 = [MEMORY[0x277CBEB18] array];
  tabsCount = self->_tabsCount;
  if (tabsCount <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = self->_tabsCount;
  }

  if (tabsCount)
  {
    v13 = v12;
  }

  else
  {
    v13 = 32;
  }

  do
  {
    v14 = objc_alloc_init(MEMORY[0x277D28DC0]);
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [v15 UUIDString];
    [v14 setUUIDString:v16];

    [v14 setTitle:@"[Untitled]"];
    v17 = [v6 UUIDString];
    [v14 setOwningBrowserWindowUUIDString:v17];

    [v14 setUrl:v7];
    v18 = [v14 dictionaryRepresentation];
    [v10 addObject:v18];

    --v13;
  }

  while (v13);
  [v20 setObject:v10 forKeyedSubscript:*MEMORY[0x277D29108]];
  [v20 setObject:&unk_2827FC190 forKeyedSubscript:*MEMORY[0x277D290F8]];

  return v20;
}

@end