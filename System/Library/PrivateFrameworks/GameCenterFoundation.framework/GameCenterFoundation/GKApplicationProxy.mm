@interface GKApplicationProxy
+ (id)metadataForBundleURL:(id)a3;
- (BOOL)isGameCenterEnabled;
- (BOOL)isInstalled;
- (BOOL)isRestricted;
- (GKApplicationProxy)initWithBundleID:(id)a3;
- (GKApplicationProxy)initWithProxy:(id)a3;
- (NSBundle)bundle;
- (NSDate)purchaseDate;
- (NSDictionary)metadata;
- (NSNumber)adamID;
- (NSNumber)externalVersion;
@end

@implementation GKApplicationProxy

- (NSBundle)bundle
{
  if ([(LSApplicationProxy *)self->_lsProxy foundBackingBundle])
  {
    v3 = [(GKApplicationProxy *)self bundleURL];
    if (v3)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)externalVersion
{
  v2 = [(GKApplicationProxy *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"softwareVersionExternalIdentifier"];

  return v3;
}

- (NSNumber)adamID
{
  v2 = [(GKApplicationProxy *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"itemId"];

  return v3;
}

- (NSDictionary)metadata
{
  metadata = self->_metadata;
  if (!metadata)
  {
    v4 = [(LSApplicationProxy *)self->_lsProxy bundleURL];
    v5 = [v4 URLByDeletingLastPathComponent];
    v6 = [v5 URLByAppendingPathComponent:@"iTunesMetadata.plist"];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v6];
      v8 = self->_metadata;
      self->_metadata = v7;
    }

    metadata = self->_metadata;
  }

  return metadata;
}

- (GKApplicationProxy)initWithProxy:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKApplicationProxy;
  v5 = [(GKApplicationProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKApplicationProxy *)v5 setLsProxy:v4];
  }

  return v6;
}

- (GKApplicationProxy)initWithBundleID:(id)a3
{
  v4 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:a3];
  v5 = [(GKApplicationProxy *)self initWithProxy:v4];

  return v5;
}

+ (id)metadataForBundleURL:(id)a3
{
  v3 = [a3 URLByDeletingLastPathComponent];
  v4 = [v3 URLByAppendingPathComponent:@"iTunesMetadata.plist"];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDate)purchaseDate
{
  if (purchaseDate_onceToken != -1)
  {
    [GKApplicationProxy purchaseDate];
  }

  v3 = [(GKApplicationProxy *)self metadata];
  v4 = [v3 objectForKeyedSubscript:@"purchaseDate"];
  if (!v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"com.apple.iTunesStore.downloadInfo"];
    v4 = [v5 objectForKeyedSubscript:@"purchaseDate"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [purchaseDate_sDateFormatter dateFromString:v4];
    }

    else
    {
      v6 = 0;
    }

    v4 = v6;
  }

  return v4;
}

void __34__GKApplicationProxy_purchaseDate__block_invoke()
{
  v4 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = purchaseDate_sDateFormatter;
  purchaseDate_sDateFormatter = v0;

  [purchaseDate_sDateFormatter setLocale:v4];
  [purchaseDate_sDateFormatter setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"];
  v2 = purchaseDate_sDateFormatter;
  v3 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];
}

- (BOOL)isRestricted
{
  v2 = [(LSApplicationProxy *)self->_lsProxy appState];
  v3 = [v2 isRestricted];

  return v3;
}

- (BOOL)isGameCenterEnabled
{
  v2 = [(GKApplicationProxy *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"gameCenterEnabled"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isInstalled
{
  v3 = [(LSApplicationProxy *)self->_lsProxy foundBackingBundle];
  if (v3)
  {
    LOBYTE(v3) = [(LSApplicationProxy *)self->_lsProxy installType]== 0;
  }

  return v3;
}

@end