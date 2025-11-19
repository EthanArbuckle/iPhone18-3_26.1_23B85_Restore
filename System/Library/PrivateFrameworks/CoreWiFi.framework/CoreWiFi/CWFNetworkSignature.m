@interface CWFNetworkSignature
+ (id)createHexStringFromBytes:(id)a3;
- (CWFNetworkSignature)initWithCoder:(id)a3;
- (CWFNetworkSignature)initWithIPv4NetworkSignature:(id)a3 IPv6NetworkSignature:(id)a4;
- (CWFNetworkSignature)initWithIPv4NetworkSignatureBytes:(id)a3 IPv6NetworkSignatureBytes:(id)a4;
- (CWFNetworkSignature)initWithNetworkSignatureWithString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFNetworkSignature

- (CWFNetworkSignature)initWithIPv4NetworkSignature:(id)a3 IPv6NetworkSignature:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CWFNetworkSignature;
  v9 = [(CWFNetworkSignature *)&v14 init];
  v10 = v9;
  if (v9)
  {
    if (v7 | v8)
    {
      objc_storeStrong(&v9->_IPv4NetworkSignature, a3);
      v11 = v8;
      IPv6NetworkSignature = v10->_IPv6NetworkSignature;
      v10->_IPv6NetworkSignature = v11;
    }

    else
    {
      IPv6NetworkSignature = v9;
      v10 = 0;
    }
  }

  else
  {
    IPv6NetworkSignature = 0;
  }

  return v10;
}

- (CWFNetworkSignature)initWithNetworkSignatureWithString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (![v4 hasPrefix:@"IPv4"])
  {
    if ([v5 hasPrefix:@"IPv6"])
    {
      v6 = [(CWFNetworkSignature *)self initWithIPv6NetworkSignature:v5];
      goto LABEL_6;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v6 = [(CWFNetworkSignature *)self initWithIPv4NetworkSignature:v5];
LABEL_6:
  self = v6;
  v7 = self;
LABEL_8:

  return v7;
}

- (CWFNetworkSignature)initWithIPv4NetworkSignatureBytes:(id)a3 IPv6NetworkSignatureBytes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length] == 20 || v7 && objc_msgSend(v7, "length") == 20)
  {
    v8 = [CWFNetworkSignature createHexStringFromBytes:v6];
    v9 = [CWFNetworkSignature createHexStringFromBytes:v7];
    self = [(CWFNetworkSignature *)self initWithIPv4NetworkSignature:v8 IPv6NetworkSignature:v9];

    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)createHexStringFromBytes:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 length] == 20)
  {
    v5 = [v3 bytes];
    if ([v3 length])
    {
      v6 = 0;
      do
      {
        [v4 appendFormat:@"%02X", *(v5 + v6++)];
      }

      while (v6 < [v3 length]);
    }
  }

  if ([v4 length])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithString:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFNetworkSignature allocWithZone:?]];
  [(CWFNetworkSignature *)v4 setIPv4NetworkSignature:self->_IPv4NetworkSignature];
  [(CWFNetworkSignature *)v4 setIPv6NetworkSignature:self->_IPv6NetworkSignature];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  IPv4NetworkSignature = self->_IPv4NetworkSignature;
  v5 = a3;
  [v5 encodeObject:IPv4NetworkSignature forKey:@"_IPv4NetworkSignature"];
  [v5 encodeObject:self->_IPv6NetworkSignature forKey:@"_IPv6NetworkSignature"];
}

- (CWFNetworkSignature)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_IPv4NetworkSignature"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_IPv6NetworkSignature"];

  v7 = [(CWFNetworkSignature *)self initWithIPv4NetworkSignature:v5 IPv6NetworkSignature:v6];
  return v7;
}

@end