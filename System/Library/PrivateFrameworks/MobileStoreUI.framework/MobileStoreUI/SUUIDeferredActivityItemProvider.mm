@interface SUUIDeferredActivityItemProvider
- (SUUIDeferredActivityItemProvider)initWithProductPageItem:(id)item clientContext:(id)context;
- (SUUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)provider clientContext:(id)context;
- (SUUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)provider clientContext:(id)context placeholderItem:(id)item;
- (SUUIProductPageItem)productPageItem;
@end

@implementation SUUIDeferredActivityItemProvider

- (SUUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)provider clientContext:(id)context placeholderItem:(id)item
{
  providerCopy = provider;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = SUUIDeferredActivityItemProvider;
  v10 = [(UIActivityItemProvider *)&v14 initWithPlaceholderItem:item];
  if (v10)
  {
    v11 = _Block_copy(providerCopy);
    itemProvider = v10->_itemProvider;
    v10->_itemProvider = v11;

    objc_storeStrong(&v10->_clientContext, context);
  }

  return v10;
}

- (SUUIDeferredActivityItemProvider)initWithProductPageItem:(id)item clientContext:(id)context
{
  itemCopy = item;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__SUUIDeferredActivityItemProvider_initWithProductPageItem_clientContext___block_invoke;
  v12[3] = &unk_2798F84D0;
  v13 = itemCopy;
  v7 = itemCopy;
  contextCopy = context;
  placeholderItem = [objc_opt_class() placeholderItem];
  v10 = [(SUUIDeferredActivityItemProvider *)self initWithProductPageItemProvider:v12 clientContext:contextCopy placeholderItem:placeholderItem];

  return v10;
}

- (SUUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)provider clientContext:(id)context
{
  contextCopy = context;
  providerCopy = provider;
  placeholderItem = [objc_opt_class() placeholderItem];
  v9 = [(SUUIDeferredActivityItemProvider *)self initWithProductPageItemProvider:providerCopy clientContext:contextCopy placeholderItem:placeholderItem];

  return v9;
}

- (SUUIProductPageItem)productPageItem
{
  productPageItem = self->_productPageItem;
  if (!productPageItem)
  {
    productPageItem = self->_itemProvider;
    if (productPageItem)
    {
      v4 = productPageItem[2](productPageItem, a2);
      v5 = self->_productPageItem;
      self->_productPageItem = v4;

      productPageItem = self->_productPageItem;
    }
  }

  return productPageItem;
}

@end