@interface GKImageKey
+ (id)fileNameWithIdentifierInImageSource:(id)a3;
+ (id)keyForImageIdentifier:(id)a3 withImageSource:(id)a4;
- (CGSize)size;
- (NSString)cacheKey;
- (NSString)filePath;
@end

@implementation GKImageKey

+ (id)fileNameWithIdentifierInImageSource:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v3 imageBrush];

  if ([v5 conformsToProtocol:&unk_286191A68])
  {
    v6 = [v5 renderedImageIdentifier];
    v7 = [v4 stringByAppendingFormat:@"-%@", v6];

    v4 = v7;
  }

  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = @"~iphone";
  if (v9 == 1)
  {
    v10 = @"~ipad";
  }

  v11 = v10;
  [v5 scaleForInput:0];
  if (v12 >= 2.0)
  {
    [v4 stringByAppendingFormat:@"%@%@%@", @"@2x", v11, @".gkpix"];
  }

  else
  {
    [v4 stringByAppendingFormat:@"%@%@", v11, @".gkpix", v15];
  }
  v13 = ;

  return v13;
}

+ (id)keyForImageIdentifier:(id)a3 withImageSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(GKImageKey);
  v9 = [a1 fileNameWithIdentifierInImageSource:v6];

  [(GKImageKey *)v8 setBasename:v9];
  [(GKImageKey *)v8 setImageID:v7];

  return v8;
}

- (NSString)filePath
{
  filePath = self->_filePath;
  if (!filePath)
  {
    v4 = [objc_opt_class() cacheDirectoryForImageID:self->_imageID];
    v5 = [v4 stringByAppendingPathComponent:self->_basename];
    v6 = self->_filePath;
    self->_filePath = v5;

    filePath = self->_filePath;
  }

  return filePath;
}

- (NSString)cacheKey
{
  cacheKey = self->_cacheKey;
  if (!cacheKey)
  {
    v4 = [(NSString *)self->_imageID stringByAppendingString:self->_basename];
    v5 = self->_cacheKey;
    self->_cacheKey = v4;

    cacheKey = self->_cacheKey;
  }

  return cacheKey;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end