@interface CRKConcreteNetworkEndpoint
- (CRKConcreteNetworkEndpoint)initWithUnderlyingEndpoint:(id)a3;
- (NSString)IPAddress;
@end

@implementation CRKConcreteNetworkEndpoint

- (CRKConcreteNetworkEndpoint)initWithUnderlyingEndpoint:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKConcreteNetworkEndpoint;
  v6 = [(CRKConcreteNetworkEndpoint *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingEndpoint, a3);
  }

  return v7;
}

- (NSString)IPAddress
{
  IPAddress = self->_IPAddress;
  if (!IPAddress)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__CRKConcreteNetworkEndpoint_IPAddress__block_invoke;
    v7[3] = &unk_278DC2A10;
    v7[4] = self;
    v4 = __39__CRKConcreteNetworkEndpoint_IPAddress__block_invoke(v7);
    v5 = self->_IPAddress;
    self->_IPAddress = v4;

    IPAddress = self->_IPAddress;
  }

  return IPAddress;
}

id __39__CRKConcreteNetworkEndpoint_IPAddress__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) underlyingEndpoint];
  v2 = nw_endpoint_copy_address_string(v1);

  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
    free(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end