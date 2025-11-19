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
- (FCProxyHeadline)initWithHeadline:(id)a3 overrideMetadata:(id)a4 configuration:(id)a5;
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
    v3 = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    v4 = [v3 hasThumbnail];

    return v4;
  }

  else
  {
    headline = self->_headline;

    return [(FCHeadlineProviding *)headline hasThumbnail];
  }
}

- (NSString)title
{
  v3 = [(FCHeadlineMetadata *)self->_overrideMetadata title];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCHeadlineProviding *)self->_headline title];
  }

  v6 = v5;

  return v6;
}

- (FCHeadlineThumbnail)thumbnailUltraHQ
{
  if (self->_hasOverriddenThumbnail)
  {
    v2 = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    v3 = [v2 ultraQualityImage];
    v4 = [v3 thumbnail];
  }

  else
  {
    v4 = [(FCHeadlineProviding *)self->_headline thumbnailUltraHQ];
  }

  return v4;
}

- (NSURL)routeURL
{
  v3 = [(FCHeadlineMetadata *)self->_overrideMetadata routeURL];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCHeadlineProviding *)self->_headline routeURL];
  }

  v6 = v5;

  return v6;
}

- (FCProxyHeadline)initWithHeadline:(id)a3 overrideMetadata:(id)a4 configuration:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    objc_storeStrong(&self->_headline, a3);
    objc_storeStrong(&self->_overrideMetadata, a4);
    self->_overrideStoryType = [v9 storyType];
    v12 = [v9 storyStyle];
    overrideStoryStyle = self->_overrideStoryStyle;
    self->_overrideStoryStyle = v12;

    if (objc_opt_respondsToSelector())
    {
      v14 = [v10 formatThumbnail];
      self->_hasOverriddenThumbnail = v14 != 0;
    }

    else
    {
      self->_hasOverriddenThumbnail = 0;
    }

    v16 = [v10 storyType];
    v17 = [v16 length];

    if (v11 && v17)
    {
      v18 = [v10 displayDate];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = [v9 publishDate];
      }

      v21 = v20;

      v22 = [MEMORY[0x1E695DF00] date];
      [v22 timeIntervalSinceDate:v21];
      v24 = v23;
      v25 = [v11 topStoriesConfig];
      v26 = [v25 storyTypeTimeout];

      if (v24 >= v26)
      {
        self->_overrideStoryType = 0;
        v30 = self->_overrideStoryStyle;
        self->_overrideStoryStyle = 0;
      }

      else
      {
        v27 = [v10 storyType];
        v28 = PBArticleStoryTypeFromString(v27);
        if ((v28 - 1) >= 5)
        {
          v29 = 0;
        }

        else
        {
          v29 = v28;
        }

        self->_overrideStoryType = v29;

        v30 = [v11 topStoriesConfig];
        v31 = [v30 styleConfigurations];
        v32 = [MEMORY[0x1E696AD98] numberWithInt:self->_overrideStoryType];
        v33 = [v31 objectForKey:v32];
        v34 = self->_overrideStoryStyle;
        self->_overrideStoryStyle = v33;
      }
    }

    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FCHeadlineProviding *)self->_headline identifier];
  v5 = [(FCHeadlineProviding *)self->_headline title];
  v6 = [v3 stringWithFormat:@"id: %@, title: %@", v4, v5];

  return v6;
}

- (NSDate)displayDate
{
  v3 = [(FCHeadlineMetadata *)self->_overrideMetadata displayDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCHeadlineProviding *)self->_headline displayDate];
  }

  v6 = v5;

  return v6;
}

- (NSDate)publishDate
{
  v3 = [(FCHeadlineMetadata *)self->_overrideMetadata displayDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCHeadlineProviding *)self->_headline publishDate];
  }

  v6 = v5;

  return v6;
}

- (NSString)shortExcerpt
{
  v3 = [(FCHeadlineMetadata *)self->_overrideMetadata shortExcerpt];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCHeadlineProviding *)self->_headline shortExcerpt];
  }

  v6 = v5;

  return v6;
}

- (CGRect)thumbnailFocalFrame
{
  if (self->_hasOverriddenThumbnail)
  {
    v2 = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    [v2 focalFrame];
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
    v2 = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    v3 = [v2 lowQualityImage];
    v4 = [v3 thumbnail];
  }

  else
  {
    v4 = [(FCHeadlineProviding *)self->_headline thumbnailLQ];
  }

  return v4;
}

- (FCHeadlineThumbnail)thumbnail
{
  if (self->_hasOverriddenThumbnail)
  {
    v2 = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    v3 = [v2 defaultQualityImage];
    v4 = [v3 thumbnail];
  }

  else
  {
    v4 = [(FCHeadlineProviding *)self->_headline thumbnail];
  }

  return v4;
}

- (FCHeadlineThumbnail)thumbnailMedium
{
  if (self->_hasOverriddenThumbnail)
  {
    v2 = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    v3 = [v2 mediumQualityImage];
    v4 = [v3 thumbnail];
  }

  else
  {
    v4 = [(FCHeadlineProviding *)self->_headline thumbnailMedium];
  }

  return v4;
}

- (FCHeadlineThumbnail)thumbnailHQ
{
  if (self->_hasOverriddenThumbnail)
  {
    v2 = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    v3 = [v2 highQualityImage];
    v4 = [v3 thumbnail];
  }

  else
  {
    v4 = [(FCHeadlineProviding *)self->_headline thumbnailHQ];
  }

  return v4;
}

- (FCColor)thumbnailImagePrimaryColor
{
  if (self->_hasOverriddenThumbnail)
  {
    v2 = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    v3 = [v2 primaryColor];
  }

  else
  {
    v3 = [(FCHeadlineProviding *)self->_headline thumbnailImagePrimaryColor];
  }

  return v3;
}

- (FCColor)thumbnailImageBackgroundColor
{
  if (self->_hasOverriddenThumbnail)
  {
    v2 = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    v3 = [v2 backgroundColor];
  }

  else
  {
    v3 = [(FCHeadlineProviding *)self->_headline thumbnailImageBackgroundColor];
  }

  return v3;
}

- (FCColor)thumbnailImageTextColor
{
  if (self->_hasOverriddenThumbnail)
  {
    v2 = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    v3 = [v2 textColor];
  }

  else
  {
    v3 = [(FCHeadlineProviding *)self->_headline thumbnailImageTextColor];
  }

  return v3;
}

- (FCColor)thumbnailImageAccentColor
{
  if (self->_hasOverriddenThumbnail)
  {
    v2 = [(FCHeadlineMetadata *)self->_overrideMetadata formatThumbnail];
    v3 = [v2 accentColor];
  }

  else
  {
    v3 = [(FCHeadlineProviding *)self->_headline thumbnailImageAccentColor];
  }

  return v3;
}

@end