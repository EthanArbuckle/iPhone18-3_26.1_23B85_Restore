@interface FCRecipeMetadata
- (BOOL)isPaid;
- (FCRecipeMetadata)initWithDictionary:(id)a3 identifier:(id)a4;
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

- (FCRecipeMetadata)initWithDictionary:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = FCRecipeMetadata;
  v8 = [(FCRecipeMetadata *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    dictionary = v8->_dictionary;
    v8->_dictionary = v9;

    objc_storeStrong(&v8->_identifier, a4);
  }

  return v8;
}

- (BOOL)isPaid
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"isPaid"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSString)shortExcerpt
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"shortExcerpt"];

  return v3;
}

- (NSString)sourceChannelTagID
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"sourceChannelID"];

  return v3;
}

- (NSString)thumbnailAccentColor
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailAccentColor"];

  return v3;
}

- (NSString)thumbnailBackgroundColor
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailBackgroundColor"];

  return v3;
}

- (NSString)thumbnailTextColor
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailTextColor"];

  return v3;
}

- (NSString)thumbnailPrimaryColor
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailPrimaryColor"];

  return v3;
}

- (NSString)thumbnailExtraLarge
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailExtraLarge"];

  return v3;
}

- (int64_t)thumbnailExtraLargeMetadata
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailExtraLargeMetadata"];
  v4 = [v3 longLongValue];

  return v4;
}

- (NSString)thumbnailLarge
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailLarge"];

  return v3;
}

- (int64_t)thumbnailLargeMetadata
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailLargeMetadata"];
  v4 = [v3 longLongValue];

  return v4;
}

- (NSString)thumbnailMedium
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailMedium"];

  return v3;
}

- (int64_t)thumbnailMediumMetadata
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailMediumMetadata"];
  v4 = [v3 longLongValue];

  return v4;
}

- (NSString)thumbnailSmall
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailSmall"];

  return v3;
}

- (int64_t)thumbnailSmallMetadata
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailSmallMetadata"];
  v4 = [v3 longLongValue];

  return v4;
}

- (int64_t)thumbnailFocalFrame
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"thumbnailFocalFrame"];
  v4 = [v3 longLongValue];

  return v4;
}

- (NSString)title
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"title"];

  return v3;
}

- (NSDate)publishDate
{
  v2 = [(FCRecipeMetadata *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"publishDate"];
  v4 = [v3 longLongValue];

  v5 = MEMORY[0x1E695DF00];

  return [v5 fc_dateWithMillisecondTimeIntervalSince1970:v4];
}

@end