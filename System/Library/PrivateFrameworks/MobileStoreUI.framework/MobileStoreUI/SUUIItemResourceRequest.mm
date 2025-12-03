@interface SUUIItemResourceRequest
- (SUUIItemRequestDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newLoadOperation;
- (void)finishWithResource:(id)resource;
@end

@implementation SUUIItemResourceRequest

- (void)finishWithResource:(id)resource
{
  resourceCopy = resource;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    loadedItems = [resourceCopy loadedItems];
    invalidItemIdentifiers = [resourceCopy invalidItemIdentifiers];
    [WeakRetained itemRequest:self didFinishWithItems:loadedItems invalidItemIdentifiers:invalidItemIdentifiers];
  }

  if (objc_opt_respondsToSelector())
  {
    loadedItems2 = [resourceCopy loadedItems];
    [WeakRetained itemRequest:self didFinishWithItems:loadedItems2];
  }
}

- (id)newLoadOperation
{
  v3 = [SUUILoadItemResourceOperation alloc];

  return [(SUUILoadItemResourceOperation *)v3 initWithResourceRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SUUIItemResourceRequest;
  v4 = [(SUUIResourceRequest *)&v6 copyWithZone:zone];
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