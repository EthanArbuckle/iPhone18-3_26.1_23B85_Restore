@interface SUUIItemResourceRequest
- (SUUIItemRequestDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newLoadOperation;
- (void)finishWithResource:(id)a3;
@end

@implementation SUUIItemResourceRequest

- (void)finishWithResource:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [v8 loadedItems];
    v6 = [v8 invalidItemIdentifiers];
    [WeakRetained itemRequest:self didFinishWithItems:v5 invalidItemIdentifiers:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v8 loadedItems];
    [WeakRetained itemRequest:self didFinishWithItems:v7];
  }
}

- (id)newLoadOperation
{
  v3 = [SUUILoadItemResourceOperation alloc];

  return [(SUUILoadItemResourceOperation *)v3 initWithResourceRequest:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SUUIItemResourceRequest;
  v4 = [(SUUIResourceRequest *)&v6 copyWithZone:a3];
  [v4 setImageProfile:self->_imageProfile];
  [v4 setItemIdentifiers:self->_itemIdentifiers];
  [v4 setKeyProfile:self->_keyProfile];
  return v4;
}

- (SUUIItemRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end