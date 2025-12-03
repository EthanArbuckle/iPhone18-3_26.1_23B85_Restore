@interface CWFAWDLPeerContext
+ (id)AWDLPeerContextWithMACAddress:(id)address interfaceName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAWDLPeerContext:(id)context;
- (CWFAWDLPeerContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFAWDLPeerContext

+ (id)AWDLPeerContextWithMACAddress:(id)address interfaceName:(id)name
{
  nameCopy = name;
  addressCopy = address;
  v7 = objc_alloc_init(CWFAWDLPeerContext);
  [(CWFAWDLPeerContext *)v7 setMACAddress:addressCopy];

  [(CWFAWDLPeerContext *)v7 setInterfaceName:nameCopy];

  return v7;
}

- (BOOL)isEqualToAWDLPeerContext:(id)context
{
  contextCopy = context;
  MACAddress = self->_MACAddress;
  mACAddress = [contextCopy MACAddress];
  if (MACAddress != mACAddress)
  {
    if (!self->_MACAddress || ([contextCopy MACAddress], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_14;
    }

    v3 = v9;
    v10 = self->_MACAddress;
    mACAddress2 = [contextCopy MACAddress];
    if (![(NSString *)v10 isEqual:mACAddress2])
    {
      v11 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  interfaceName = self->_interfaceName;
  interfaceName = [contextCopy interfaceName];
  v11 = interfaceName == interfaceName;
  if (v11 || !self->_interfaceName)
  {
    goto LABEL_11;
  }

  interfaceName2 = [contextCopy interfaceName];
  if (interfaceName2)
  {
    v15 = interfaceName2;
    v16 = self->_interfaceName;
    interfaceName3 = [contextCopy interfaceName];
    v11 = [(NSString *)v16 isEqual:interfaceName3];

LABEL_11:
    goto LABEL_12;
  }

  v11 = 0;
LABEL_12:
  if (MACAddress != mACAddress)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFAWDLPeerContext *)self isEqualToAWDLPeerContext:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFAWDLPeerContext allocWithZone:?]];
  [(CWFAWDLPeerContext *)v4 setMACAddress:self->_MACAddress];
  [(CWFAWDLPeerContext *)v4 setInterfaceName:self->_interfaceName];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  MACAddress = self->_MACAddress;
  coderCopy = coder;
  [coderCopy encodeObject:MACAddress forKey:@"_MACAddress"];
  [coderCopy encodeObject:self->_interfaceName forKey:@"_interfaceName"];
}

- (CWFAWDLPeerContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CWFAWDLPeerContext;
  v5 = [(CWFAWDLPeerContext *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_MACAddress"];
    MACAddress = v5->_MACAddress;
    v5->_MACAddress = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v8;
  }

  return v5;
}

@end