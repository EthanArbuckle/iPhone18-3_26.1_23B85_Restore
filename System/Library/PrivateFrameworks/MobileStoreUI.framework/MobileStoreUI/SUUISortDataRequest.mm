@interface SUUISortDataRequest
- (SUUISortDataRequest)initWithSortURL:(id)l;
- (SUUISortDataRequestDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newLoadOperation;
- (void)finishWithResource:(id)resource;
@end

@implementation SUUISortDataRequest

- (SUUISortDataRequest)initWithSortURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = SUUISortDataRequest;
  v5 = [(SUUIResourceRequest *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    sortURL = v5->_sortURL;
    v5->_sortURL = v6;
  }

  return v5;
}

- (void)finishWithResource:(id)resource
{
  resourceCopy = resource;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sortDataRequest:self didFinishWithLockups:resourceCopy];
  }
}

- (id)newLoadOperation
{
  v3 = [SUUILoadSortDataOperation alloc];

  return [(SUUILoadSortDataOperation *)v3 initWithResourceRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = SUUISortDataRequest;
  v5 = [(SUUIResourceRequest *)&v9 copyWithZone:?];
  v6 = [(NSURL *)self->_sortURL copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  return v5;
}

- (SUUISortDataRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end