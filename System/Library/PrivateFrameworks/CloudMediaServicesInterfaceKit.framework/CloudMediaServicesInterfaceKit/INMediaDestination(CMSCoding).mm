@interface INMediaDestination(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation INMediaDestination(CMSCoding)

- (id)cmsCoded
{
  v16[2] = *MEMORY[0x277D85DE8];
  mediaDestinationType = [self mediaDestinationType];
  if (mediaDestinationType == 2)
  {
    v15[0] = @"mediaDestinationType";
    v15[1] = @"playlistName";
    v16[0] = @"playlist";
    playlistName = [self playlistName];
    v4 = playlistName;
    v5 = &stru_2856A7BB0;
    if (playlistName)
    {
      v5 = playlistName;
    }

    v16[1] = v5;
    v6 = MEMORY[0x277CBEAC0];
    v7 = v16;
    v8 = v15;
    v9 = 2;
  }

  else
  {
    v13 = @"mediaDestinationType";
    v4 = INMediaDestinationTypeToString(mediaDestinationType);
    v14 = v4;
    v6 = MEMORY[0x277CBEAC0];
    v7 = &v14;
    v8 = &v13;
    v9 = 1;
  }

  v10 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 cmsOptionalStringForKey:@"mediaDestinationType"];
    v6 = INMediaDestinationTypeFromString(v5);

    if (v6 == 1)
    {
      libraryDestination = [MEMORY[0x277CD3DA8] libraryDestination];
    }

    else
    {
      v8 = [v4 cmsOptionalStringForKey:@"playlistName"];
      v9 = v8;
      v10 = &stru_2856A7BB0;
      if (v8)
      {
        v10 = v8;
      }

      v11 = v10;

      libraryDestination = [MEMORY[0x277CD3DA8] playlistDestinationWithName:v11];
    }
  }

  else
  {
    libraryDestination = 0;
  }

  return libraryDestination;
}

@end