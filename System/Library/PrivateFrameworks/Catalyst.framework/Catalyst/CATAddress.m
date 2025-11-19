@interface CATAddress
+ (id)any;
+ (id)localWiFi;
- (BOOL)isAny;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAddress:(id)a3;
- (BOOL)isLocalWiFi;
- (CATAddress)initWithData:(id)a3;
- (CATAddress)initWithString:(id)a3;
- (NSString)address;
- (id)description;
- (unint64_t)hash;
- (void)address;
@end

@implementation CATAddress

- (NSString)address
{
  if (!self->_address)
  {
    v4 = [(NSData *)self->_data length];
    data = self->_data;
    if (v4 < 0x10)
    {
      if ([(NSData *)data length])
      {
        [(CATAddress *)a2 address];
      }

      address = self->_address;
      self->_address = &stru_2855FDC88;
      goto LABEL_13;
    }

    v6 = [(NSData *)data bytes];
    v7 = [MEMORY[0x277CBEB28] data];
    address = v7;
    v9 = *(v6 + 1);
    if (v9 == 2)
    {
      v10 = 17;
      v11 = 4;
    }

    else
    {
      if (v9 != 30)
      {
        v12 = 0;
        goto LABEL_12;
      }

      v10 = 47;
      v11 = 8;
    }

    v12 = (v6 + v11);
    [(NSString *)v7 setLength:v10];
LABEL_12:
    inet_ntop(*(v6 + 1), v12, [(NSString *)address mutableBytes], [(NSString *)address length]);
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{-[NSString bytes](address, "bytes")}];
    v14 = self->_address;
    self->_address = v13;

LABEL_13:
  }

  v15 = self->_address;

  return v15;
}

- (BOOL)isAny
{
  v3 = [(CATAddress *)self data];
  v4 = [v3 length];
  result = v4 >= 0x10 && (-[CATAddress data](self, "data"), v5 = ;
  return result;
}

- (BOOL)isLocalWiFi
{
  v3 = [(CATAddress *)self data];
  v4 = [v3 length];
  result = v4 >= 0x10 && (-[CATAddress data](self, "data"), v5 = ;
  return result;
}

+ (id)any
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __17__CATAddress_any__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (any_onceToken != -1)
  {
    dispatch_once(&any_onceToken, block);
  }

  v2 = any_any;

  return v2;
}

void __17__CATAddress_any__block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[1] = 0;
  v6[0] = 528;
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:16];
  v3 = [objc_alloc(*(a1 + 32)) initWithData:v2];
  v4 = any_any;
  any_any = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)localWiFi
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__CATAddress_localWiFi__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (localWiFi_onceToken != -1)
  {
    dispatch_once(&localWiFi_onceToken, block);
  }

  v2 = localWiFi_localWiFi;

  return v2;
}

void __23__CATAddress_localWiFi__block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[1] = 0;
  v6[0] = 0xFEA900000210;
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:16];
  v3 = [objc_alloc(*(a1 + 32)) initWithData:v2];
  v4 = localWiFi_localWiFi;
  localWiFi_localWiFi = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (CATAddress)initWithString:(id)a3
{
  v9 = 0;
  memset(&v10, 0, sizeof(v10));
  v10.ai_flags = 4;
  v5 = a3;
  if (getaddrinfo([a3 UTF8String], 0, &v10, &v9))
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:v9->ai_addr length:v9->ai_addrlen];
    freeaddrinfo(v9);
    self = [(CATAddress *)self initWithData:v7];

    v6 = self;
  }

  return v6;
}

- (CATAddress)initWithData:(id)a3
{
  v5 = a3;
  if ([v5 length] && objc_msgSend(v5, "length") <= 0xF)
  {
    [(CATAddress *)a2 initWithData:?];
  }

  v10.receiver = self;
  v10.super_class = CATAddress;
  v6 = [(CATAddress *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithData:v5];
    data = v6->_data;
    v6->_data = v7;
  }

  return v6;
}

- (id)description
{
  if ([(CATAddress *)self isAny])
  {
    v3 = MEMORY[0x277CCACA8];
    v12.receiver = self;
    v12.super_class = CATAddress;
    v4 = [(CATAddress *)&v12 description];
    v5 = [(CATAddress *)self address];
    [v3 stringWithFormat:@"%@ address: ANY %@", v4, v5];
  }

  else
  {
    v6 = [(CATAddress *)self isLocalWiFi];
    v7 = MEMORY[0x277CCACA8];
    if (v6)
    {
      v11.receiver = self;
      v11.super_class = CATAddress;
      v4 = [(CATAddress *)&v11 description];
      v5 = [(CATAddress *)self address];
      [v7 stringWithFormat:@"%@ address: LOCAL WIFI %@", v4, v5];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = CATAddress;
      v4 = [(CATAddress *)&v10 description];
      v5 = [(CATAddress *)self address];
      [v7 stringWithFormat:@"%@ address: %@", v4, v5];
    }
  }
  v8 = ;

  return v8;
}

- (unint64_t)hash
{
  v2 = [(CATAddress *)self data];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqualToAddress:(id)a3
{
  v4 = a3;
  v5 = [(CATAddress *)self data];
  v6 = [v4 data];

  if (v5 | v6)
  {
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CATAddress *)self isEqualToAddress:v4];
  }

  return v5;
}

- (void)address
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATAddress.m" lineNumber:46 description:@"The provided data is not long enough to be a sockaddr."];
}

- (void)initWithData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATAddress.m" lineNumber:146 description:@"The provided data is not long enough to be a sockaddr."];
}

@end