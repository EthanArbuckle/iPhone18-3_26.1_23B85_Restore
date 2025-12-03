@interface FCRecipeMetadata
- (BOOL)isPaid;
- (FCRecipeMetadata)initWithDictionary:(id)dictionary identifier:(id)identifier;
- (NSDate)publishDate;
- (NSString)shortExcerpt;
- (NSString)sourceChannelTagID;
- (NSString)thumbnailAccentColor;
- (NSString)thumbnailBackgroundColor;
- (NSString)thumbnailExtraLarge;
- (NSString)thumbnailLarge;
- (NSString)thumbnailMedium;
- (NSString)thumbnailPrimaryColor;
- (NSString)thumbnailSmall;
- (NSString)thumbnailTextColor;
- (NSString)title;
- (int64_t)thumbnailExtraLargeMetadata;
- (int64_t)thumbnailFocalFrame;
- (int64_t)thumbnailLargeMetadata;
- (int64_t)thumbnailMediumMetadata;
- (int64_t)thumbnailSmallMetadata;
@end

@implementation FCRecipeMetadata

- (FCRecipeMetadata)initWithDictionary:(id)dictionary identifier:(id)identifier
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = FCRecipeMetadata;
  v8 = [(FCRecipeMetadata *)&v12 init];
  if (v8)
  {
    v9 = [dictionaryCopy copy];
    dictionary = v8->_dictionary;
    v8->_dictionary = v9;

    objc_storeStrong(&v8->_identifier, identifier);
  }

  return v8;
}

- (BOOL)isPaid
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"isPaid"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSString)shortExcerpt
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"shortExcerpt"];

  return v3;
}

- (NSString)sourceChannelTagID
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"sourceChannelID"];

  return v3;
}

- (NSString)thumbnailAccentColor
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailAccentColor"];

  return v3;
}

- (NSString)thumbnailBackgroundColor
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailBackgroundColor"];

  return v3;
}

- (NSString)thumbnailTextColor
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailTextColor"];

  return v3;
}

- (NSString)thumbnailPrimaryColor
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailPrimaryColor"];

  return v3;
}

- (NSString)thumbnailExtraLarge
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailExtraLarge"];

  return v3;
}

- (int64_t)thumbnailExtraLargeMetadata
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailExtraLargeMetadata"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (NSString)thumbnailLarge
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailLarge"];

  return v3;
}

- (int64_t)thumbnailLargeMetadata
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailLargeMetadata"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (NSString)thumbnailMedium
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailMedium"];

  return v3;
}

- (int64_t)thumbnailMediumMetadata
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailMediumMetadata"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (NSString)thumbnailSmall
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailSmall"];

  return v3;
}

- (int64_t)thumbnailSmallMetadata
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailSmallMetadata"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (int64_t)thumbnailFocalFrame
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"thumbnailFocalFrame"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (NSString)title
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"title"];

  return v3;
}

- (NSDate)publishDate
{
  dictionary = [(FCRecipeMetadata *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"publishDate"];
  longLongValue = [v3 longLongValue];

  v5 = MEMORY[0x1E695DF00];

  return [v5 fc_dateWithMillisecondTimeIntervalSince1970:longLongValue];
}

@end