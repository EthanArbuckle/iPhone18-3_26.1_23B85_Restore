@interface HAP2AccessoryServerTransportRequest
+ (id)new;
- (HAP2AccessoryServerTransportRequest)init;
- (id)debugDescription;
- (id)description;
- (id)initWithEndpoint:(void *)a3 data:(char)a4 encrypted:(void *)a5 mimeType:(char)a6 forReading:(void *)a7 dscpPriority:;
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

  v8 = [v3 stringWithFormat:@"<%@ %p id=%llu>", v5, self, identifier];

  return v8;
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

  v8 = [v3 stringWithFormat:@"<%@ id=%llu>", v5, identifier];

  return v8;
}

- (id)initWithEndpoint:(void *)a3 data:(char)a4 encrypted:(void *)a5 mimeType:(char)a6 forReading:(void *)a7 dscpPriority:
{
  v14 = a2;
  v15 = a3;
  v16 = a5;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = HAP2AccessoryServerTransportRequest;
    v17 = objc_msgSendSuper2(&v19, sel_init);
    a1 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 2, a2);
      *(a1 + 8) = a6;
      *(a1 + 9) = a4;
      objc_storeStrong(a1 + 3, a5);
      objc_storeStrong(a1 + 4, a3);
      a1[6] = atomic_fetch_add(&initWithEndpoint_data_encrypted_mimeType_forReading_dscpPriority__nextIdentifier, 1uLL);
      a1[5] = a7;
    }
  }

  return a1;
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