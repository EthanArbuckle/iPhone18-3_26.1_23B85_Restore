@interface FCArticleMetadata
- (BOOL)isPaid;
- (BOOL)isTreatedAsNew;
- (FCArticleMetadata)initWithDictionary:(id)dictionary;
- (FCArticleMetadata)initWithDictionary:(id)dictionary identifier:(id)identifier;
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

- (FCArticleMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = FCArticleMetadata;
  v5 = [(FCArticleMetadata *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    dictionary = [(FCArticleMetadata *)v5 dictionary];
    v9 = [dictionary objectForKeyedSubscript:@"displayDate"];

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

- (FCArticleMetadata)initWithDictionary:(id)dictionary identifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = [(FCArticleMetadata *)self initWithDictionary:dictionary];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
  }

  return v9;
}

- (NSString)title
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"title"];

  return v3;
}

- (NSString)storyType
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"storyType"];

  return v3;
}

- (NSString)articleID
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v4 = [dictionary objectForKeyedSubscript:@"id"];
  v5 = v4;
  if (v4)
  {
    identifier = v4;
  }

  else
  {
    identifier = [(FCArticleMetadata *)self identifier];
  }

  v7 = identifier;

  return v7;
}

- (NSString)shortExcerpt
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"shortExcerpt"];

  return v3;
}

- (NSString)thumbnailTextColor
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailTextColor"];

  return v3;
}

- (NSString)thumbnailBackgroundColor
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailBackgroundColor"];

  return v3;
}

- (NSString)sourceChannelTagID
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"sourceChannelTagID"];

  return v3;
}

- (NSString)thumbnailAccentColor
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailAccentColor"];

  return v3;
}

- (NSString)thumbnailPrimaryColor
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailPrimaryColor"];

  return v3;
}

- (BOOL)isPaid
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"isPaid"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSString)thumbnail
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnail"];

  return v3;
}

- (int64_t)thumbnailMetadata
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailMetadata"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (NSString)thumbnailMedium
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailMedium"];

  return v3;
}

- (int64_t)thumbnailMediumMetadata
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailMediumMetadata"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (NSString)thumbnailHQ
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailHQ"];

  return v3;
}

- (int64_t)thumbnailHQMetadata
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailHQMetadata"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (NSString)thumbnailUltraHQ
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailUltraHQ"];

  return v3;
}

- (int64_t)thumbnailUltraHQMetadata
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailUltraHQMetadata"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (int64_t)thumbnailFocalFrame
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailFocalFrame"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (NSDate)publishDate
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"publishDate"];
  longLongValue = [v3 longLongValue];

  v5 = MEMORY[0x1E695DF00];

  return [v5 fc_dateWithMillisecondTimeIntervalSince1970:longLongValue];
}

- (BOOL)isTreatedAsNew
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"isTreatedAsNew"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)publisherID
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"sourceChannelTagID"];

  return v3;
}

- (int64_t)contentType
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"contentType"];
  v4 = FCArticleContentTypeFromString(v3);

  return v4;
}

- (NSString)contentURL
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"contentURL"];

  return v3;
}

- (NSString)videoURL
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"videoURL"];

  return v3;
}

- (NSString)videoType
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"videoType"];

  return v3;
}

- (NSArray)sportsEventIDs
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"sportsEventIDs"];

  return v3;
}

- (NSURL)routeURL
{
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"routeURL"];

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
  dictionary = [(FCArticleMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"conditionalScore"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

@end