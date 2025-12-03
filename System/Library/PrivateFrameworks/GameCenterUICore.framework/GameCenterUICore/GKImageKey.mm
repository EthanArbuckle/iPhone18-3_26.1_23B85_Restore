@interface GKImageKey
+ (id)fileNameWithIdentifierInImageSource:(id)source;
+ (id)keyForImageIdentifier:(id)identifier withImageSource:(id)source;
- (CGSize)size;
- (NSString)cacheKey;
- (NSString)filePath;
@end

@implementation GKImageKey

+ (id)fileNameWithIdentifierInImageSource:(id)source
{
  sourceCopy = source;
  name = [sourceCopy name];
  imageBrush = [sourceCopy imageBrush];

  if ([imageBrush conformsToProtocol:&unk_286191A68])
  {
    renderedImageIdentifier = [imageBrush renderedImageIdentifier];
    v7 = [name stringByAppendingFormat:@"-%@", renderedImageIdentifier];

    name = v7;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v10 = @"~iphone";
  if (userInterfaceIdiom == 1)
  {
    v10 = @"~ipad";
  }

  v11 = v10;
  [imageBrush scaleForInput:0];
  if (v12 >= 2.0)
  {
    [name stringByAppendingFormat:@"%@%@%@", @"@2x", v11, @".gkpix"];
  }

  else
  {
    [name stringByAppendingFormat:@"%@%@", v11, @".gkpix", v15];
  }
  v13 = ;

  return v13;
}

+ (id)keyForImageIdentifier:(id)identifier withImageSource:(id)source
{
  sourceCopy = source;
  identifierCopy = identifier;
  v8 = objc_alloc_init(GKImageKey);
  v9 = [self fileNameWithIdentifierInImageSource:sourceCopy];

  [(GKImageKey *)v8 setBasename:v9];
  [(GKImageKey *)v8 setImageID:identifierCopy];

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