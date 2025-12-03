@interface HAP2AccessoryServerTransportRequest
+ (id)new;
- (HAP2AccessoryServerTransportRequest)init;
- (id)debugDescription;
- (id)description;
- (id)initWithEndpoint:(void *)endpoint data:(char)data encrypted:(void *)encrypted mimeType:(char)type forReading:(void *)reading dscpPriority:;
@end

@implementation HAP2AccessoryServerTransportRequest

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self)
  {
    identifier = self->_identifier;
  }

  else
  {
    identifier = 0;
  }

  identifier = [v3 stringWithFormat:@"<%@ %p id=%llu>", v5, self, identifier];

  return identifier;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self)
  {
    identifier = self->_identifier;
  }

  else
  {
    identifier = 0;
  }

  identifier = [v3 stringWithFormat:@"<%@ id=%llu>", v5, identifier];

  return identifier;
}

- (id)initWithEndpoint:(void *)endpoint data:(char)data encrypted:(void *)encrypted mimeType:(char)type forReading:(void *)reading dscpPriority:
{
  v14 = a2;
  endpointCopy = endpoint;
  encryptedCopy = encrypted;
  if (self)
  {
    v19.receiver = self;
    v19.super_class = HAP2AccessoryServerTransportRequest;
    v17 = objc_msgSendSuper2(&v19, sel_init);
    self = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 2, a2);
      *(self + 8) = type;
      *(self + 9) = data;
      objc_storeStrong(self + 3, encrypted);
      objc_storeStrong(self + 4, endpoint);
      self[6] = atomic_fetch_add(&initWithEndpoint_data_encrypted_mimeType_forReading_dscpPriority__nextIdentifier, 1uLL);
      self[5] = reading;
    }
  }

  return self;
}

- (HAP2AccessoryServerTransportRequest)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end