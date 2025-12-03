@interface BBImage
+ (BBImage)imageWithData:(id)data;
+ (BBImage)imageWithName:(id)name inBundle:(id)bundle;
+ (BBImage)imageWithName:(id)name inBundlePath:(id)path;
- (BBImage)initWithCoder:(id)coder;
- (BBImage)initWithData:(id)data path:(id)path name:(id)name bundlePath:(id)bundlePath;
- (BOOL)isEqual:(id)equal;
- (id)awakeAfterUsingCoder:(id)coder;
- (id)replacementObjectForCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBImage

+ (BBImage)imageWithData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(self);
  [v5 setData:dataCopy];

  return v5;
}

+ (BBImage)imageWithName:(id)name inBundle:(id)bundle
{
  nameCopy = name;
  bundlePath = [bundle bundlePath];
  v8 = [self imageWithName:nameCopy inBundlePath:bundlePath];

  return v8;
}

+ (BBImage)imageWithName:(id)name inBundlePath:(id)path
{
  pathCopy = path;
  nameCopy = name;
  v8 = objc_alloc_init(self);
  [v8 setName:nameCopy];

  [v8 setBundlePath:pathCopy];

  return v8;
}

- (BBImage)initWithData:(id)data path:(id)path name:(id)name bundlePath:(id)bundlePath
{
  dataCopy = data;
  pathCopy = path;
  nameCopy = name;
  bundlePathCopy = bundlePath;
  v14 = [(BBImage *)self init];
  v15 = v14;
  if (v14)
  {
    [(BBImage *)v14 setData:dataCopy];
    [(BBImage *)v15 setPath:pathCopy];
    [(BBImage *)v15 setName:nameCopy];
    [(BBImage *)v15 setBundlePath:bundlePathCopy];
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      name = [(BBImage *)self name];
      name2 = [(BBImage *)v5 name];
      if (BSEqualObjects())
      {
        bundlePath = [(BBImage *)self bundlePath];
        bundlePath2 = [(BBImage *)v5 bundlePath];
        if (BSEqualObjects())
        {
          path = [(BBImage *)self path];
          path2 = [(BBImage *)v5 path];
          if (BSEqualObjects())
          {
            data = [(BBImage *)self data];
            data2 = [(BBImage *)v5 data];
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
  data = [(BBImage *)self data];
  v4 = [data hash];
  path = [(BBImage *)self path];
  v6 = [path hash] ^ v4;
  name = [(BBImage *)self name];
  v8 = [name hash];
  bundlePath = [(BBImage *)self bundlePath];
  v10 = v8 ^ [bundlePath hash];

  return v6 ^ v10;
}

- (BBImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imagePath"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];

  v9 = [(BBImage *)self initWithData:v5 path:v6 name:v7 bundlePath:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(BBImage *)self data];
  [coderCopy encodeObject:data forKey:@"imageData"];

  path = [(BBImage *)self path];
  [coderCopy encodeObject:path forKey:@"imagePath"];

  name = [(BBImage *)self name];
  [coderCopy encodeObject:name forKey:@"imageName"];

  bundlePath = [(BBImage *)self bundlePath];
  [coderCopy encodeObject:bundlePath forKey:@"bundlePath"];
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