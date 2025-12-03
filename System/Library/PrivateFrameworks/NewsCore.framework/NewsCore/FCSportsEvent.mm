@interface FCSportsEvent
- (BOOL)isEqualToTag:(id)tag;
- (BOOL)isRouteable;
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (FCSportsEvent)initWithSportsEventRecord:(id)record eventCompetitorTags:(id)tags eventLeagueTag:(id)tag assetManager:(id)manager interestToken:(id)token;
- (void)_inflateSportsDataFromJSONDictionary:(id)dictionary;
- (void)_inflateSportsThemeFromJSONDictionary:(id)dictionary;
@end

@implementation FCSportsEvent

- (FCSportsEvent)initWithSportsEventRecord:(id)record eventCompetitorTags:(id)tags eventLeagueTag:(id)tag assetManager:(id)manager interestToken:(id)token
{
  v84 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  tagsCopy = tags;
  tagCopy = tag;
  managerCopy = manager;
  tokenCopy = token;
  v82.receiver = self;
  v82.super_class = FCSportsEvent;
  v18 = [(FCSportsEvent *)&v82 init];
  if (v18)
  {
    v76 = tokenCopy;
    v77 = managerCopy;
    context = objc_autoreleasePoolPush();
    objc_storeStrong(&v18->_sportsEventRecord, record);
    objc_storeStrong(&v18->_interestToken, token);
    base = [recordCopy base];
    identifier = [base identifier];
    identifier = v18->_identifier;
    v18->_identifier = identifier;

    base2 = [recordCopy base];
    changeTag = [base2 changeTag];
    versionKey = v18->_versionKey;
    v18->_versionKey = changeTag;

    date = [MEMORY[0x1E695DF00] date];
    loadDate = v18->_loadDate;
    v18->_loadDate = date;

    v27 = MEMORY[0x1E695DF00];
    base3 = [recordCopy base];
    fetchDate = [base3 fetchDate];
    v30 = [v27 dateWithPBDate:fetchDate];
    fetchDate = v18->_fetchDate;
    v18->_fetchDate = v30;

    v32 = MEMORY[0x1E695DF00];
    base4 = [recordCopy base];
    modificationDate = [base4 modificationDate];
    v35 = [v32 dateWithPBDate:modificationDate];
    lastModifiedDate = v18->_lastModifiedDate;
    v18->_lastModifiedDate = v35;

    allowedStorefrontIDs = [recordCopy allowedStorefrontIDs];
    allowedStorefrontIDs = v18->_allowedStorefrontIDs;
    v18->_allowedStorefrontIDs = allowedStorefrontIDs;

    blockedStorefrontIDs = [recordCopy blockedStorefrontIDs];
    blockedStorefrontIDs = v18->_blockedStorefrontIDs;
    v18->_blockedStorefrontIDs = blockedStorefrontIDs;

    v18->_minimumNewsVersion = [recordCopy minimumNewsVersion];
    highlightsArticleListID = [recordCopy highlightsArticleListID];
    highlightsArticleListID = v18->_highlightsArticleListID;
    v18->_highlightsArticleListID = highlightsArticleListID;

    superfeedConfigResourceID = [recordCopy superfeedConfigResourceID];
    superfeedConfigResourceID = v18->_superfeedConfigResourceID;
    v18->_superfeedConfigResourceID = superfeedConfigResourceID;

    objc_storeStrong(&v18->_eventCompetitorTags, tags);
    objc_storeStrong(&v18->_eventLeagueTag, tag);
    eventArticleListID = [recordCopy eventArticleListID];
    eventArticleListID = v18->_eventArticleListID;
    v18->_eventArticleListID = eventArticleListID;

    v18->_isDeprecated = [recordCopy isDeprecated];
    sportsData = [recordCopy sportsData];
    v48 = [sportsData length];

    if (v48)
    {
      v73 = tagCopy;
      sportsData2 = [recordCopy sportsData];
      sportsData = v18->_sportsData;
      v18->_sportsData = sportsData2;

      v51 = MEMORY[0x1E695DF20];
      v74 = recordCopy;
      sportsData3 = [recordCopy sportsData];
      v53 = [v51 fc_dictionaryFromJSON:sportsData3];

      [(FCSportsEvent *)v18 _inflateSportsDataFromJSONDictionary:v53];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v72 = v53;
      v55 = [v53 objectForKeyedSubscript:@"competitorRosters"];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v56 = [v55 countByEnumeratingWithState:&v78 objects:v83 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v79;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v79 != v58)
            {
              objc_enumerationMutation(v55);
            }

            v60 = *(*(&v78 + 1) + 8 * i);
            v61 = [v60 objectForKeyedSubscript:@"competitorTagID"];
            if (v61)
            {
              v62 = [v60 objectForKeyedSubscript:@"rosterResourceID"];
              [dictionary setObject:v62 forKeyedSubscript:v61];
            }
          }

          v57 = [v55 countByEnumeratingWithState:&v78 objects:v83 count:16];
        }

        while (v57);
      }

      v63 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
      rosterResourceIDs = v18->_rosterResourceIDs;
      v18->_rosterResourceIDs = v63;

      recordCopy = v74;
      tagCopy = v73;
    }

    sportsTheme = [recordCopy sportsTheme];
    v66 = [sportsTheme length];

    if (v66)
    {
      v67 = MEMORY[0x1E695DF20];
      sportsTheme2 = [recordCopy sportsTheme];
      v69 = [v67 fc_dictionaryFromJSON:sportsTheme2];

      [(FCSportsEvent *)v18 _inflateSportsThemeFromJSONDictionary:v69];
    }

    objc_autoreleasePoolPop(context);
    tokenCopy = v76;
    managerCopy = v77;
  }

  v70 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_inflateSportsDataFromJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v31 = [[FCSportsData alloc] initWithDictionary:dictionaryCopy];

  uMCCanonicalID = [(FCSportsData *)v31 UMCCanonicalID];
  UMCCanonicalID = self->_UMCCanonicalID;
  self->_UMCCanonicalID = uMCCanonicalID;

  sportsPrimaryName = [(FCSportsData *)v31 sportsPrimaryName];
  sportsPrimaryName = self->_sportsPrimaryName;
  self->_sportsPrimaryName = sportsPrimaryName;

  sportsNameAbbreviation = [(FCSportsData *)v31 sportsNameAbbreviation];
  sportsNameAbbreviation = self->_sportsNameAbbreviation;
  self->_sportsNameAbbreviation = sportsNameAbbreviation;

  sportsSecondaryName = [(FCSportsData *)v31 sportsSecondaryName];
  sportsSecondaryName = self->_sportsSecondaryName;
  self->_sportsSecondaryName = sportsSecondaryName;

  sportsSecondaryShortName = [(FCSportsData *)v31 sportsSecondaryShortName];
  sportsSecondaryShortName = self->_sportsSecondaryShortName;
  self->_sportsSecondaryShortName = sportsSecondaryShortName;

  sportsFullName = [(FCSportsData *)v31 sportsFullName];
  sportsFullName = self->_sportsFullName;
  self->_sportsFullName = sportsFullName;

  topLevelSportTagIdentifier = [(FCSportsData *)v31 topLevelSportTagIdentifier];
  topLevelSportTagIdentifier = self->_topLevelSportTagIdentifier;
  self->_topLevelSportTagIdentifier = topLevelSportTagIdentifier;

  topLevelGroupsTagIdentifiers = [(FCSportsData *)v31 topLevelGroupsTagIdentifiers];
  topLevelGroupsTagIdentifiers = self->_topLevelGroupsTagIdentifiers;
  self->_topLevelGroupsTagIdentifiers = topLevelGroupsTagIdentifiers;

  sportsNickname = [(FCSportsData *)v31 sportsNickname];
  sportsNickname = self->_sportsNickname;
  self->_sportsNickname = sportsNickname;

  sportsLocation = [(FCSportsData *)v31 sportsLocation];
  sportsLocation = self->_sportsLocation;
  self->_sportsLocation = sportsLocation;

  self->_hideLocationInMasthead = [(FCSportsData *)v31 hideLocationInMasthead];
  self->_sportsType = [(FCSportsData *)v31 sportsType];
  sportsTypeDisplayName = [(FCSportsData *)v31 sportsTypeDisplayName];
  sportsTypeDisplayName = self->_sportsTypeDisplayName;
  self->_sportsTypeDisplayName = sportsTypeDisplayName;

  sportsTypePluralizedDisplayName = [(FCSportsData *)v31 sportsTypePluralizedDisplayName];
  sportsTypePluralizedDisplayName = self->_sportsTypePluralizedDisplayName;
  self->_sportsTypePluralizedDisplayName = sportsTypePluralizedDisplayName;

  self->_sportsLeagueType = [(FCSportsData *)v31 sportsLeagueType];
  sportsEventStartTime = [(FCSportsData *)v31 sportsEventStartTime];
  sportsEventStartTime = self->_sportsEventStartTime;
  self->_sportsEventStartTime = sportsEventStartTime;
}

- (void)_inflateSportsThemeFromJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"primaryColor"];
  v6 = [FCColor nullableColorWithHexString:v5];
  sportsPrimaryColor = self->_sportsPrimaryColor;
  self->_sportsPrimaryColor = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"secondaryColor"];
  v9 = [FCColor nullableColorWithHexString:v8];
  sportsSecondaryColor = self->_sportsSecondaryColor;
  self->_sportsSecondaryColor = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"sportsLogoMastheadVisibility"];
  self->_sportsLogoMastheadVisibility = FCMastheadLogoVisibilityFromString(v11);

  v14 = [dictionaryCopy objectForKeyedSubscript:@"sportsEventNavigationForegroundColor"];

  v12 = [FCColor nullableColorWithHexString:v14];
  sportsEventNavigationForegroundColor = self->_sportsEventNavigationForegroundColor;
  self->_sportsEventNavigationForegroundColor = v12;
}

- (FCContentArchive)contentArchive
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__FCSportsEvent_contentArchive__block_invoke;
  v5[3] = &unk_1E7C36D40;
  v5[4] = self;
  v2 = [MEMORY[0x1E695DEC8] fc_array:v5];
  v3 = [FCContentArchive archiveWithChildArchives:v2];

  return v3;
}

void __31__FCSportsEvent_contentArchive__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 400);
  }

  else
  {
    v5 = 0;
  }

  v6 = [FCContentArchive archiveWithRecord:v5];
  [v3 fc_safelyAddObject:v6];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [*(a1 + 32) eventCompetitorTags];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (v12)
        {
          if ([*(*(&v22 + 1) + 8 * i) conformsToProtocol:&unk_1F2E828A8])
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = [v14 contentArchive];
        [v3 fc_safelyAddObject:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v16 = [*(a1 + 32) eventLeagueTag];
  v17 = v16;
  if (v16)
  {
    if ([v16 conformsToProtocol:&unk_1F2E828A8])
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = [v19 contentArchive];
  [v3 fc_safelyAddObject:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (FCContentManifest)contentManifest
{
  v3 = [FCContentManifest alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__FCSportsEvent_contentManifest__block_invoke;
  v7[3] = &unk_1E7C36D40;
  v7[4] = self;
  v4 = [MEMORY[0x1E695DEC8] fc_array:v7];
  v5 = [(FCContentManifest *)v3 initWithManifests:v4];

  return v5;
}

void __32__FCSportsEvent_contentManifest__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 400);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 base];
  v7 = [v6 contentManifest];
  [v3 fc_safelyAddObject:v7];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [*(a1 + 32) eventCompetitorTags];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if (v13)
        {
          if ([*(*(&v23 + 1) + 8 * i) conformsToProtocol:&unk_1F2E828A8])
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        v16 = [v15 contentManifest];
        [v3 fc_safelyAddObject:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v17 = [*(a1 + 32) eventLeagueTag];
  v18 = v17;
  if (v17)
  {
    if ([v17 conformsToProtocol:&unk_1F2E828A8])
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = [v20 contentManifest];
  [v3 fc_safelyAddObject:v21];

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRouteable
{
  superfeedConfigResourceID = [(FCSportsEvent *)self superfeedConfigResourceID];
  if (superfeedConfigResourceID)
  {
    eventCompetitorTags = [(FCSportsEvent *)self eventCompetitorTags];
    v5 = [eventCompetitorTags count] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToTag:(id)tag
{
  tagCopy = tag;
  v5 = objc_opt_class();
  v6 = FCCheckedDynamicCast(v5, tagCopy);

  versionKey = [(FCSportsEvent *)self versionKey];
  versionKey2 = [v6 versionKey];
  v9 = [versionKey isEqualToString:versionKey2];

  return v9;
}

@end