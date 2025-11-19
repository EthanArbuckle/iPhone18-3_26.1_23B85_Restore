@interface FCHeadline
+ (id)emptyHeadline;
+ (id)emptyHeadlineWithIdentifier:(id)a3;
- (BOOL)hasVideo;
- (BOOL)hasVideoStillImage;
- (BOOL)isBlockedExplicitContent;
- (BOOL)isCoread;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExplicitContent;
- (BOOL)isFromBlockedStorefront;
- (BOOL)isFullTrackAvailableToAll;
- (BOOL)isSportsHighlight;
- (CGRect)thumbnailFocalFrame;
- (FCHeadline)init;
- (NSString)description;
- (NSString)publisherID;
- (NSString)sourceChannelID;
- (NSString)sourceFeedID;
- (double)globalUserFeedback;
- (id)contentWithContext:(id)a3;
- (unint64_t)hash;
- (unint64_t)publishDateMilliseconds;
- (void)addSurfacedByArticleListID:(id)a3;
- (void)applyConditionalScore:(double)a3;
- (void)applyHeadlineMetadata:(id)a3 configuration:(id)a4;
- (void)enumerateTopicCohortsWithBlock:(id)a3;
- (void)enumerateTopicConversionStatsWithBlock:(id)a3;
- (void)markAsEvergreen;
- (void)overrideDisplayDate:(id)a3;
@end

@implementation FCHeadline

- (CGRect)thumbnailFocalFrame
{
  x = self->_thumbnailFocalFrame.origin.x;
  y = self->_thumbnailFocalFrame.origin.y;
  width = self->_thumbnailFocalFrame.size.width;
  height = self->_thumbnailFocalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)hasVideo
{
  v2 = [(FCHeadline *)self videoURL];
  v3 = v2 != 0;

  return v3;
}

- (FCHeadline)init
{
  v3.receiver = self;
  v3.super_class = FCHeadline;
  result = [(FCHeadline *)&v3 init];
  if (result)
  {
    result->_halfLife = 23400000;
  }

  return result;
}

- (NSString)sourceChannelID
{
  v2 = [(FCHeadline *)self sourceChannel];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (!a3 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(FCHeadline *)self identifier];
  v6 = [a3 identifier];

  return [(NSString *)v5 isEqualToString:v6];
}

- (unint64_t)hash
{
  v2 = [(FCHeadline *)self identifier];

  return [(NSString *)v2 hash];
}

+ (id)emptyHeadline
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];
  v4 = [FCHeadline emptyHeadlineWithIdentifier:v3];

  return v4;
}

+ (id)emptyHeadlineWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FCHeadline);
  [(FCHeadline *)v4 setIdentifier:v3];
  [(FCHeadline *)v4 setArticleID:v3];

  return v4;
}

- (id)contentWithContext:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 pptContext];
  v5 = [v4 isRunningPPT];

  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
      *buf = 136315906;
      v15 = "[FCHeadline contentWithContext:]";
      v16 = 2080;
      v17 = "FCHeadline.m";
      v18 = 1024;
      v19 = 186;
      v20 = 2114;
      v21 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCHeadline contentWithContext:]"];
    v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
    v13 = v12;

    objc_exception_throw(v12);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)isBlockedExplicitContent
{
  v3 = +[FCRestrictions sharedInstance];
  if ([v3 isExplicitContentAllowed])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(FCHeadline *)self primaryAudience];
    v4 = [v5 isEqualToString:@"MATURE"];
  }

  return v4;
}

- (BOOL)hasVideoStillImage
{
  v2 = [(FCHeadline *)self videoStillImage];
  v3 = v2 != 0;

  return v3;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = FCHeadline;
  v2 = [(FCHeadline *)&v4 description];

  return v2;
}

- (void)overrideDisplayDate:(id)a3
{
  v4 = a3;
  [(FCHeadline *)self setDisplayDate:v4];
  [(FCHeadline *)self setPublishDate:v4];
}

- (void)markAsEvergreen
{
  if (![(FCHeadline *)self isEvergreen])
  {
    [(FCHeadline *)self setIsEvergreen:1];
    if (NFInternalBuild())
    {
      v3 = [MEMORY[0x1E695E000] standardUserDefaults];
      v4 = [v3 BOOLForKey:@"newsfeed.content.highlight_evergreen_articles"];

      if (v4)
      {
        v6 = [(FCHeadline *)self title];
        v5 = [@"🌲" stringByAppendingString:v6];
        [(FCHeadline *)self setTitle:v5];
      }
    }
  }
}

- (void)applyConditionalScore:(double)a3
{
  [(FCHeadline *)self conditionalScore];
  if (v5 <= a3)
  {
    v5 = a3;
  }

  [(FCHeadline *)self setConditionalScore:v5];
}

- (void)addSurfacedByArticleListID:(id)a3
{
  v7 = a3;
  v4 = [(FCHeadline *)self surfacedByArticleListIDs];

  if (!v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    [(FCHeadline *)self setSurfacedByArticleListIDs:v5];
  }

  if ([v7 hasPrefix:@"LX"])
  {
    self->_isCoread = 1;
  }

  v6 = [(FCHeadline *)self surfacedByArticleListIDs];
  [v6 addObject:v7];
}

- (void)applyHeadlineMetadata:(id)a3 configuration:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v18 title];

    if (v7)
    {
      v8 = [v18 title];
      [(FCHeadline *)self overrideTitle:v8];
    }
  }

  v9 = [v18 displayDate];

  if (v9)
  {
    v10 = [v18 displayDate];
    [(FCHeadline *)self overrideDisplayDate:v10];
  }

  v11 = [v18 storyType];
  v12 = [v11 length];

  if (v6 && v12)
  {
    v13 = [v18 storyType];
    v14 = PBArticleStoryTypeFromString(v13);
    if (v14 - 1 >= 5)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    [(FCHeadline *)self assignStoryType:v15 withConfiguration:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = [v18 shortExcerpt];

    if (v16)
    {
      v17 = [v18 shortExcerpt];
      [(FCHeadline *)self overrideShortExcerpt:v17];
    }
  }
}

- (NSString)sourceFeedID
{
  v3 = [(FCHeadline *)self surfacedByChannelID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCHeadline *)self surfacedByTopicID];
  }

  v6 = v5;

  return v6;
}

- (NSString)publisherID
{
  v2 = [(FCHeadline *)self sourceChannel];
  v3 = [v2 identifier];

  return v3;
}

- (double)globalUserFeedback
{
  result = self->_globalUserFeedback;
  if (result < 0.0)
  {
    return 0.5;
  }

  return result;
}

- (unint64_t)publishDateMilliseconds
{
  v2 = [(FCHeadline *)self publishDate];
  v3 = [v2 fc_millisecondTimeIntervalSince1970];

  return v3;
}

- (BOOL)isFromBlockedStorefront
{
  v3 = +[FCRestrictions sharedInstance];
  v4 = +[FCAppleAccount sharedAccount];
  v5 = [v4 contentStoreFrontID];
  v6 = [(FCHeadline *)self allowedStorefrontIDs];
  v7 = [(FCHeadline *)self blockedStorefrontIDs];
  v8 = [v3 isContentBlockedInStorefrontID:v5 withAllowedStorefrontIDs:v6 blockedStorefrontIDs:v7];

  return v8;
}

- (BOOL)isExplicitContent
{
  v2 = [(FCHeadline *)self primaryAudience];
  v3 = [v2 isEqualToString:@"MATURE"];

  return v3;
}

- (BOOL)isSportsHighlight
{
  v3 = [(FCHeadline *)self sportsEventIDs];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(FCHeadline *)self videoType];
    v4 = [v5 fc_string:v6 isEqualToString:@"sports-highlight"];
  }

  return v4;
}

- (void)enumerateTopicCohortsWithBlock:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(FCHeadline *)self topics];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 tagID];
          v12 = [v10 cohorts];
          v4[2](v4, v11, v12);
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)enumerateTopicConversionStatsWithBlock:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(FCHeadline *)self topics];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 tagID];
          v12 = [v10 conversionStats];
          v4[2](v4, v11, v12);
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)isFullTrackAvailableToAll
{
  v2 = self;
  v3 = [(FCHeadline *)self narrativeTrack];
  v4 = [(FCHeadline *)v2 narrativeTrackSample];
  LOBYTE(v2) = v3 == v4;

  return v2;
}

- (BOOL)isCoread
{
  v2 = [(FCHeadline *)self surfacedByArticleListIDs];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 fc_containsObjectPassingTest:&__block_literal_global_35_1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end