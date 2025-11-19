@interface SUUIDeferredActivityItemProvider
- (SUUIDeferredActivityItemProvider)initWithProductPageItem:(id)a3 clientContext:(id)a4;
- (SUUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)a3 clientContext:(id)a4;
- (SUUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)a3 clientContext:(id)a4 placeholderItem:(id)a5;
- (SUUIProductPageItem)productPageItem;
@end

@implementation SUUIDeferredActivityItemProvider

- (SUUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)a3 clientContext:(id)a4 placeholderItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = SUUIDeferredActivityItemProvider;
  v10 = [(UIActivityItemProvider *)&v14 initWithPlaceholderItem:a5];
  if (v10)
  {
    v11 = _Block_copy(v8);
    itemProvider = v10->_itemProvider;
    v10->_itemProvider = v11;

    objc_storeStrong(&v10->_clientContext, a4);
  }

  return v10;
}

- (SUUIDeferredActivityItemProvider)initWithProductPageItem:(id)a3 clientContext:(id)a4
{
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__SUUIDeferredActivityItemProvider_initWithProductPageItem_clientContext___block_invoke;
  v12[3] = &unk_2798F84D0;
  v13 = v6;
  v7 = v6;
  v8 = a4;
  v9 = [objc_opt_class() placeholderItem];
  v10 = [(SUUIDeferredActivityItemProvider *)self initWithProductPageItemProvider:v12 clientContext:v8 placeholderItem:v9];

  return v10;
}

- (SUUIDeferredActivityItemProvider)initWithProductPageItemProvider:(id)a3 clientContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() placeholderItem];
  v9 = [(SUUIDeferredActivityItemProvider *)self initWithProductPageItemProvider:v7 clientContext:v6 placeholderItem:v8];

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