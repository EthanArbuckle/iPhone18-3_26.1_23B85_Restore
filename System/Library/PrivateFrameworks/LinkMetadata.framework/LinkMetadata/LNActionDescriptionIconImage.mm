@interface LNActionDescriptionIconImage
- (BOOL)isEqual:(id)a3;
- (LNActionDescriptionIconImage)initWithCoder:(id)a3;
- (LNActionDescriptionIconImage)initWithImage:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionDescriptionIconImage

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNActionDescriptionIconImage *)self image];
      v8 = [(LNActionDescriptionIconImage *)v6 image];
      v9 = v7;
      v10 = v8;
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
  v2 = [(LNActionDescriptionIconImage *)self image];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNActionDescriptionIconImage *)self image];
  v7 = [v3 stringWithFormat:@"<%@: %p, image: %@>", v5, self, v6];

  return v7;
}

- (LNActionDescriptionIconImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];

  if (v5)
  {
    self = [(LNActionDescriptionIconImage *)self initWithImage:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNActionDescriptionIconImage *)self image];
  [v4 encodeObject:v5 forKey:@"image"];
}

- (LNActionDescriptionIconImage)initWithImage:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LNActionDescriptionIcon.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"image"}];
  }

  v12.receiver = self;
  v12.super_class = LNActionDescriptionIconImage;
  v7 = [(LNActionDescriptionIconImage *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_image, a3);
    v9 = v8;
  }

  return v8;
}

@end