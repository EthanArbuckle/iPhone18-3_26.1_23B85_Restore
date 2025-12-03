@interface ISIcnsIcon
- (ISIcnsIcon)initWithCoder:(id)coder;
- (ISIcnsIcon)initWithContentOfURL:(id)l;
- (ISIcnsIcon)initWithIcns:(id)icns;
- (ISIcnsIcon)initWithIcnsData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISIcnsIcon

- (ISIcnsIcon)initWithContentOfURL:(id)l
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

- (ISIcnsIcon)initWithIcns:(id)icns
{
  icnsCopy = icns;
  v6 = [MEMORY[0x1E696AFB0] _IF_UUIDWithData:0];
  v11.receiver = self;
  v11.super_class = ISIcnsIcon;
  v7 = [(ISConcreteIcon *)&v11 initWithDigest:v6];
  v8 = v7;
  if (v7)
  {
    icnsData = v7->_icnsData;
    v7->_icnsData = 0;

    objc_storeStrong(&v8->_internalICNS, icns);
  }

  return v8;
}

- (ISIcnsIcon)initWithIcnsData:(id)data
{
  dataCopy = data;
  v5 = [MEMORY[0x1E696AFB0] _IF_UUIDWithData:dataCopy];
  v10.receiver = self;
  v10.super_class = ISIcnsIcon;
  v6 = [(ISConcreteIcon *)&v10 initWithDigest:v5];
  if (v6)
  {
    v7 = [dataCopy copy];
    icnsData = v6->_icnsData;
    v6->_icnsData = v7;
  }

  return v6;
}

- (ISIcnsIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ISIcnsIcon;
  v5 = [(ISConcreteIcon *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icnsData"];
    icnsData = v5->_icnsData;
    v5->_icnsData = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ISIcnsIcon;
  coderCopy = coder;
  [(ISConcreteIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_icnsData forKey:{@"icnsData", v5.receiver, v5.super_class}];
}

@end