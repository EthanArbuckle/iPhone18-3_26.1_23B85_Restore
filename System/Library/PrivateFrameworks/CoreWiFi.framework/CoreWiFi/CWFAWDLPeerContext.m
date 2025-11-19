@interface CWFAWDLPeerContext
+ (id)AWDLPeerContextWithMACAddress:(id)a3 interfaceName:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAWDLPeerContext:(id)a3;
- (CWFAWDLPeerContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFAWDLPeerContext

+ (id)AWDLPeerContextWithMACAddress:(id)a3 interfaceName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(CWFAWDLPeerContext);
  [(CWFAWDLPeerContext *)v7 setMACAddress:v6];

  [(CWFAWDLPeerContext *)v7 setInterfaceName:v5];

  return v7;
}

- (BOOL)isEqualToAWDLPeerContext:(id)a3
{
  v6 = a3;
  MACAddress = self->_MACAddress;
  v8 = [v6 MACAddress];
  if (MACAddress != v8)
  {
    if (!self->_MACAddress || ([v6 MACAddress], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_14;
    }

    v3 = v9;
    v10 = self->_MACAddress;
    v4 = [v6 MACAddress];
    if (![(NSString *)v10 isEqual:v4])
    {
      v11 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  interfaceName = self->_interfaceName;
  v13 = [v6 interfaceName];
  v11 = interfaceName == v13;
  if (v11 || !self->_interfaceName)
  {
    goto LABEL_11;
  }

  v14 = [v6 interfaceName];
  if (v14)
  {
    v15 = v14;
    v16 = self->_interfaceName;
    v17 = [v6 interfaceName];
    v11 = [(NSString *)v16 isEqual:v17];

LABEL_11:
    goto LABEL_12;
  }

  v11 = 0;
LABEL_12:
  if (MACAddress != v8)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFAWDLPeerContext *)self isEqualToAWDLPeerContext:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFAWDLPeerContext allocWithZone:?]];
  [(CWFAWDLPeerContext *)v4 setMACAddress:self->_MACAddress];
  [(CWFAWDLPeerContext *)v4 setInterfaceName:self->_interfaceName];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  MACAddress = self->_MACAddress;
  v5 = a3;
  [v5 encodeObject:MACAddress forKey:@"_MACAddress"];
  [v5 encodeObject:self->_interfaceName forKey:@"_interfaceName"];
}

- (CWFAWDLPeerContext)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CWFAWDLPeerContext;
  v5 = [(CWFAWDLPeerContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_MACAddress"];
    MACAddress = v5->_MACAddress;
    v5->_MACAddress = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v8;
  }

  return v5;
}

@end