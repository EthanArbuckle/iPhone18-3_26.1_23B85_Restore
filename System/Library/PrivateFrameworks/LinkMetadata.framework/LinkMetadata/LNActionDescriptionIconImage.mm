@interface LNActionDescriptionIconImage
- (BOOL)isEqual:(id)equal;
- (LNActionDescriptionIconImage)initWithCoder:(id)coder;
- (LNActionDescriptionIconImage)initWithImage:(id)image;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionDescriptionIconImage

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      image = [(LNActionDescriptionIconImage *)self image];
      image2 = [(LNActionDescriptionIconImage *)v6 image];
      v9 = image;
      v10 = image2;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  image = [(LNActionDescriptionIconImage *)self image];
  v3 = [image hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  image = [(LNActionDescriptionIconImage *)self image];
  v7 = [v3 stringWithFormat:@"<%@: %p, image: %@>", v5, self, image];

  return v7;
}

- (LNActionDescriptionIconImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];

  if (v5)
  {
    self = [(LNActionDescriptionIconImage *)self initWithImage:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  image = [(LNActionDescriptionIconImage *)self image];
  [coderCopy encodeObject:image forKey:@"image"];
}

- (LNActionDescriptionIconImage)initWithImage:(id)image
{
  imageCopy = image;
  if (!imageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionDescriptionIcon.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"image"}];
  }

  v12.receiver = self;
  v12.super_class = LNActionDescriptionIconImage;
  v7 = [(LNActionDescriptionIconImage *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_image, image);
    v9 = v8;
  }

  return v8;
}

@end