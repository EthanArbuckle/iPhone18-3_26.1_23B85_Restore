@interface CMSNowPlayingInfo
+ (id)instanceFromCMSCoded:(id)a3;
+ (id)nowPlayingInfoFromDictionary:(id)a3;
@end

@implementation CMSNowPlayingInfo

+ (id)nowPlayingInfoFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() instanceFromCMSCoded:v3];

  return v4;
}

+ (id)instanceFromCMSCoded:(id)a3
{
  v3 = cmsSafeDictionary(a3);
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
    v12 = [v11 firstObject];
    [v4 setGenre:v12];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end