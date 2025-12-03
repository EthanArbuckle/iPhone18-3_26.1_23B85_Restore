@interface CMSNowPlayingInfo
+ (id)instanceFromCMSCoded:(id)coded;
+ (id)nowPlayingInfoFromDictionary:(id)dictionary;
@end

@implementation CMSNowPlayingInfo

+ (id)nowPlayingInfoFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_opt_class() instanceFromCMSCoded:dictionaryCopy];

  return v4;
}

+ (id)instanceFromCMSCoded:(id)coded
{
  v3 = cmsSafeDictionary(coded);
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v3 cmsOptionalStringForKey:@"albumName"];
    [v4 setAlbumName:v5];

    v6 = [v3 cmsOptionalStringForKey:@"artistName"];
    [v4 setArtistName:v6];

    v7 = [v3 cmsOptionalDictionaryForKey:@"artwork"];
    v8 = [v7 objectForKey:@"url"];
    [v4 setArtworkURLString:v8];

    v9 = [v3 cmsOptionalStringForKey:@"composerName"];
    [v4 setComposerName:v9];

    [v4 setDiscNumber:{objc_msgSend(v3, "cmsUnsignedForKey:withDefault:", @"discNumber", 0)}];
    [v4 setTrackNumber:{objc_msgSend(v3, "cmsUnsignedForKey:withDefault:", @"trackNumber", 0)}];
    v10 = [v3 cmsOptionalStringForKey:@"name"];
    [v4 setTitle:v10];

    v11 = [v3 cmsOptionalArrayOfClass:objc_opt_class() forKey:@"genreNames"];
    firstObject = [v11 firstObject];
    [v4 setGenre:firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end