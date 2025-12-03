@interface EDSearchableIndexUpdates
- (BOOL)hasUpdates;
- (EDSearchableIndexUpdates)initWithIdentifiers:(id)identifiers;
- (EDSearchableIndexUpdates)initWithIndexableItems:(id)items removedIdentifiers:(id)identifiers removedDomainIdentifiers:(id)domainIdentifiers;
- (EDSearchableIndexUpdates)initWithIndexedItems:(id)items removedIdentifiers:(id)identifiers removedDomainIdentifiers:(id)domainIdentifiers;
@end

@implementation EDSearchableIndexUpdates

- (EDSearchableIndexUpdates)initWithIndexedItems:(id)items removedIdentifiers:(id)identifiers removedDomainIdentifiers:(id)domainIdentifiers
{
  itemsCopy = items;
  identifiersCopy = identifiers;
  domainIdentifiersCopy = domainIdentifiers;
  v19.receiver = self;
  v19.super_class = EDSearchableIndexUpdates;
  v12 = [(EDSearchableIndexUpdates *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_indexedItems, items);
    v14 = [identifiersCopy copy];
    removedIdentifiers = v13->_removedIdentifiers;
    v13->_removedIdentifiers = v14;

    v16 = [domainIdentifiersCopy copy];
    removedDomainIdentifiers = v13->_removedDomainIdentifiers;
    v13->_removedDomainIdentifiers = v16;
  }

  return v13;
}

- (EDSearchableIndexUpdates)initWithIndexableItems:(id)items removedIdentifiers:(id)identifiers removedDomainIdentifiers:(id)domainIdentifiers
{
  itemsCopy = items;
  identifiersCopy = identifiers;
  domainIdentifiersCopy = domainIdentifiers;
  v11 = [[EDIndexedItems alloc] initWithIndexableItems:itemsCopy];
  v12 = [(EDSearchableIndexUpdates *)self initWithIndexedItems:v11 removedIdentifiers:identifiersCopy removedDomainIdentifiers:domainIdentifiersCopy];

  return v12;
}

- (EDSearchableIndexUpdates)initWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [[EDIndexedItems alloc] initWithIdentifiers:identifiersCopy];
  v6 = [(EDSearchableIndexUpdates *)self initWithIndexedItems:v5 removedIdentifiers:MEMORY[0x1E695E0F0] removedDomainIdentifiers:MEMORY[0x1E695E0F0]];

  return v6;
}

- (BOOL)hasUpdates
{
  indexedItems = [(EDSearchableIndexUpdates *)self indexedItems];
  if ([indexedItems count])
  {
    v4 = 1;
  }

  else
  {
    removedIdentifiers = [(EDSearchableIndexUpdates *)self removedIdentifiers];
    if ([removedIdentifiers count])
    {
      v4 = 1;
    }

    else
    {
      removedDomainIdentifiers = [(EDSearchableIndexUpdates *)self removedDomainIdentifiers];
      v4 = [removedDomainIdentifiers count] != 0;
    }
  }

  return v4;
}

@end