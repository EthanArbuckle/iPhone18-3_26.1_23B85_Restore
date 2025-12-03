@interface DBWorkspaceStateChangeRequest
- (id)_initWithRequest:(id)request;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation DBWorkspaceStateChangeRequest

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CF0C00]) initWithObject:self];
  [v3 appendArraySection:self->_changeItems withName:@"changeItems" skipIfEmpty:1];
  v4 = [v3 appendObject:self->_source withName:@"source" skipIfNil:1];
  build = [v3 build];

  return build;
}

- (id)_initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = DBWorkspaceStateChangeRequest;
  v5 = [(DBWorkspaceStateChangeRequest *)&v9 init];
  if (v5)
  {
    v6 = [requestCopy[1] copy];
    changeItems = v5->_changeItems;
    v5->_changeItems = v6;

    objc_storeStrong(&v5->_source, requestCopy[2]);
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DBMutableWorkspaceStateChangeRequest alloc];

  return [(DBWorkspaceStateChangeRequest *)v4 _initWithRequest:self];
}

@end