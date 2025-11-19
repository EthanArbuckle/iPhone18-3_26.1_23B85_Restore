@interface HFItemProviderReloadResults
- (HFItemProviderReloadResults)init;
- (HFItemProviderReloadResults)initWithAddedItems:(id)a3 removedItems:(id)a4 existingItems:(id)a5;
- (NSSet)allItems;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)resultsByMergingWithResults:(id)a3;
@end

@implementation HFItemProviderReloadResults

- (HFItemProviderReloadResults)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFItemProvider.m" lineNumber:48 description:@"HFItemProviderReloadResults should only be instantiated by subclasses of HFItemProvider"];

  return 0;
}

- (HFItemProviderReloadResults)initWithAddedItems:(id)a3 removedItems:(id)a4 existingItems:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HFItemProviderReloadResults;
  v11 = [(HFItemProviderReloadResults *)&v19 init];
  if (v11)
  {
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = [MEMORY[0x277CBEB98] set];
    }

    addedItems = v11->_addedItems;
    v11->_addedItems = v12;

    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = [MEMORY[0x277CBEB98] set];
    }

    removedItems = v11->_removedItems;
    v11->_removedItems = v14;

    if (v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = [MEMORY[0x277CBEB98] set];
    }

    existingItems = v11->_existingItems;
    v11->_existingItems = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFItemProviderReloadResults *)self addedItems];
  v6 = [(HFItemProviderReloadResults *)self removedItems];
  v7 = [(HFItemProviderReloadResults *)self existingItems];
  v8 = [v4 initWithAddedItems:v5 removedItems:v6 existingItems:v7];

  return v8;
}

- (id)resultsByMergingWithResults:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HFItemProviderReloadResults *)self addedItems];
  v7 = [v4 addedItems];
  v8 = [v6 setByAddingObjectsFromSet:v7];
  v9 = [(HFItemProviderReloadResults *)self removedItems];
  v10 = [v4 removedItems];
  v11 = [v9 setByAddingObjectsFromSet:v10];
  v12 = [(HFItemProviderReloadResults *)self existingItems];
  v13 = [v4 existingItems];

  v14 = [v12 setByAddingObjectsFromSet:v13];
  v15 = [v5 initWithAddedItems:v8 removedItems:v11 existingItems:v14];

  return v15;
}

- (NSSet)allItems
{
  v3 = [(HFItemProviderReloadResults *)self existingItems];
  v4 = [(HFItemProviderReloadResults *)self addedItems];
  v5 = [v3 setByAddingObjectsFromSet:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFItemProviderReloadResults *)self addedItems];
  v7 = [(HFItemProviderReloadResults *)self removedItems];
  v8 = [(HFItemProviderReloadResults *)self existingItems];
  v9 = [v3 stringWithFormat:@"<%@: %p, Added: %@ Removed: %@ Existing:%@>", v5, self, v6, v7, v8];

  return v9;
}

@end