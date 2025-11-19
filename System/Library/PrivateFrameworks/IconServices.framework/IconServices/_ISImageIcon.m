@interface _ISImageIcon
- (_ISImageIcon)initWithCoder:(id)a3;
- (id)initImage:(id)a3;
- (id)makeResourceProvider;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ISImageIcon

- (id)initImage:(id)a3
{
  v4 = [a3 data];
  v5 = [MEMORY[0x1E696AFB0] _IF_UUIDWithData:v4];
  v9.receiver = self;
  v9.super_class = _ISImageIcon;
  v6 = [(ISConcreteIcon *)&v9 initWithDigest:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageData, v4);
  }

  return v7;
}

- (_ISImageIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _ISImageIcon;
  v5 = [(ISConcreteIcon *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _ISImageIcon;
  v4 = a3;
  [(ISConcreteIcon *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_imageData forKey:{@"imageData", v5.receiver, v5.super_class}];
}

- (id)makeResourceProvider
{
  v3 = objc_alloc(MEMORY[0x1E69A8988]);
  imageData = self->_imageData;
  v5 = [(ISConcreteIcon *)self digest];
  v6 = [v3 initWithData:imageData uuid:v5];

  v7 = [[ISResourceProvider alloc] initWithResource:v6 templateResource:0];

  return v7;
}

@end