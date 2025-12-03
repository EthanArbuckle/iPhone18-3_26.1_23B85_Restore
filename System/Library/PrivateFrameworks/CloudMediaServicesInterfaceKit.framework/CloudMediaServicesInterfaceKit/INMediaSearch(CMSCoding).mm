@interface INMediaSearch(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation INMediaSearch(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 cmsOptionalStringForKey:@"mediaType"];
    v21 = INMediaItemTypeFromString(v5);

    v6 = [v4 cmsOptionalStringForKey:@"sortOrder"];
    v7 = INMediaSortOrderFromString(v6);

    v8 = [v4 cmsOptionalStringForKey:@"mediaName"];
    v9 = [v4 cmsOptionalStringForKey:@"artistName"];
    v10 = [v4 cmsOptionalStringForKey:@"albumName"];
    v11 = [v4 cmsOptionalArrayOfClass:objc_opt_class() forKey:@"genreNames"];
    v12 = [v4 cmsOptionalArrayOfClass:objc_opt_class() forKey:@"moodNames"];
    v13 = MEMORY[0x277CD3B68];
    v14 = [v4 cmsOptionalDictionaryForKey:@"releaseDate"];
    v15 = [v13 instanceFromCMSCoded:v14];

    v16 = [v4 cmsOptionalStringForKey:@"reference"];
    v17 = INMediaReferenceFromString(v16);

    v18 = [v4 cmsOptionalStringForKey:@"mediaIdentifier"];
    v19 = [objc_alloc(MEMORY[0x277CD3DC8]) initWithMediaType:v21 sortOrder:v7 mediaName:v8 artistName:v9 albumName:v10 genreNames:v11 moodNames:v12 releaseDate:v15 reference:v17 mediaIdentifier:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)cmsCoded
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  v3 = INMediaItemTypeToString([self mediaType]);
  [v2 setObject:v3 forKey:@"mediaType"];

  v4 = INMediaSortOrderToString([self sortOrder]);
  [v2 setObject:v4 forKey:@"sortOrder"];

  mediaName = [self mediaName];
  [v2 cmsSetOptionalObject:mediaName forKey:@"mediaName"];

  artistName = [self artistName];
  [v2 cmsSetOptionalObject:artistName forKey:@"artistName"];

  albumName = [self albumName];
  [v2 cmsSetOptionalObject:albumName forKey:@"albumName"];

  genreNames = [self genreNames];
  [v2 cmsSetOptionalObject:genreNames forKey:@"genreNames"];

  moodNames = [self moodNames];
  [v2 cmsSetOptionalObject:moodNames forKey:@"moodNames"];

  releaseDate = [self releaseDate];
  [v2 cmsSetOptionalCodedObject:releaseDate forKey:@"releaseDate"];

  v11 = INMediaReferenceToString([self reference]);
  [v2 setObject:v11 forKey:@"reference"];

  mediaIdentifier = [self mediaIdentifier];
  [v2 cmsSetOptionalObject:mediaIdentifier forKey:@"mediaIdentifier"];

  return v2;
}

@end