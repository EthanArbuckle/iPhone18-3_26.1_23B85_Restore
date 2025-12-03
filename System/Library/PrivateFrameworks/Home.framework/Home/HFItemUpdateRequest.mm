@interface HFItemUpdateRequest
+ (id)requestToReloadItemProviders:(id)providers senderSelector:(SEL)selector;
+ (id)requestToUpdateItems:(id)items senderSelector:(SEL)selector;
- (HFItemUpdateRequest)init;
- (HFItemUpdateRequest)initWithItemProviders:(id)providers items:(id)items senderSelector:(SEL)selector;
@end

@implementation HFItemUpdateRequest

+ (id)requestToReloadItemProviders:(id)providers senderSelector:(SEL)selector
{
  providersCopy = providers;
  v7 = [self alloc];
  v8 = [MEMORY[0x277CBEB98] set];
  v9 = [v7 initWithItemProviders:providersCopy items:v8 senderSelector:selector];

  return v9;
}

+ (id)requestToUpdateItems:(id)items senderSelector:(SEL)selector
{
  itemsCopy = items;
  v7 = [self alloc];
  v8 = [MEMORY[0x277CBEB98] set];
  v9 = [v7 initWithItemProviders:v8 items:itemsCopy senderSelector:selector];

  return v9;
}

- (HFItemUpdateRequest)initWithItemProviders:(id)providers items:(id)items senderSelector:(SEL)selector
{
  providersCopy = providers;
  itemsCopy = items;
  v14.receiver = self;
  v14.super_class = HFItemUpdateRequest;
  v11 = [(HFItemUpdateRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_itemsProvidersToReload, providers);
    objc_storeStrong(&v12->_itemsToUpdate, items);
    v12->_senderSelector = selector;
  }

  return v12;
}

- (HFItemUpdateRequest)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithItemProviders_items_senderSelector_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFItemUpdating.m" lineNumber:35 description:{@"%s is unavailable; use %@ instead", "-[HFItemUpdateRequest init]", v5}];

  return 0;
}

@end