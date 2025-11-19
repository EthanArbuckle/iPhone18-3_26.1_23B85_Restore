@interface EDSearchableIndexUpdates
- (BOOL)hasUpdates;
- (EDSearchableIndexUpdates)initWithIdentifiers:(id)a3;
- (EDSearchableIndexUpdates)initWithIndexableItems:(id)a3 removedIdentifiers:(id)a4 removedDomainIdentifiers:(id)a5;
- (EDSearchableIndexUpdates)initWithIndexedItems:(id)a3 removedIdentifiers:(id)a4 removedDomainIdentifiers:(id)a5;
@end

@implementation EDSearchableIndexUpdates

- (EDSearchableIndexUpdates)initWithIndexedItems:(id)a3 removedIdentifiers:(id)a4 removedDomainIdentifiers:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = EDSearchableIndexUpdates;
  v12 = [(EDSearchableIndexUpdates *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_indexedItems, a3);
    v14 = [v10 copy];
    removedIdentifiers = v13->_removedIdentifiers;
    v13->_removedIdentifiers = v14;

    v16 = [v11 copy];
    removedDomainIdentifiers = v13->_removedDomainIdentifiers;
    v13->_removedDomainIdentifiers = v16;
  }

  return v13;
}

- (EDSearchableIndexUpdates)initWithIndexableItems:(id)a3 removedIdentifiers:(id)a4 removedDomainIdentifiers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[EDIndexedItems alloc] initWithIndexableItems:v8];
  v12 = [(EDSearchableIndexUpdates *)self initWithIndexedItems:v11 removedIdentifiers:v9 removedDomainIdentifiers:v10];

  return v12;
}

- (EDSearchableIndexUpdates)initWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [[EDIndexedItems alloc] initWithIdentifiers:v4];
  v6 = [(EDSearchableIndexUpdates *)self initWithIndexedItems:v5 removedIdentifiers:MEMORY[0x1E695E0F0] removedDomainIdentifiers:MEMORY[0x1E695E0F0]];

  return v6;
}

- (BOOL)hasUpdates
{
  v3 = [(EDSearchableIndexUpdates *)self indexedItems];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(EDSearchableIndexUpdates *)self removedIdentifiers];
    if ([v5 count])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(EDSearchableIndexUpdates *)self removedDomainIdentifiers];
      v4 = [v6 count] != 0;
    }
  }

  return v4;
}

@end