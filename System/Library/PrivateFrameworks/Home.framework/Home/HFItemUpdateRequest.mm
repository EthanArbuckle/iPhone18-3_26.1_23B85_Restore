@interface HFItemUpdateRequest
+ (id)requestToReloadItemProviders:(id)a3 senderSelector:(SEL)a4;
+ (id)requestToUpdateItems:(id)a3 senderSelector:(SEL)a4;
- (HFItemUpdateRequest)init;
- (HFItemUpdateRequest)initWithItemProviders:(id)a3 items:(id)a4 senderSelector:(SEL)a5;
@end

@implementation HFItemUpdateRequest

+ (id)requestToReloadItemProviders:(id)a3 senderSelector:(SEL)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [MEMORY[0x277CBEB98] set];
  v9 = [v7 initWithItemProviders:v6 items:v8 senderSelector:a4];

  return v9;
}

+ (id)requestToUpdateItems:(id)a3 senderSelector:(SEL)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [MEMORY[0x277CBEB98] set];
  v9 = [v7 initWithItemProviders:v8 items:v6 senderSelector:a4];

  return v9;
}

- (HFItemUpdateRequest)initWithItemProviders:(id)a3 items:(id)a4 senderSelector:(SEL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HFItemUpdateRequest;
  v11 = [(HFItemUpdateRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_itemsProvidersToReload, a3);
    objc_storeStrong(&v12->_itemsToUpdate, a4);
    v12->_senderSelector = a5;
  }

  return v12;
}

- (HFItemUpdateRequest)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithItemProviders_items_senderSelector_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFItemUpdating.m" lineNumber:35 description:{@"%s is unavailable; use %@ instead", "-[HFItemUpdateRequest init]", v5}];

  return 0;
}

@end