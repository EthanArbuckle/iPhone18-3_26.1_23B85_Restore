@interface BBImage
+ (BBImage)imageWithData:(id)a3;
+ (BBImage)imageWithName:(id)a3 inBundle:(id)a4;
+ (BBImage)imageWithName:(id)a3 inBundlePath:(id)a4;
- (BBImage)initWithCoder:(id)a3;
- (BBImage)initWithData:(id)a3 path:(id)a4 name:(id)a5 bundlePath:(id)a6;
- (BOOL)isEqual:(id)a3;
- (id)awakeAfterUsingCoder:(id)a3;
- (id)replacementObjectForCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBImage

+ (BBImage)imageWithData:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setData:v4];

  return v5;
}

+ (BBImage)imageWithName:(id)a3 inBundle:(id)a4
{
  v6 = a3;
  v7 = [a4 bundlePath];
  v8 = [a1 imageWithName:v6 inBundlePath:v7];

  return v8;
}

+ (BBImage)imageWithName:(id)a3 inBundlePath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setName:v7];

  [v8 setBundlePath:v6];

  return v8;
}

- (BBImage)initWithData:(id)a3 path:(id)a4 name:(id)a5 bundlePath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(BBImage *)self init];
  v15 = v14;
  if (v14)
  {
    [(BBImage *)v14 setData:v10];
    [(BBImage *)v15 setPath:v11];
    [(BBImage *)v15 setName:v12];
    [(BBImage *)v15 setBundlePath:v13];
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(BBImage *)self name];
      v7 = [(BBImage *)v5 name];
      if (BSEqualObjects())
      {
        v8 = [(BBImage *)self bundlePath];
        v9 = [(BBImage *)v5 bundlePath];
        if (BSEqualObjects())
        {
          v10 = [(BBImage *)self path];
          v11 = [(BBImage *)v5 path];
          if (BSEqualObjects())
          {
            v15 = [(BBImage *)self data];
            v12 = [(BBImage *)v5 data];
            v13 = BSEqualObjects();
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(BBImage *)self data];
  v4 = [v3 hash];
  v5 = [(BBImage *)self path];
  v6 = [v5 hash] ^ v4;
  v7 = [(BBImage *)self name];
  v8 = [v7 hash];
  v9 = [(BBImage *)self bundlePath];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BBImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imagePath"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];

  v9 = [(BBImage *)self initWithData:v5 path:v6 name:v7 bundlePath:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BBImage *)self data];
  [v4 encodeObject:v5 forKey:@"imageData"];

  v6 = [(BBImage *)self path];
  [v4 encodeObject:v6 forKey:@"imagePath"];

  v7 = [(BBImage *)self name];
  [v4 encodeObject:v7 forKey:@"imageName"];

  v8 = [(BBImage *)self bundlePath];
  [v4 encodeObject:v8 forKey:@"bundlePath"];
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