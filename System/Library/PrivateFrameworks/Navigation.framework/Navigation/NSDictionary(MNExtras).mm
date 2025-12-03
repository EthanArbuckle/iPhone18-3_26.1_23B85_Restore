@interface NSDictionary(MNExtras)
+ (id)_navigation_serverStringDictionaryForDistance:()MNExtras validDistance:destination:spoken:useDisplayName:;
+ (id)_navigation_serverStringDictionaryForDistance:()MNExtras validDistance:waypoints:currentDestination:legIndex:spoken:useDisplayName:;
+ (id)_navigation_serverStringDictionaryForMapItem:()MNExtras;
+ (id)_navigation_stringTokensForGenericCombinationsToken:()MNExtras waypoints:isSpokenString:;
+ (void)_navigation_stringTokensForDirectionsError:()MNExtras waypoints:;
@end

@implementation NSDictionary(MNExtras)

+ (id)_navigation_serverStringDictionaryForMapItem:()MNExtras
{
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  geoAddress = [v3 geoAddress];
  hasStructuredAddress = [geoAddress hasStructuredAddress];

  v6 = &stru_1F4EB6B70;
  thoroughfare = &stru_1F4EB6B70;
  fullThoroughfare = &stru_1F4EB6B70;
  if (hasStructuredAddress)
  {
    geoAddress2 = [v3 geoAddress];
    structuredAddress = [geoAddress2 structuredAddress];

    if ([structuredAddress hasFullThoroughfare])
    {
      fullThoroughfare = [structuredAddress fullThoroughfare];
    }

    else
    {
      fullThoroughfare = &stru_1F4EB6B70;
    }

    if ([structuredAddress hasThoroughfare])
    {
      thoroughfare = [structuredAddress thoroughfare];
    }

    else
    {
      thoroughfare = &stru_1F4EB6B70;
    }
  }

  v11 = navDisplayNameForMapItem(v3, 1, 0);
  if (v11)
  {
    v6 = v11;
  }

  v15[0] = @"{Address}";
  v15[1] = @"{StreetName}";
  v16[0] = fullThoroughfare;
  v16[1] = thoroughfare;
  v15[2] = @"{Name}";
  v16[2] = v6;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)_navigation_stringTokensForGenericCombinationsToken:()MNExtras waypoints:isSpokenString:
{
  v7 = a3;
  v8 = a4;
  if ([v7 type] != 18)
  {
    goto LABEL_7;
  }

  genericCombinations = [v7 genericCombinations];

  if (!genericCombinations)
  {
    goto LABEL_8;
  }

  if (([v7 waypointIndex] & 0x80000000) != 0 || (v10 = objc_msgSend(v7, "waypointIndex"), v10 >= objc_msgSend(v8, "count")))
  {
LABEL_7:
    genericCombinations = 0;
  }

  else
  {
    v11 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "waypointIndex")}];
    genericCombinations = [MEMORY[0x1E695DF90] dictionary];
    v17 = 0;
    if (a5)
    {
      [v11 navAnnouncementNameAndSubstituteType:&v17];
    }

    else
    {
      [v11 navDisplayNameWithSpecialContacts:0 substituteType:&v17];
    }
    v13 = ;
    if ([v13 length])
    {
      [genericCombinations setObject:v13 forKeyedSubscript:@"{Name}"];
      v14 = [MEMORY[0x1E696AD98] numberWithInt:v17];
      [genericCombinations setObject:v14 forKeyedSubscript:@"{Name}_source"];
    }

    if (a5)
    {
      [v11 navAnnouncementAddress];
    }

    else
    {
      [v11 navDisplayAddress];
    }
    v15 = ;
    if ([v15 length])
    {
      [genericCombinations setObject:v15 forKeyedSubscript:@"{Address}"];
      [genericCombinations setObject:&unk_1F4EE2AA0 forKeyedSubscript:@"{Address}_source"];
    }

    v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v11, "waypointCategory")}];
    [genericCombinations setObject:v16 forKeyedSubscript:@"{WaypointCategory}"];
  }

LABEL_8:

  return genericCombinations;
}

+ (void)_navigation_stringTokensForDirectionsError:()MNExtras waypoints:
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  content = [v6 content];
  formatTokens = [content formatTokens];

  v11 = [formatTokens countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(formatTokens);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if ([v14 type] == 18)
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      v11 = [formatTokens countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = [self _navigation_stringTokensForGenericCombinationsToken:v11 waypoints:v7 isSpokenString:0];
  if (v15)
  {
    [dictionary setObject:v15 forKeyedSubscript:@"{toDestination}"];
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"{currentDestination}"];
  v17 = +[MNVirtualGarageManager sharedManager];
  lastVehicleName = [v17 lastVehicleName];

  if ([lastVehicleName length])
  {
    [dictionary2 setObject:lastVehicleName forKeyedSubscript:@"{VehicleName}"];
  }

  if ([dictionary count])
  {
    v19 = dictionary;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (id)_navigation_serverStringDictionaryForDistance:()MNExtras validDistance:waypoints:currentDestination:legIndex:spoken:useDisplayName:
{
  v14 = a5;
  v15 = a6;
  if ([v14 count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    firstObject = [v14 firstObject];
    [dictionary setObject:firstObject forKeyedSubscript:@"{fromOrigin}"];

    [dictionary setObject:v15 forKeyedSubscript:@"{Destination}"];
    lastObject = [v14 lastObject];
    [dictionary setObject:lastObject forKeyedSubscript:@"{toDestination}"];

    [dictionary setObject:v15 forKeyedSubscript:@"{currentDestination}"];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __146__NSDictionary_MNExtras___navigation_serverStringDictionaryForDistance_validDistance_waypoints_currentDestination_legIndex_spoken_useDisplayName___block_invoke;
    v22[3] = &unk_1E8430808;
    selfCopy = self;
    v25 = a2;
    v26 = a8;
    v27 = a9;
    dictionary3 = dictionary2;
    v23 = dictionary3;
    [dictionary enumerateKeysAndObjectsUsingBlock:v22];
  }

  else
  {
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  }

  return dictionary3;
}

+ (id)_navigation_serverStringDictionaryForDistance:()MNExtras validDistance:destination:spoken:useDisplayName:
{
  v11 = a5;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self >= 0.0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:self];
    [v12 setObject:v13 forKey:@"{distance}"];
  }

  if (a2 >= 0.0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [v12 setObject:v14 forKey:@"{valid_distance}"];
  }

  if (a6)
  {
    [v11 navAnnouncementName];
  }

  else
  {
    [v11 navDisplayNameWithSpecialContacts:0];
  }
  v15 = ;
  if ([v15 length])
  {
    [v12 setObject:v15 forKey:@"{Name}"];
  }

  if (a6)
  {
    navAnnouncementAddress = [v11 navAnnouncementAddress];
  }

  else
  {
    if (a7)
    {
      [v11 navDisplayName];
    }

    else
    {
      [v11 navDisplayAddress];
    }
    navAnnouncementAddress = ;
  }

  v17 = navAnnouncementAddress;
  if ([navAnnouncementAddress length])
  {
    [v12 setObject:v17 forKey:@"{Address}"];
  }

  return v12;
}

@end