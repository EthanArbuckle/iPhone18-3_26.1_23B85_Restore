@interface PKApplicationMessageIcon
+ (CGSize)maximumSizeForStyle:(int64_t)style;
+ (id)createWithImage:(id)image style:(int64_t)style;
- (BOOL)isEqual:(id)equal;
- (PKApplicationMessageIcon)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplicationMessageIcon

+ (CGSize)maximumSizeForStyle:(int64_t)style
{
  if (style)
  {
    if (style == 1)
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

+ (id)createWithImage:(id)image style:(int64_t)style
{
  imageCopy = image;
  v7 = [PKApplicationMessageIcon alloc];
  v8 = imageCopy;
  v9 = v8;
  if (v7 && v8)
  {
    v14.receiver = v7;
    v14.super_class = PKApplicationMessageIcon;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, image);
      v11[2] = style;
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

- (PKApplicationMessageIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKApplicationMessageIcon;
  v5 = [(PKApplicationMessageIcon *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v6;

    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  image = self->_image;
  coderCopy = coder;
  [coderCopy encodeObject:image forKey:@"image"];
  [coderCopy encodeInteger:self->_style forKey:@"style"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = 0;
    if (equalCopy && (isKindOfClass & 1) != 0)
    {
      v7 = equalCopy;
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