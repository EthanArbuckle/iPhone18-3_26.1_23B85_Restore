@interface JTLocalAssetMediaItem
- (BOOL)isEqual:(id)a3;
- (JTLocalAssetMediaItem)initWithInfo:(id)a3 delegate:(id)a4;
- (JTLocalAssetMediaItem)initWithURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)info;
- (unint64_t)hash;
- (void)dealloc;
- (void)setLocalFileURL:(id)a3;
@end

@implementation JTLocalAssetMediaItem

- (JTLocalAssetMediaItem)initWithURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = JTLocalAssetMediaItem;
  v5 = [(JFXMediaItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(JTLocalAssetMediaItem *)v5 setLocalFileURL:v4];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = JTLocalAssetMediaItem;
  v5 = [(JFXMediaItem *)&v11 copyWithZone:?];
  localFileURL = self->_localFileURL;
  if (localFileURL)
  {
    localFileURL = [(NSURL *)localFileURL copyWithZone:a3];
  }

  v7 = v5[8];
  v5[8] = localFileURL;

  localFileName = self->_localFileName;
  if (localFileName)
  {
    localFileName = [(NSString *)localFileName copyWithZone:a3];
  }

  v9 = v5[7];
  v5[7] = localFileName;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(JTLocalAssetMediaItem *)self localFileURL];

      if (v6)
      {
        v7 = [(JTLocalAssetMediaItem *)self localFileURL];
        v8 = [v7 path];
        v9 = [(JTLocalAssetMediaItem *)v5 localFileURL];
        v10 = [v9 path];
        LOBYTE(v11) = [v8 isEqualToString:v10];
      }

      else
      {
        v11 = [(JTLocalAssetMediaItem *)self localFileName];

        if (!v11)
        {
LABEL_10:

          goto LABEL_11;
        }

        v7 = [(JTLocalAssetMediaItem *)self localFileName];
        v8 = [(JTLocalAssetMediaItem *)v5 localFileName];
        LOBYTE(v11) = [v7 isEqual:v8];
      }

      goto LABEL_10;
    }

    LOBYTE(v11) = 0;
  }

LABEL_11:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(JTLocalAssetMediaItem *)self localFileURL];
  if (v3)
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

- (void)setLocalFileURL:(id)a3
{
  objc_storeStrong(&self->_localFileURL, a3);
  v7 = a3;
  v5 = [v7 lastPathComponent];
  localFileName = self->_localFileName;
  self->_localFileName = v5;
}

- (JTLocalAssetMediaItem)initWithInfo:(id)a3 delegate:(id)a4
{
  v10.receiver = self;
  v10.super_class = JTLocalAssetMediaItem;
  v5 = a3;
  v6 = [(JFXMediaItem *)&v10 initWithInfo:v5 delegate:a4];
  v7 = [v5 objectForKey:{kMediaItemLocalFileNameKey, v10.receiver, v10.super_class}];

  localFileName = v6->_localFileName;
  v6->_localFileName = v7;

  return v6;
}

- (id)info
{
  v3 = MEMORY[0x277CBEB38];
  v8.receiver = self;
  v8.super_class = JTLocalAssetMediaItem;
  v4 = [(JFXMediaItem *)&v8 info];
  v5 = [v3 dictionaryWithDictionary:v4];

  localFileName = self->_localFileName;
  if (localFileName)
  {
    [v5 setObject:localFileName forKey:kMediaItemLocalFileNameKey];
  }

  return v5;
}

@end