@interface CATEndPoint
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEndPoint:(id)a3;
- (CATEndPoint)init;
- (CATEndPoint)initWithAddress:(id)a3 port:(unsigned int)a4;
- (CATEndPoint)initWithData:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation CATEndPoint

- (CATEndPoint)init
{
  v3 = objc_opt_new();
  v4 = [(CATEndPoint *)self initWithData:v3];

  return v4;
}

- (CATEndPoint)initWithData:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = CATEndPoint;
  v6 = [(CATEndPoint *)&v18 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB28] dataWithData:v5];
    if ([v7 length] && objc_msgSend(v7, "length") <= 0xF)
    {
      [(CATEndPoint *)a2 initWithData:v6];
    }

    if ([v7 length])
    {
      v8 = [v7 mutableBytes];
      v9 = *(v8 + 1);
      if (v9 == 30 || v9 == 2)
      {
        v6->_port = bswap32(*(v8 + 2)) >> 16;
        *(v8 + 2) = 0;
      }
    }

    v11 = [MEMORY[0x277CBEA90] dataWithData:v5];
    data = v6->_data;
    v6->_data = v11;

    v13 = [CATAddress alloc];
    v14 = [v7 copy];
    v15 = [(CATAddress *)v13 initWithData:v14];
    address = v6->_address;
    v6->_address = v15;
  }

  return v6;
}

- (CATEndPoint)initWithAddress:(id)a3 port:(unsigned int)a4
{
  v7 = [a3 data];
  v8 = [v7 mutableCopy];

  if ([v8 length] && objc_msgSend(v8, "length") <= 0xF)
  {
    [CATEndPoint initWithAddress:a2 port:self];
  }

  if ([v8 length])
  {
    v9 = [v8 mutableBytes];
    v10 = *(v9 + 1);
    if (v10 == 30 || v10 == 2)
    {
      *(v9 + 2) = bswap32(a4) >> 16;
    }
  }

  v12 = [(CATEndPoint *)self initWithData:v8];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = CATEndPoint;
  v4 = [(CATEndPoint *)&v9 description];
  v5 = [(CATEndPoint *)self address];
  v6 = [v5 address];
  v7 = [v3 stringWithFormat:@"%@ address: %@ port: %d", v4, v6, -[CATEndPoint port](self, "port")];

  return v7;
}

- (unint64_t)hash
{
  v2 = [(CATEndPoint *)self data];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqualToEndPoint:(id)a3
{
  v4 = a3;
  v5 = [(CATEndPoint *)self data];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CATEndPoint *)self isEqualToEndPoint:v4];
  }

  return v5;
}

- (void)initWithData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATEndPoint.m" lineNumber:35 description:@"The provided data is not long enough to be a sockaddr."];
}

- (void)initWithAddress:(uint64_t)a1 port:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATEndPoint.m" lineNumber:60 description:@"The provided data is not long enough to be a sockaddr."];
}

@end