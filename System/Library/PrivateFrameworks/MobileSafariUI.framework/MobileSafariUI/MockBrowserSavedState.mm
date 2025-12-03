@interface MockBrowserSavedState
- (id)savedTabsStateForBrowserControllerWithUUID:(id)d;
- (id)savedTabsStateForBrowserControllerWithUUID:(id)d initialURLString:(id)string;
@end

@implementation MockBrowserSavedState

- (id)savedTabsStateForBrowserControllerWithUUID:(id)d
{
  v3 = [(MockBrowserSavedState *)self savedTabsStateForBrowserControllerWithUUID:d initialURLString:self->_initalURLString];

  return v3;
}

- (id)savedTabsStateForBrowserControllerWithUUID:(id)d initialURLString:(id)string
{
  dCopy = d;
  stringCopy = string;
  v21 = objc_alloc_init(MEMORY[0x277D28F10]);
  uUIDString = [dCopy UUIDString];
  [v21 setUUIDString:uUIDString];

  dictionaryRepresentation = [v21 dictionaryRepresentation];
  v20 = [dictionaryRepresentation mutableCopy];

  array = [MEMORY[0x277CBEB18] array];
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString2 = [uUID UUIDString];
    [v14 setUUIDString:uUIDString2];

    [v14 setTitle:@"[Untitled]"];
    uUIDString3 = [dCopy UUIDString];
    [v14 setOwningBrowserWindowUUIDString:uUIDString3];

    [v14 setUrl:stringCopy];
    dictionaryRepresentation2 = [v14 dictionaryRepresentation];
    [array addObject:dictionaryRepresentation2];

    --v13;
  }

  while (v13);
  [v20 setObject:array forKeyedSubscript:*MEMORY[0x277D29108]];
  [v20 setObject:&unk_2827FC190 forKeyedSubscript:*MEMORY[0x277D290F8]];

  return v20;
}

@end