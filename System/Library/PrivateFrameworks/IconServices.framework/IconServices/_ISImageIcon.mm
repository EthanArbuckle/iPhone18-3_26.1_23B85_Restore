@interface _ISImageIcon
- (_ISImageIcon)initWithCoder:(id)coder;
- (id)initImage:(id)image;
- (id)makeResourceProvider;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ISImageIcon

- (id)initImage:(id)image
{
  data = [image data];
  v5 = [MEMORY[0x1E696AFB0] _IF_UUIDWithData:data];
  v9.receiver = self;
  v9.super_class = _ISImageIcon;
  v6 = [(ISConcreteIcon *)&v9 initWithDigest:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageData, data);
  }

  return v7;
}

- (_ISImageIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _ISImageIcon;
  v5 = [(ISConcreteIcon *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _ISImageIcon;
  coderCopy = coder;
  [(ISConcreteIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_imageData forKey:{@"imageData", v5.receiver, v5.super_class}];
}

- (id)makeResourceProvider
{
  v3 = objc_alloc(MEMORY[0x1E69A8988]);
  imageData = self->_imageData;
  digest = [(ISConcreteIcon *)self digest];
  v6 = [v3 initWithData:imageData uuid:digest];

  v7 = [[ISResourceProvider alloc] initWithResource:v6 templateResource:0];

  return v7;
}

@end