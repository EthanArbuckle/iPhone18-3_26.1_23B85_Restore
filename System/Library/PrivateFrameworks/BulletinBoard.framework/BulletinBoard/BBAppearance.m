@interface BBAppearance
+ (BBAppearance)appearanceWithTitle:(id)a3;
- (BBAppearance)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)awakeAfterUsingCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)replacementObjectForCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBAppearance

- (unint64_t)hash
{
  v3 = [(BBAppearance *)self title];
  v4 = [v3 hash];
  v5 = [(BBAppearance *)self image];
  v6 = [v5 hash] ^ v4;
  v7 = [(BBAppearance *)self style];

  return v6 ^ v7;
}

+ (BBAppearance)appearanceWithTitle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setTitle:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(BBAppearance *)self title];
      v7 = [(BBAppearance *)v5 title];
      if (BSEqualObjects())
      {
        v8 = [(BBAppearance *)self image];
        v9 = [(BBAppearance *)v5 image];
        if (BSEqualObjects())
        {
          v10 = [(BBAppearance *)self style];
          v11 = v10 == [(BBAppearance *)v5 style];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(BBAppearance *)self title];
  [v4 setTitle:v5];

  v6 = [(BBAppearance *)self image];
  [v4 setImage:v6];

  [v4 setStyle:{-[BBAppearance style](self, "style")}];
  return v4;
}

- (BBAppearance)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BBAppearance;
  v5 = [(BBAppearance *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(BBAppearance *)v5 setTitle:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    [(BBAppearance *)v5 setImage:v7];

    -[BBAppearance setStyle:](v5, "setStyle:", [v4 decodeIntegerForKey:@"style"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(BBAppearance *)self title];
  [v6 encodeObject:v4 forKey:@"title"];

  v5 = [(BBAppearance *)self image];
  [v6 encodeObject:v5 forKey:@"image"];

  [v6 encodeInteger:-[BBAppearance style](self forKey:{"style"), @"style"}];
}

- (id)replacementObjectForCoder:(id)a3
{
  v4 = [self bb_objectCache];
  v5 = [v4 cacheObject:self];

  return v5;
}

- (id)awakeAfterUsingCoder:(id)a3
{
  v4 = [self bb_objectCache];
  v5 = [v4 cacheObject:self];

  return v5;
}

@end