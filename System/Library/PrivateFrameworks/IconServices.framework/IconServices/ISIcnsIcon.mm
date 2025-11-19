@interface ISIcnsIcon
- (ISIcnsIcon)initWithCoder:(id)a3;
- (ISIcnsIcon)initWithContentOfURL:(id)a3;
- (ISIcnsIcon)initWithIcns:(id)a3;
- (ISIcnsIcon)initWithIcnsData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISIcnsIcon

- (ISIcnsIcon)initWithContentOfURL:(id)a3
{
  v4 = [MEMORY[0x1E696AFB0] _IF_UUIDWithData:0];
  v9.receiver = self;
  v9.super_class = ISIcnsIcon;
  v5 = [(ISConcreteIcon *)&v9 initWithDigest:v4];
  v6 = v5;
  if (v5)
  {
    icnsData = v5->_icnsData;
    v5->_icnsData = 0;
  }

  return v6;
}

- (ISIcnsIcon)initWithIcns:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AFB0] _IF_UUIDWithData:0];
  v11.receiver = self;
  v11.super_class = ISIcnsIcon;
  v7 = [(ISConcreteIcon *)&v11 initWithDigest:v6];
  v8 = v7;
  if (v7)
  {
    icnsData = v7->_icnsData;
    v7->_icnsData = 0;

    objc_storeStrong(&v8->_internalICNS, a3);
  }

  return v8;
}

- (ISIcnsIcon)initWithIcnsData:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] _IF_UUIDWithData:v4];
  v10.receiver = self;
  v10.super_class = ISIcnsIcon;
  v6 = [(ISConcreteIcon *)&v10 initWithDigest:v5];
  if (v6)
  {
    v7 = [v4 copy];
    icnsData = v6->_icnsData;
    v6->_icnsData = v7;
  }

  return v6;
}

- (ISIcnsIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ISIcnsIcon;
  v5 = [(ISConcreteIcon *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icnsData"];
    icnsData = v5->_icnsData;
    v5->_icnsData = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ISIcnsIcon;
  v4 = a3;
  [(ISConcreteIcon *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_icnsData forKey:{@"icnsData", v5.receiver, v5.super_class}];
}

@end