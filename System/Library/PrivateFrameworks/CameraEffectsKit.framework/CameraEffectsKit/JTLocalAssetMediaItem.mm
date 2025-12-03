@interface JTLocalAssetMediaItem
- (BOOL)isEqual:(id)equal;
- (JTLocalAssetMediaItem)initWithInfo:(id)info delegate:(id)delegate;
- (JTLocalAssetMediaItem)initWithURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)info;
- (unint64_t)hash;
- (void)dealloc;
- (void)setLocalFileURL:(id)l;
@end

@implementation JTLocalAssetMediaItem

- (JTLocalAssetMediaItem)initWithURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = JTLocalAssetMediaItem;
  v5 = [(JFXMediaItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(JTLocalAssetMediaItem *)v5 setLocalFileURL:lCopy];
  }

  return v6;
}

- (void)dealloc
{
  localFileURL = self->_localFileURL;
  self->_localFileURL = 0;

  localFileName = self->_localFileName;
  self->_localFileName = 0;

  v5.receiver = self;
  v5.super_class = JTLocalAssetMediaItem;
  [(JFXMediaItem *)&v5 dealloc];
}

- (id)description
{
  if (self->_localFileURL)
  {
    v8.receiver = self;
    v8.super_class = JTLocalAssetMediaItem;
    v3 = [(JFXMediaItem *)&v8 description];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"\r\turl: %@", self->_localFileURL];
    v5 = [v3 stringByAppendingString:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = JTLocalAssetMediaItem;
    v5 = [(JFXMediaItem *)&v7 description];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = JTLocalAssetMediaItem;
  v5 = [(JFXMediaItem *)&v11 copyWithZone:?];
  localFileURL = self->_localFileURL;
  if (localFileURL)
  {
    localFileURL = [(NSURL *)localFileURL copyWithZone:zone];
  }

  v7 = v5[8];
  v5[8] = localFileURL;

  localFileName = self->_localFileName;
  if (localFileName)
  {
    localFileName = [(NSString *)localFileName copyWithZone:zone];
  }

  v9 = v5[7];
  v5[7] = localFileName;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(localFileName) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      localFileURL = [(JTLocalAssetMediaItem *)self localFileURL];

      if (localFileURL)
      {
        localFileURL2 = [(JTLocalAssetMediaItem *)self localFileURL];
        path = [localFileURL2 path];
        localFileURL3 = [(JTLocalAssetMediaItem *)v5 localFileURL];
        path2 = [localFileURL3 path];
        LOBYTE(localFileName) = [path isEqualToString:path2];
      }

      else
      {
        localFileName = [(JTLocalAssetMediaItem *)self localFileName];

        if (!localFileName)
        {
LABEL_10:

          goto LABEL_11;
        }

        localFileURL2 = [(JTLocalAssetMediaItem *)self localFileName];
        path = [(JTLocalAssetMediaItem *)v5 localFileName];
        LOBYTE(localFileName) = [localFileURL2 isEqual:path];
      }

      goto LABEL_10;
    }

    LOBYTE(localFileName) = 0;
  }

LABEL_11:

  return localFileName;
}

- (unint64_t)hash
{
  localFileURL = [(JTLocalAssetMediaItem *)self localFileURL];
  if (localFileURL)
  {
    [(JTLocalAssetMediaItem *)self localFileURL];
  }

  else
  {
    [(JTLocalAssetMediaItem *)self localFileName];
  }
  v4 = ;
  v5 = [v4 hash];

  return v5;
}

- (void)setLocalFileURL:(id)l
{
  objc_storeStrong(&self->_localFileURL, l);
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  localFileName = self->_localFileName;
  self->_localFileName = lastPathComponent;
}

- (JTLocalAssetMediaItem)initWithInfo:(id)info delegate:(id)delegate
{
  v10.receiver = self;
  v10.super_class = JTLocalAssetMediaItem;
  infoCopy = info;
  v6 = [(JFXMediaItem *)&v10 initWithInfo:infoCopy delegate:delegate];
  v7 = [infoCopy objectForKey:{kMediaItemLocalFileNameKey, v10.receiver, v10.super_class}];

  localFileName = v6->_localFileName;
  v6->_localFileName = v7;

  return v6;
}

- (id)info
{
  v3 = MEMORY[0x277CBEB38];
  v8.receiver = self;
  v8.super_class = JTLocalAssetMediaItem;
  info = [(JFXMediaItem *)&v8 info];
  v5 = [v3 dictionaryWithDictionary:info];

  localFileName = self->_localFileName;
  if (localFileName)
  {
    [v5 setObject:localFileName forKey:kMediaItemLocalFileNameKey];
  }

  return v5;
}

@end