@interface NSDictionary
@end

@implementation NSDictionary

void __146__NSDictionary_MNExtras___navigation_serverStringDictionaryForDistance_validDistance_waypoints_currentDestination_legIndex_spoken_useDisplayName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF90];
  v7 = a2;
  v8 = [v6 dictionary];
  if (*(a1 + 40) >= 0.0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v8 setObject:v9 forKey:@"{distance}"];
  }

  if (*(a1 + 48) >= 0.0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v8 setObject:v10 forKey:@"{valid_distance}"];
  }

  v16 = 0;
  if (*(a1 + 56) == 1)
  {
    [v5 navAnnouncementNameAndSubstituteType:&v16];
  }

  else
  {
    [v5 navDisplayNameWithSpecialContacts:0 substituteType:&v16];
  }
  v11 = ;
  if ([v11 length])
  {
    [v8 setObject:v11 forKey:@"{Name}"];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v16];
    [v8 setObject:v12 forKey:@"{Name}_source"];
  }

  if (*(a1 + 56))
  {
    v13 = [v5 navAnnouncementAddress];
  }

  else
  {
    if (*(a1 + 57))
    {
      [v5 navDisplayName];
    }

    else
    {
      [v5 navDisplayAddress];
    }
    v13 = ;
  }

  v14 = v13;
  if ([v13 length])
  {
    [v8 setObject:v14 forKey:@"{Address}"];
    [v8 setObject:&unk_1F4EE2AA0 forKey:@"{Address}_source"];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "waypointCategory")}];
  [v8 setObject:v15 forKey:@"{WaypointCategory}"];

  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

@end