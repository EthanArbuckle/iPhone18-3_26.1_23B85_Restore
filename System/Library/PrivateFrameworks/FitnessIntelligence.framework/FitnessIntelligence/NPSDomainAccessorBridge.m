@interface NPSDomainAccessorBridge
- (BOOL)synchronizeWithError:(id *)a3;
- (NPSDomainAccessorBridge)initWithDomain:(id)a3;
@end

@implementation NPSDomainAccessorBridge

- (NPSDomainAccessorBridge)initWithDomain:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NPSDomainAccessorBridge;
  v5 = [(NPSDomainAccessorBridge *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B3588]) initWithDomain:v4];
    accessor = v5->_accessor;
    v5->_accessor = v6;
  }

  return v5;
}

- (BOOL)synchronizeWithError:(id *)a3
{
  *a3 = [(NPSDomainAccessor *)self->_accessor synchronize];
  return 0;
}

@end