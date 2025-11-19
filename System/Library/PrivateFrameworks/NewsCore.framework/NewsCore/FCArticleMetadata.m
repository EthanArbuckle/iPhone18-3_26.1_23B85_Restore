@interface FCArticleMetadata
- (BOOL)isPaid;
- (BOOL)isTreatedAsNew;
- (FCArticleMetadata)initWithDictionary:(id)a3;
- (FCArticleMetadata)initWithDictionary:(id)a3 identifier:(id)a4;
- (NSArray)sportsEventIDs;
- (NSDate)publishDate;
- (NSString)articleID;
- (NSString)contentURL;
- (NSString)shortExcerpt;
- (NSString)sourceChannelTagID;
- (NSString)storyType;
- (NSString)thumbnail;
- (NSString)thumbnailAccentColor;
- (NSString)thumbnailBackgroundColor;
- (NSString)thumbnailHQ;
- (NSString)thumbnailMedium;
- (NSString)thumbnailPrimaryColor;
- (NSString)thumbnailTextColor;
- (NSString)thumbnailUltraHQ;
- (NSString)title;
- (NSString)videoType;
- (NSString)videoURL;
- (NSURL)routeURL;
- (double)conditionalScore;
- (id)publisherID;
- (int64_t)contentType;
- (int64_t)thumbnailFocalFrame;
- (int64_t)thumbnailHQMetadata;
- (int64_t)thumbnailMediumMetadata;
- (int64_t)thumbnailMetadata;
- (int64_t)thumbnailUltraHQMetadata;
@end

@implementation FCArticleMetadata

- (FCArticleMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FCArticleMetadata;
  v5 = [(FCArticleMetadata *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v8 = [(FCArticleMetadata *)v5 dictionary];
    v9 = [v8 objectForKeyedSubscript:@"displayDate"];

    if (v9)
    {
      v10 = [MEMORY[0x1E695DF00] fc_dateFromStringWithISO8601Format:v9];
    }

    else
    {
      v10 = 0;
    }

    displayDate = v5->_displayDate;
    v5->_displayDate = v10;
  }

  return v5;
}

- (FCArticleMetadata)initWithDictionary:(id)a3 identifier:(id)a4
{
  v7 = a4;
  v8 = [(FCArticleMetadata *)self initWithDictionary:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a4);
  }

  return v9;
}

- (NSString)title
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"title"];

  return v3;
}

- (NSString)storyType
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"storyType"];

  return v3;
}

- (NSString)articleID
{
  v3 = [(FCArticleMetadata *)self dictionary];
  v4 = [v3 objectForKeyedSubscript:@"id"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(FCArticleMetadata *)self identifier];
  }

  v7 = v6;

  return v7;
}

- (NSString)shortExcerpt
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"shortExcerpt"];

  return v3;
}

- (NSString)thumbnailTextColor
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailTextColor"];

  return v3;
}

- (NSString)thumbnailBackgroundColor
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailBackgroundColor"];

  return v3;
}

- (NSString)sourceChannelTagID
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"sourceChannelTagID"];

  return v3;
}

- (NSString)thumbnailAccentColor
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailAccentColor"];

  return v3;
}

- (NSString)thumbnailPrimaryColor
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailPrimaryColor"];

  return v3;
}

- (BOOL)isPaid
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"isPaid"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSString)thumbnail
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnail"];

  return v3;
}

- (int64_t)thumbnailMetadata
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailMetadata"];
  v4 = [v3 longLongValue];

  return v4;
}

- (NSString)thumbnailMedium
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailMedium"];

  return v3;
}

- (int64_t)thumbnailMediumMetadata
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailMediumMetadata"];
  v4 = [v3 longLongValue];

  return v4;
}

- (NSString)thumbnailHQ
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailHQ"];

  return v3;
}

- (int64_t)thumbnailHQMetadata
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailHQMetadata"];
  v4 = [v3 longLongValue];

  return v4;
}

- (NSString)thumbnailUltraHQ
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailUltraHQ"];

  return v3;
}

- (int64_t)thumbnailUltraHQMetadata
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailUltraHQMetadata"];
  v4 = [v3 longLongValue];

  return v4;
}

- (int64_t)thumbnailFocalFrame
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailFocalFrame"];
  v4 = [v3 longLongValue];

  return v4;
}

- (NSDate)publishDate
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"publishDate"];
  v4 = [v3 longLongValue];

  v5 = MEMORY[0x1E695DF00];

  return [v5 fc_dateWithMillisecondTimeIntervalSince1970:v4];
}

- (BOOL)isTreatedAsNew
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"isTreatedAsNew"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)publisherID
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"sourceChannelTagID"];

  return v3;
}

- (int64_t)contentType
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"contentType"];
  v4 = FCArticleContentTypeFromString(v3);

  return v4;
}

- (NSString)contentURL
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"contentURL"];

  return v3;
}

- (NSString)videoURL
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"videoURL"];

  return v3;
}

- (NSString)videoType
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"videoType"];

  return v3;
}

- (NSArray)sportsEventIDs
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"sportsEventIDs"];

  return v3;
}

- (NSURL)routeURL
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"routeURL"];

  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)conditionalScore
{
  v2 = [(FCArticleMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"conditionalScore"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

@end