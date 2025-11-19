@interface NNNewsDaemonHeadlineHeadlineWrapper
- (NNNewsDaemonHeadlineHeadlineWrapper)initWithHeadline:(id)a3 assetFileURLsByRemoteURL:(id)a4;
- (NSString)sync_NewsURLString;
- (NSString)sync_excerpt;
- (NSString)sync_identifier;
- (NSString)sync_publisherIdentifier;
- (NSString)sync_publisherName;
- (NSString)sync_title;
@end

@implementation NNNewsDaemonHeadlineHeadlineWrapper

- (NNNewsDaemonHeadlineHeadlineWrapper)initWithHeadline:(id)a3 assetFileURLsByRemoteURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = NNNewsDaemonHeadlineHeadlineWrapper;
  v9 = [(NNNewsDaemonHeadlineHeadlineWrapper *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_headline, a3);
    v11 = [v7 thumbnailRemoteURL];
    if (v11)
    {
      v12 = [v8 objectForKeyedSubscript:v11];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 path];
        v15 = [NSData dataWithContentsOfFile:v14];
        thumbnailData = v10->_thumbnailData;
        v10->_thumbnailData = v15;
      }
    }

    v17 = [v7 sourceNameImageRemoteURL];
    if (v17)
    {
      v18 = [v8 objectForKeyedSubscript:v17];
      v19 = v18;
      if (v18)
      {
        v20 = [v18 path];
        v21 = [NSData dataWithContentsOfFile:v20];
        publisherLogoData = v10->_publisherLogoData;
        v10->_publisherLogoData = v21;
      }
    }
  }

  return v10;
}

- (NSString)sync_identifier
{
  v2 = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)sync_title
{
  v3 = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
  v4 = [v3 titleCompact];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
    v6 = [v7 title];
  }

  return v6;
}

- (NSString)sync_excerpt
{
  v2 = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
  v3 = [v2 shortExcerpt];

  return v3;
}

- (NSString)sync_publisherName
{
  v3 = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
  v4 = [v3 compactSourceName];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
    v6 = [v7 sourceName];
  }

  return v6;
}

- (NSString)sync_publisherIdentifier
{
  v2 = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
  v3 = [v2 personalizationMetadata];
  v4 = [v3 publisherID];

  return v4;
}

- (NSString)sync_NewsURLString
{
  v2 = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
  v3 = [v2 NewsURL];
  v4 = [v3 absoluteString];

  return v4;
}

@end