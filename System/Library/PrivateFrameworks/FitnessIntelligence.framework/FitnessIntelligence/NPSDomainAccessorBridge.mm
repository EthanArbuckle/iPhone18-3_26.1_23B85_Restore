@interface NPSDomainAccessorBridge
- (BOOL)synchronizeWithError:(id *)error;
- (NPSDomainAccessorBridge)initWithDomain:(id)domain;
@end

@implementation NPSDomainAccessorBridge

- (NPSDomainAccessorBridge)initWithDomain:(id)domain
{
  domainCopy = domain;
  v9.receiver = self;
  v9.super_class = NPSDomainAccessorBridge;
  v5 = [(NPSDomainAccessorBridge *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B3588]) initWithDomain:domainCopy];
    accessor = v5->_accessor;
    v5->_accessor = v6;
  }

  return v5;
}

- (BOOL)synchronizeWithError:(id *)error
{
  *error = [(NPSDomainAccessor *)self->_accessor synchronize];
  return 0;
}

@end