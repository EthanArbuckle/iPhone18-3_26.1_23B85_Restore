@interface NNNewsDaemonHeadlineHeadlineWrapper
- (NNNewsDaemonHeadlineHeadlineWrapper)initWithHeadline:(id)headline assetFileURLsByRemoteURL:(id)l;
- (NSString)sync_NewsURLString;
- (NSString)sync_excerpt;
- (NSString)sync_identifier;
- (NSString)sync_publisherIdentifier;
- (NSString)sync_publisherName;
- (NSString)sync_title;
@end

@implementation NNNewsDaemonHeadlineHeadlineWrapper

- (NNNewsDaemonHeadlineHeadlineWrapper)initWithHeadline:(id)headline assetFileURLsByRemoteURL:(id)l
{
  headlineCopy = headline;
  lCopy = l;
  v24.receiver = self;
  v24.super_class = NNNewsDaemonHeadlineHeadlineWrapper;
  v9 = [(NNNewsDaemonHeadlineHeadlineWrapper *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_headline, headline);
    thumbnailRemoteURL = [headlineCopy thumbnailRemoteURL];
    if (thumbnailRemoteURL)
    {
      v12 = [lCopy objectForKeyedSubscript:thumbnailRemoteURL];
      v13 = v12;
      if (v12)
      {
        path = [v12 path];
        v15 = [NSData dataWithContentsOfFile:path];
        thumbnailData = v10->_thumbnailData;
        v10->_thumbnailData = v15;
      }
    }

    sourceNameImageRemoteURL = [headlineCopy sourceNameImageRemoteURL];
    if (sourceNameImageRemoteURL)
    {
      v18 = [lCopy objectForKeyedSubscript:sourceNameImageRemoteURL];
      v19 = v18;
      if (v18)
      {
        path2 = [v18 path];
        v21 = [NSData dataWithContentsOfFile:path2];
        publisherLogoData = v10->_publisherLogoData;
        v10->_publisherLogoData = v21;
      }
    }
  }

  return v10;
}

- (NSString)sync_identifier
{
  headline = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
  identifier = [headline identifier];

  return identifier;
}

- (NSString)sync_title
{
  headline = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
  titleCompact = [headline titleCompact];
  v5 = titleCompact;
  if (titleCompact)
  {
    title = titleCompact;
  }

  else
  {
    headline2 = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
    title = [headline2 title];
  }

  return title;
}

- (NSString)sync_excerpt
{
  headline = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
  shortExcerpt = [headline shortExcerpt];

  return shortExcerpt;
}

- (NSString)sync_publisherName
{
  headline = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
  compactSourceName = [headline compactSourceName];
  v5 = compactSourceName;
  if (compactSourceName)
  {
    sourceName = compactSourceName;
  }

  else
  {
    headline2 = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
    sourceName = [headline2 sourceName];
  }

  return sourceName;
}

- (NSString)sync_publisherIdentifier
{
  headline = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
  personalizationMetadata = [headline personalizationMetadata];
  publisherID = [personalizationMetadata publisherID];

  return publisherID;
}

- (NSString)sync_NewsURLString
{
  headline = [(NNNewsDaemonHeadlineHeadlineWrapper *)self headline];
  newsURL = [headline NewsURL];
  absoluteString = [newsURL absoluteString];

  return absoluteString;
}

@end