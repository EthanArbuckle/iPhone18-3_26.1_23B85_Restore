@interface INPlayMediaIntent(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation INPlayMediaIntent(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  if (v3)
  {
    v4 = [v3 cmsOptionalArrayOfDecodedClass:objc_opt_class() forKey:@"mediaItems"];
    v5 = MEMORY[0x277CD3DB8];
    v6 = [v3 cmsOptionalDictionaryForKey:@"mediaContainer"];
    v7 = [v5 instanceFromCMSCoded:v6];

    v8 = [v3 cmsOptionalBoolForKey:@"playShuffled"];
    v9 = [v3 cmsOptionalStringForKey:@"playbackRepeatMode"];
    v10 = INPlaybackRepeatModeFromString(v9);

    v11 = [v3 cmsOptionalBoolForKey:@"resumePlayback"];
    v12 = [v3 cmsOptionalStringForKey:@"playbackQueueLocation"];
    v13 = INPlaybackQueueLocationFromString(v12);

    v14 = [v3 cmsOptionalNumberForKey:@"playbackSpeed"];
    v15 = MEMORY[0x277CD3DC8];
    v16 = [v3 cmsOptionalDictionaryForKey:@"mediaSearch"];
    v17 = [v15 instanceFromCMSCoded:v16];

    v18 = [objc_alloc(MEMORY[0x277CD3EC0]) initWithMediaItems:v4 mediaContainer:v7 playShuffled:v8 playbackRepeatMode:v10 resumePlayback:v11 playbackQueueLocation:v13 playbackSpeed:v14 mediaSearch:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)cmsCoded
{
  v12.receiver = self;
  v12.super_class = &off_2856B9CE0;
  v2 = objc_msgSendSuper2(&v12, sel_cmsCoded);
  [v2 setObject:@"PlayMediaIntent" forKey:@"class"];
  mediaItems = [self mediaItems];
  [v2 cmsSetOptionalCodedObject:mediaItems forKey:@"mediaItems"];

  mediaContainer = [self mediaContainer];
  [v2 cmsSetOptionalCodedObject:mediaContainer forKey:@"mediaContainer"];

  playShuffled = [self playShuffled];
  [v2 cmsSetOptionalObject:playShuffled forKey:@"playShuffled"];

  v6 = INPlaybackRepeatModeToString([self playbackRepeatMode]);
  [v2 setObject:v6 forKey:@"playbackRepeatMode"];

  resumePlayback = [self resumePlayback];
  [v2 cmsSetOptionalObject:resumePlayback forKey:@"resumePlayback"];

  v8 = INPlaybackQueueLocationToString([self playbackQueueLocation]);
  [v2 setObject:v8 forKey:@"playbackQueueLocation"];

  playbackSpeed = [self playbackSpeed];
  [v2 cmsSetOptionalObject:playbackSpeed forKey:@"playbackSpeed"];

  mediaSearch = [self mediaSearch];
  [v2 cmsSetOptionalCodedObject:mediaSearch forKey:@"mediaSearch"];

  return v2;
}

@end