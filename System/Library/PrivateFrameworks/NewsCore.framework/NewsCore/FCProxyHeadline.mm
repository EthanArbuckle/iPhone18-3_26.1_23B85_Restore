@interface FCProxyHeadline
- (BOOL)hasThumbnail;
- (CGRect)thumbnailFocalFrame;
- (FCColor)thumbnailImageAccentColor;
- (FCColor)thumbnailImageBackgroundColor;
- (FCColor)thumbnailImagePrimaryColor;
- (FCColor)thumbnailImageTextColor;
- (FCHeadlineThumbnail)thumbnail;
- (FCHeadlineThumbnail)thumbnailHQ;
- (FCHeadlineThumbnail)thumbnailLQ;
- (FCHeadlineThumbnail)thumbnailMedium;
- (FCHeadlineThumbnail)thumbnailUltraHQ;
- (FCProxyHeadline)initWithHeadline:(id)headline overrideMetadata:(id)metadata configuration:(id)configuration;
- (NSDate)displayDate;
- (NSDate)publishDate;
- (NSString)description;
- (NSString)shortExcerpt;
- (NSString)title;
- (NSURL)routeURL;
@end

@implementation FCProxyHeadline

- (BOOL)hasThumbnail
{
  if (self->_hasOverriddenThumbnail)
  {
    formatThumbnail = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    hasThumbnail = [formatThumbnail hasThumbnail];

    return hasThumbnail;
  }

  else
  {
    headline = self->_headline;

    return [(FCHeadlineProviding *)headline hasThumbnail];
  }
}

- (NSString)title
{
  title = [(FCHeadlineMetadata *)self->_overrideMetadata title];
  v4 = title;
  if (title)
  {
    title2 = title;
  }

  else
  {
    title2 = [(FCHeadlineProviding *)self->_headline title];
  }

  v6 = title2;

  return v6;
}

- (FCHeadlineThumbnail)thumbnailUltraHQ
{
  if (self->_hasOverriddenThumbnail)
  {
    formatThumbnail = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    ultraQualityImage = [formatThumbnail ultraQualityImage];
    thumbnail = [ultraQualityImage thumbnail];
  }

  else
  {
    thumbnail = [(FCHeadlineProviding *)self->_headline thumbnailUltraHQ];
  }

  return thumbnail;
}

- (NSURL)routeURL
{
  routeURL = [(FCHeadlineMetadata *)self->_overrideMetadata routeURL];
  v4 = routeURL;
  if (routeURL)
  {
    routeURL2 = routeURL;
  }

  else
  {
    routeURL2 = [(FCHeadlineProviding *)self->_headline routeURL];
  }

  v6 = routeURL2;

  return v6;
}

- (FCProxyHeadline)initWithHeadline:(id)headline overrideMetadata:(id)metadata configuration:(id)configuration
{
  headlineCopy = headline;
  metadataCopy = metadata;
  configurationCopy = configuration;
  if (headlineCopy)
  {
    objc_storeStrong(&self->_headline, headline);
    objc_storeStrong(&self->_overrideMetadata, metadata);
    self->_overrideStoryType = [headlineCopy storyType];
    storyStyle = [headlineCopy storyStyle];
    overrideStoryStyle = self->_overrideStoryStyle;
    self->_overrideStoryStyle = storyStyle;

    if (objc_opt_respondsToSelector())
    {
      formatThumbnail = [metadataCopy formatThumbnail];
      self->_hasOverriddenThumbnail = formatThumbnail != 0;
    }

    else
    {
      self->_hasOverriddenThumbnail = 0;
    }

    storyType = [metadataCopy storyType];
    v17 = [storyType length];

    if (configurationCopy && v17)
    {
      displayDate = [metadataCopy displayDate];
      v19 = displayDate;
      if (displayDate)
      {
        publishDate = displayDate;
      }

      else
      {
        publishDate = [headlineCopy publishDate];
      }

      v21 = publishDate;

      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:v21];
      v24 = v23;
      topStoriesConfig = [configurationCopy topStoriesConfig];
      storyTypeTimeout = [topStoriesConfig storyTypeTimeout];

      if (v24 >= storyTypeTimeout)
      {
        self->_overrideStoryType = 0;
        topStoriesConfig2 = self->_overrideStoryStyle;
        self->_overrideStoryStyle = 0;
      }

      else
      {
        storyType2 = [metadataCopy storyType];
        v28 = PBArticleStoryTypeFromString(storyType2);
        if ((v28 - 1) >= 5)
        {
          v29 = 0;
        }

        else
        {
          v29 = v28;
        }

        self->_overrideStoryType = v29;

        topStoriesConfig2 = [configurationCopy topStoriesConfig];
        styleConfigurations = [topStoriesConfig2 styleConfigurations];
        v32 = [MEMORY[0x1E696AD98] numberWithInt:self->_overrideStoryType];
        v33 = [styleConfigurations objectForKey:v32];
        v34 = self->_overrideStoryStyle;
        self->_overrideStoryStyle = v33;
      }
    }

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(FCHeadlineProviding *)self->_headline identifier];
  title = [(FCHeadlineProviding *)self->_headline title];
  v6 = [v3 stringWithFormat:@"id: %@, title: %@", identifier, title];

  return v6;
}

- (NSDate)displayDate
{
  displayDate = [(FCHeadlineMetadata *)self->_overrideMetadata displayDate];
  v4 = displayDate;
  if (displayDate)
  {
    displayDate2 = displayDate;
  }

  else
  {
    displayDate2 = [(FCHeadlineProviding *)self->_headline displayDate];
  }

  v6 = displayDate2;

  return v6;
}

- (NSDate)publishDate
{
  displayDate = [(FCHeadlineMetadata *)self->_overrideMetadata displayDate];
  v4 = displayDate;
  if (displayDate)
  {
    publishDate = displayDate;
  }

  else
  {
    publishDate = [(FCHeadlineProviding *)self->_headline publishDate];
  }

  v6 = publishDate;

  return v6;
}

- (NSString)shortExcerpt
{
  shortExcerpt = [(FCHeadlineMetadata *)self->_overrideMetadata shortExcerpt];
  v4 = shortExcerpt;
  if (shortExcerpt)
  {
    shortExcerpt2 = shortExcerpt;
  }

  else
  {
    shortExcerpt2 = [(FCHeadlineProviding *)self->_headline shortExcerpt];
  }

  v6 = shortExcerpt2;

  return v6;
}

- (CGRect)thumbnailFocalFrame
{
  if (self->_hasOverriddenThumbnail)
  {
    formatThumbnail = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    [formatThumbnail focalFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    [(FCHeadlineProviding *)self->_headline thumbnailFocalFrame];
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
  }

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (FCHeadlineThumbnail)thumbnailLQ
{
  if (self->_hasOverriddenThumbnail)
  {
    formatThumbnail = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    lowQualityImage = [formatThumbnail lowQualityImage];
    thumbnail = [lowQualityImage thumbnail];
  }

  else
  {
    thumbnail = [(FCHeadlineProviding *)self->_headline thumbnailLQ];
  }

  return thumbnail;
}

- (FCHeadlineThumbnail)thumbnail
{
  if (self->_hasOverriddenThumbnail)
  {
    formatThumbnail = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    defaultQualityImage = [formatThumbnail defaultQualityImage];
    thumbnail = [defaultQualityImage thumbnail];
  }

  else
  {
    thumbnail = [(FCHeadlineProviding *)self->_headline thumbnail];
  }

  return thumbnail;
}

- (FCHeadlineThumbnail)thumbnailMedium
{
  if (self->_hasOverriddenThumbnail)
  {
    formatThumbnail = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    mediumQualityImage = [formatThumbnail mediumQualityImage];
    thumbnail = [mediumQualityImage thumbnail];
  }

  else
  {
    thumbnail = [(FCHeadlineProviding *)self->_headline thumbnailMedium];
  }

  return thumbnail;
}

- (FCHeadlineThumbnail)thumbnailHQ
{
  if (self->_hasOverriddenThumbnail)
  {
    formatThumbnail = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    highQualityImage = [formatThumbnail highQualityImage];
    thumbnail = [highQualityImage thumbnail];
  }

  else
  {
    thumbnail = [(FCHeadlineProviding *)self->_headline thumbnailHQ];
  }

  return thumbnail;
}

- (FCColor)thumbnailImagePrimaryColor
{
  if (self->_hasOverriddenThumbnail)
  {
    formatThumbnail = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    primaryColor = [formatThumbnail primaryColor];
  }

  else
  {
    primaryColor = [(FCHeadlineProviding *)self->_headline thumbnailImagePrimaryColor];
  }

  return primaryColor;
}

- (FCColor)thumbnailImageBackgroundColor
{
  if (self->_hasOverriddenThumbnail)
  {
    formatThumbnail = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    backgroundColor = [formatThumbnail backgroundColor];
  }

  else
  {
    backgroundColor = [(FCHeadlineProviding *)self->_headline thumbnailImageBackgroundColor];
  }

  return backgroundColor;
}

- (FCColor)thumbnailImageTextColor
{
  if (self->_hasOverriddenThumbnail)
  {
    formatThumbnail = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    textColor = [formatThumbnail textColor];
  }

  else
  {
    textColor = [(FCHeadlineProviding *)self->_headline thumbnailImageTextColor];
  }

  return textColor;
}

- (FCColor)thumbnailImageAccentColor
{
  if (self->_hasOverriddenThumbnail)
  {
    formatThumbnail = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    accentColor = [formatThumbnail accentColor];
  }

  else
  {
    accentColor = [(FCHeadlineProviding *)self->_headline thumbnailImageAccentColor];
  }

  return accentColor;
}

@end