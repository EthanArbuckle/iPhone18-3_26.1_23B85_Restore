@interface SUUIResourceRequest
- (BOOL)isEqual:(id)equal;
- (SUUIResourceRequest)init;
- (id)_initSUUIResourceRequest;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation SUUIResourceRequest

- (SUUIResourceRequest)init
{
  v3.receiver = self;
  v3.super_class = SUUIResourceRequest;
  result = [(SUUIResourceRequest *)&v3 init];
  if (result)
  {
    result->_requestID = (atomic_fetch_add_explicit(init_sRequestID, 1u, memory_order_relaxed) + 1);
  }

  return result;
}

- (id)_initSUUIResourceRequest
{
  v3.receiver = self;
  v3.super_class = SUUIResourceRequest;
  return [(SUUIResourceRequest *)&v3 init];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUIResourceRequest;
  v4 = [(SUUIResourceRequest *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: [%lu]", v4, self->_requestID];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    requestIdentifier = [(SUUIResourceRequest *)self requestIdentifier];
    v6 = requestIdentifier == [equalCopy requestIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "_initSUUIResourceRequest"}];
  objc_storeStrong((v4 + 8), self->_cacheKey);
  *(v4 + 16) = self->_requestID;
  return v4;
}

@end