@interface HFItemProviderReloadResults
- (HFItemProviderReloadResults)init;
- (HFItemProviderReloadResults)initWithAddedItems:(id)items removedItems:(id)removedItems existingItems:(id)existingItems;
- (NSSet)allItems;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)resultsByMergingWithResults:(id)results;
@end

@implementation HFItemProviderReloadResults

- (HFItemProviderReloadResults)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFItemProvider.m" lineNumber:48 description:@"HFItemProviderReloadResults should only be instantiated by subclasses of HFItemProvider"];

  return 0;
}

- (HFItemProviderReloadResults)initWithAddedItems:(id)items removedItems:(id)removedItems existingItems:(id)existingItems
{
  itemsCopy = items;
  removedItemsCopy = removedItems;
  existingItemsCopy = existingItems;
  v19.receiver = self;
  v19.super_class = HFItemProviderReloadResults;
  v11 = [(HFItemProviderReloadResults *)&v19 init];
  if (v11)
  {
    if (itemsCopy)
    {
      v12 = itemsCopy;
    }

    else
    {
      v12 = [MEMORY[0x277CBEB98] set];
    }

    addedItems = v11->_addedItems;
    v11->_addedItems = v12;

    if (removedItemsCopy)
    {
      v14 = removedItemsCopy;
    }

    else
    {
      v14 = [MEMORY[0x277CBEB98] set];
    }

    removedItems = v11->_removedItems;
    v11->_removedItems = v14;

    if (existingItemsCopy)
    {
      v16 = existingItemsCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  addedItems = [(HFItemProviderReloadResults *)self addedItems];
  removedItems = [(HFItemProviderReloadResults *)self removedItems];
  existingItems = [(HFItemProviderReloadResults *)self existingItems];
  v8 = [v4 initWithAddedItems:addedItems removedItems:removedItems existingItems:existingItems];

  return v8;
}

- (id)resultsByMergingWithResults:(id)results
{
  resultsCopy = results;
  v5 = objc_alloc(objc_opt_class());
  addedItems = [(HFItemProviderReloadResults *)self addedItems];
  addedItems2 = [resultsCopy addedItems];
  v8 = [addedItems setByAddingObjectsFromSet:addedItems2];
  removedItems = [(HFItemProviderReloadResults *)self removedItems];
  removedItems2 = [resultsCopy removedItems];
  v11 = [removedItems setByAddingObjectsFromSet:removedItems2];
  existingItems = [(HFItemProviderReloadResults *)self existingItems];
  existingItems2 = [resultsCopy existingItems];

  v14 = [existingItems setByAddingObjectsFromSet:existingItems2];
  v15 = [v5 initWithAddedItems:v8 removedItems:v11 existingItems:v14];

  return v15;
}

- (NSSet)allItems
{
  existingItems = [(HFItemProviderReloadResults *)self existingItems];
  addedItems = [(HFItemProviderReloadResults *)self addedItems];
  v5 = [existingItems setByAddingObjectsFromSet:addedItems];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  addedItems = [(HFItemProviderReloadResults *)self addedItems];
  removedItems = [(HFItemProviderReloadResults *)self removedItems];
  existingItems = [(HFItemProviderReloadResults *)self existingItems];
  v9 = [v3 stringWithFormat:@"<%@: %p, Added: %@ Removed: %@ Existing:%@>", v5, self, addedItems, removedItems, existingItems];

  return v9;
}

@end