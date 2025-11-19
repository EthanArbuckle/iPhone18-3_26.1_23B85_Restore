@interface PKApplicationMessageIcon
+ (CGSize)maximumSizeForStyle:(int64_t)a3;
+ (id)createWithImage:(id)a3 style:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (PKApplicationMessageIcon)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplicationMessageIcon

+ (CGSize)maximumSizeForStyle:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v3 = PKScreenSize();
      v4 = PKGetMaxPassWidthForScreenSize(v3);
      v5 = round(v4 / 375.0 * 236.0);
      v6 = 45.0 / v4;
      if (v4 == 0.0)
      {
        v6 = 1.0;
      }

      v7 = 45.0 / v5;
      if (v5 == 0.0)
      {
        v7 = 1.0;
      }

      if (fmin(v6, v7) != 1.0)
      {
        if (v6 >= v7)
        {
          v4 = v4 / v5 * 45.0;
          v5 = 45.0;
        }

        else
        {
          v8 = v5 / v4;
          v4 = 45.0;
          v5 = v8 * 45.0;
        }
      }
    }

    else
    {
      v4 = *MEMORY[0x1E695F060];
      v5 = *(MEMORY[0x1E695F060] + 8);
    }
  }

  else
  {
    v4 = 45.0;
    v5 = 45.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

+ (id)createWithImage:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = [PKApplicationMessageIcon alloc];
  v8 = v6;
  v9 = v8;
  if (v7 && v8)
  {
    v14.receiver = v7;
    v14.super_class = PKApplicationMessageIcon;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a3);
      v11[2] = a4;
    }

    v7 = v11;
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (PKApplicationMessageIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKApplicationMessageIcon;
  v5 = [(PKApplicationMessageIcon *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v6;

    v5->_style = [v4 decodeIntegerForKey:@"style"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  image = self->_image;
  v5 = a3;
  [v5 encodeObject:image forKey:@"image"];
  [v5 encodeInteger:self->_style forKey:@"style"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = 0;
    if (v4 && (isKindOfClass & 1) != 0)
    {
      v7 = v4;
      v8 = v7;
      if (self && v7->_style == self->_style)
      {
        image = self->_image;
        v10 = v8->_image;
        if (image && v10)
        {
          v6 = [(PKImageDescriptor *)image isEqual:?];
        }

        else
        {
          v6 = image == v10;
        }
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

@end