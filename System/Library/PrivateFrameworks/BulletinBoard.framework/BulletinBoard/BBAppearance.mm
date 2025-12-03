@interface BBAppearance
+ (BBAppearance)appearanceWithTitle:(id)title;
- (BBAppearance)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)awakeAfterUsingCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)replacementObjectForCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBAppearance

- (unint64_t)hash
{
  title = [(BBAppearance *)self title];
  v4 = [title hash];
  image = [(BBAppearance *)self image];
  v6 = [image hash] ^ v4;
  style = [(BBAppearance *)self style];

  return v6 ^ style;
}

+ (BBAppearance)appearanceWithTitle:(id)title
{
  titleCopy = title;
  v5 = objc_alloc_init(self);
  [v5 setTitle:titleCopy];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      title = [(BBAppearance *)self title];
      title2 = [(BBAppearance *)v5 title];
      if (BSEqualObjects())
      {
        image = [(BBAppearance *)self image];
        image2 = [(BBAppearance *)v5 image];
        if (BSEqualObjects())
        {
          style = [(BBAppearance *)self style];
          v11 = style == [(BBAppearance *)v5 style];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  title = [(BBAppearance *)self title];
  [v4 setTitle:title];

  image = [(BBAppearance *)self image];
  [v4 setImage:image];

  [v4 setStyle:{-[BBAppearance style](self, "style")}];
  return v4;
}

- (BBAppearance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BBAppearance;
  v5 = [(BBAppearance *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(BBAppearance *)v5 setTitle:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    [(BBAppearance *)v5 setImage:v7];

    -[BBAppearance setStyle:](v5, "setStyle:", [coderCopy decodeIntegerForKey:@"style"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(BBAppearance *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  image = [(BBAppearance *)self image];
  [coderCopy encodeObject:image forKey:@"image"];

  [coderCopy encodeInteger:-[BBAppearance style](self forKey:{"style"), @"style"}];
}

- (id)replacementObjectForCoder:(id)coder
{
  bb_objectCache = [self bb_objectCache];
  v5 = [bb_objectCache cacheObject:self];

  return v5;
}

- (id)awakeAfterUsingCoder:(id)coder
{
  bb_objectCache = [self bb_objectCache];
  v5 = [bb_objectCache cacheObject:self];

  return v5;
}

@end