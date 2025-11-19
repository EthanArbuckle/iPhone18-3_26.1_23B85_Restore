@interface SUUISortDataRequest
- (SUUISortDataRequest)initWithSortURL:(id)a3;
- (SUUISortDataRequestDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newLoadOperation;
- (void)finishWithResource:(id)a3;
@end

@implementation SUUISortDataRequest

- (SUUISortDataRequest)initWithSortURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUUISortDataRequest;
  v5 = [(SUUIResourceRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    sortURL = v5->_sortURL;
    v5->_sortURL = v6;
  }

  return v5;
}

- (void)finishWithResource:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sortDataRequest:self didFinishWithLockups:v5];
  }
}

- (id)newLoadOperation
{
  v3 = [SUUILoadSortDataOperation alloc];

  return [(SUUILoadSortDataOperation *)v3 initWithResourceRequest:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = SUUISortDataRequest;
  v5 = [(SUUIResourceRequest *)&v9 copyWithZone:?];
  v6 = [(NSURL *)self->_sortURL copyWithZone:a3];
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