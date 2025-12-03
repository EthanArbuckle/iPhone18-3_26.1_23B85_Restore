@interface SUUIPageComponentContext
- (SUUIPageComponentContext)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)itemForItemIdentifier:(id)identifier;
- (void)addUnavailableItemIdentifiers:(id)identifiers;
- (void)setUnavailableItemIdentifiers:(id)identifiers;
@end

@implementation SUUIPageComponentContext

- (SUUIPageComponentContext)init
{
  v6.receiver = self;
  v6.super_class = SUUIPageComponentContext;
  v2 = [(SUUIPageComponentContext *)&v6 init];
  if (v2)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v4 = [currentDevice userInterfaceIdiom] == 1;

    v2->_layoutStyle = v4;
    v2->_pageGenerationTime = CFAbsoluteTimeGetCurrent();
  }

  return v2;
}

- (void)addUnavailableItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  unavailableItems = self->_unavailableItems;
  v8 = identifiersCopy;
  if (!unavailableItems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_unavailableItems;
    self->_unavailableItems = v6;

    identifiersCopy = v8;
    unavailableItems = self->_unavailableItems;
  }

  [(NSMutableSet *)unavailableItems addObjectsFromArray:identifiersCopy];
}

- (id)itemForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(NSMutableSet *)self->_unavailableItems containsObject:identifierCopy]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSDictionary *)self->_items objectForKey:identifierCopy];
  }

  return v5;
}

- (void)setUnavailableItemIdentifiers:(id)identifiers
{
  unavailableItems = self->_unavailableItems;
  if (unavailableItems)
  {
    identifiersCopy = identifiers;
    [(NSMutableSet *)unavailableItems removeAllObjects];
  }

  else
  {
    v7 = MEMORY[0x277CBEB58];
    identifiersCopy2 = identifiers;
    v9 = objc_alloc_init(v7);
    v10 = self->_unavailableItems;
    self->_unavailableItems = v9;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SUUIPageComponentContext_setUnavailableItemIdentifiers___block_invoke;
  v11[3] = &unk_2798F6E48;
  v11[4] = self;
  [identifiers enumerateKeysAndObjectsUsingBlock:v11];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSDictionary *)self->_componentDictionary copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSArray *)self->_ineligibleGratisIdentifiers copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSDictionary *)self->_items copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v5[4] = self->_layoutStyle;
  v12 = [(NSDictionary *)self->_platformKeyProfileOverrides copyWithZone:zone];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(NSMutableSet *)self->_unavailableItems mutableCopyWithZone:zone];
  v15 = v5[7];
  v5[7] = v14;

  return v5;
}

@end