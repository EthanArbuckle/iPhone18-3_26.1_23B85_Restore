@interface CWFNetworkSignature
+ (id)createHexStringFromBytes:(id)bytes;
- (CWFNetworkSignature)initWithCoder:(id)coder;
- (CWFNetworkSignature)initWithIPv4NetworkSignature:(id)signature IPv6NetworkSignature:(id)networkSignature;
- (CWFNetworkSignature)initWithIPv4NetworkSignatureBytes:(id)bytes IPv6NetworkSignatureBytes:(id)signatureBytes;
- (CWFNetworkSignature)initWithNetworkSignatureWithString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFNetworkSignature

- (CWFNetworkSignature)initWithIPv4NetworkSignature:(id)signature IPv6NetworkSignature:(id)networkSignature
{
  signatureCopy = signature;
  networkSignatureCopy = networkSignature;
  v14.receiver = self;
  v14.super_class = CWFNetworkSignature;
  v9 = [(CWFNetworkSignature *)&v14 init];
  v10 = v9;
  if (v9)
  {
    if (signatureCopy | networkSignatureCopy)
    {
      objc_storeStrong(&v9->_IPv4NetworkSignature, signature);
      v11 = networkSignatureCopy;
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

- (CWFNetworkSignature)initWithNetworkSignatureWithString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (!stringCopy)
  {
    goto LABEL_7;
  }

  if (![stringCopy hasPrefix:@"IPv4"])
  {
    if ([v5 hasPrefix:@"IPv6"])
    {
      v6 = [(CWFNetworkSignature *)self initWithIPv6NetworkSignature:v5];
      goto LABEL_6;
    }

LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  v6 = [(CWFNetworkSignature *)self initWithIPv4NetworkSignature:v5];
LABEL_6:
  self = v6;
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (CWFNetworkSignature)initWithIPv4NetworkSignatureBytes:(id)bytes IPv6NetworkSignatureBytes:(id)signatureBytes
{
  bytesCopy = bytes;
  signatureBytesCopy = signatureBytes;
  if (bytesCopy && [bytesCopy length] == 20 || signatureBytesCopy && objc_msgSend(signatureBytesCopy, "length") == 20)
  {
    v8 = [CWFNetworkSignature createHexStringFromBytes:bytesCopy];
    v9 = [CWFNetworkSignature createHexStringFromBytes:signatureBytesCopy];
    self = [(CWFNetworkSignature *)self initWithIPv4NetworkSignature:v8 IPv6NetworkSignature:v9];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)createHexStringFromBytes:(id)bytes
{
  bytesCopy = bytes;
  v4 = objc_opt_new();
  if ([bytesCopy length] == 20)
  {
    bytes = [bytesCopy bytes];
    if ([bytesCopy length])
    {
      v6 = 0;
      do
      {
        [v4 appendFormat:@"%02X", *(bytes + v6++)];
      }

      while (v6 < [bytesCopy length]);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFNetworkSignature allocWithZone:?]];
  [(CWFNetworkSignature *)v4 setIPv4NetworkSignature:self->_IPv4NetworkSignature];
  [(CWFNetworkSignature *)v4 setIPv6NetworkSignature:self->_IPv6NetworkSignature];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  IPv4NetworkSignature = self->_IPv4NetworkSignature;
  coderCopy = coder;
  [coderCopy encodeObject:IPv4NetworkSignature forKey:@"_IPv4NetworkSignature"];
  [coderCopy encodeObject:self->_IPv6NetworkSignature forKey:@"_IPv6NetworkSignature"];
}

- (CWFNetworkSignature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_IPv4NetworkSignature"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_IPv6NetworkSignature"];

  v7 = [(CWFNetworkSignature *)self initWithIPv4NetworkSignature:v5 IPv6NetworkSignature:v6];
  return v7;
}

@end