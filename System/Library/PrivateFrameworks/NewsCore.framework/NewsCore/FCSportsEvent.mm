@interface FCSportsEvent
- (BOOL)isEqualToTag:(id)a3;
- (BOOL)isRouteable;
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (FCSportsEvent)initWithSportsEventRecord:(id)a3 eventCompetitorTags:(id)a4 eventLeagueTag:(id)a5 assetManager:(id)a6 interestToken:(id)a7;
- (void)_inflateSportsDataFromJSONDictionary:(id)a3;
- (void)_inflateSportsThemeFromJSONDictionary:(id)a3;
@end

@implementation FCSportsEvent

- (FCSportsEvent)initWithSportsEventRecord:(id)a3 eventCompetitorTags:(id)a4 eventLeagueTag:(id)a5 assetManager:(id)a6 interestToken:(id)a7
{
  v84 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v82.receiver = self;
  v82.super_class = FCSportsEvent;
  v18 = [(FCSportsEvent *)&v82 init];
  if (v18)
  {
    v76 = v17;
    v77 = v16;
    context = objc_autoreleasePoolPush();
    objc_storeStrong(&v18->_sportsEventRecord, a3);
    objc_storeStrong(&v18->_interestToken, a7);
    v19 = [v13 base];
    v20 = [v19 identifier];
    identifier = v18->_identifier;
    v18->_identifier = v20;

    v22 = [v13 base];
    v23 = [v22 changeTag];
    versionKey = v18->_versionKey;
    v18->_versionKey = v23;

    v25 = [MEMORY[0x1E695DF00] date];
    loadDate = v18->_loadDate;
    v18->_loadDate = v25;

    v27 = MEMORY[0x1E695DF00];
    v28 = [v13 base];
    v29 = [v28 fetchDate];
    v30 = [v27 dateWithPBDate:v29];
    fetchDate = v18->_fetchDate;
    v18->_fetchDate = v30;

    v32 = MEMORY[0x1E695DF00];
    v33 = [v13 base];
    v34 = [v33 modificationDate];
    v35 = [v32 dateWithPBDate:v34];
    lastModifiedDate = v18->_lastModifiedDate;
    v18->_lastModifiedDate = v35;

    v37 = [v13 allowedStorefrontIDs];
    allowedStorefrontIDs = v18->_allowedStorefrontIDs;
    v18->_allowedStorefrontIDs = v37;

    v39 = [v13 blockedStorefrontIDs];
    blockedStorefrontIDs = v18->_blockedStorefrontIDs;
    v18->_blockedStorefrontIDs = v39;

    v18->_minimumNewsVersion = [v13 minimumNewsVersion];
    v41 = [v13 highlightsArticleListID];
    highlightsArticleListID = v18->_highlightsArticleListID;
    v18->_highlightsArticleListID = v41;

    v43 = [v13 superfeedConfigResourceID];
    superfeedConfigResourceID = v18->_superfeedConfigResourceID;
    v18->_superfeedConfigResourceID = v43;

    objc_storeStrong(&v18->_eventCompetitorTags, a4);
    objc_storeStrong(&v18->_eventLeagueTag, a5);
    v45 = [v13 eventArticleListID];
    eventArticleListID = v18->_eventArticleListID;
    v18->_eventArticleListID = v45;

    v18->_isDeprecated = [v13 isDeprecated];
    v47 = [v13 sportsData];
    v48 = [v47 length];

    if (v48)
    {
      v73 = v15;
      v49 = [v13 sportsData];
      sportsData = v18->_sportsData;
      v18->_sportsData = v49;

      v51 = MEMORY[0x1E695DF20];
      v74 = v13;
      v52 = [v13 sportsData];
      v53 = [v51 fc_dictionaryFromJSON:v52];

      [(FCSportsEvent *)v18 _inflateSportsDataFromJSONDictionary:v53];
      v54 = [MEMORY[0x1E695DF90] dictionary];
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
              [v54 setObject:v62 forKeyedSubscript:v61];
            }
          }

          v57 = [v55 countByEnumeratingWithState:&v78 objects:v83 count:16];
        }

        while (v57);
      }

      v63 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v54];
      rosterResourceIDs = v18->_rosterResourceIDs;
      v18->_rosterResourceIDs = v63;

      v13 = v74;
      v15 = v73;
    }

    v65 = [v13 sportsTheme];
    v66 = [v65 length];

    if (v66)
    {
      v67 = MEMORY[0x1E695DF20];
      v68 = [v13 sportsTheme];
      v69 = [v67 fc_dictionaryFromJSON:v68];

      [(FCSportsEvent *)v18 _inflateSportsThemeFromJSONDictionary:v69];
    }

    objc_autoreleasePoolPop(context);
    v17 = v76;
    v16 = v77;
  }

  v70 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_inflateSportsDataFromJSONDictionary:(id)a3
{
  v4 = a3;
  v31 = [[FCSportsData alloc] initWithDictionary:v4];

  v5 = [(FCSportsData *)v31 UMCCanonicalID];
  UMCCanonicalID = self->_UMCCanonicalID;
  self->_UMCCanonicalID = v5;

  v7 = [(FCSportsData *)v31 sportsPrimaryName];
  sportsPrimaryName = self->_sportsPrimaryName;
  self->_sportsPrimaryName = v7;

  v9 = [(FCSportsData *)v31 sportsNameAbbreviation];
  sportsNameAbbreviation = self->_sportsNameAbbreviation;
  self->_sportsNameAbbreviation = v9;

  v11 = [(FCSportsData *)v31 sportsSecondaryName];
  sportsSecondaryName = self->_sportsSecondaryName;
  self->_sportsSecondaryName = v11;

  v13 = [(FCSportsData *)v31 sportsSecondaryShortName];
  sportsSecondaryShortName = self->_sportsSecondaryShortName;
  self->_sportsSecondaryShortName = v13;

  v15 = [(FCSportsData *)v31 sportsFullName];
  sportsFullName = self->_sportsFullName;
  self->_sportsFullName = v15;

  v17 = [(FCSportsData *)v31 topLevelSportTagIdentifier];
  topLevelSportTagIdentifier = self->_topLevelSportTagIdentifier;
  self->_topLevelSportTagIdentifier = v17;

  v19 = [(FCSportsData *)v31 topLevelGroupsTagIdentifiers];
  topLevelGroupsTagIdentifiers = self->_topLevelGroupsTagIdentifiers;
  self->_topLevelGroupsTagIdentifiers = v19;

  v21 = [(FCSportsData *)v31 sportsNickname];
  sportsNickname = self->_sportsNickname;
  self->_sportsNickname = v21;

  v23 = [(FCSportsData *)v31 sportsLocation];
  sportsLocation = self->_sportsLocation;
  self->_sportsLocation = v23;

  self->_hideLocationInMasthead = [(FCSportsData *)v31 hideLocationInMasthead];
  self->_sportsType = [(FCSportsData *)v31 sportsType];
  v25 = [(FCSportsData *)v31 sportsTypeDisplayName];
  sportsTypeDisplayName = self->_sportsTypeDisplayName;
  self->_sportsTypeDisplayName = v25;

  v27 = [(FCSportsData *)v31 sportsTypePluralizedDisplayName];
  sportsTypePluralizedDisplayName = self->_sportsTypePluralizedDisplayName;
  self->_sportsTypePluralizedDisplayName = v27;

  self->_sportsLeagueType = [(FCSportsData *)v31 sportsLeagueType];
  v29 = [(FCSportsData *)v31 sportsEventStartTime];
  sportsEventStartTime = self->_sportsEventStartTime;
  self->_sportsEventStartTime = v29;
}

- (void)_inflateSportsThemeFromJSONDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"primaryColor"];
  v6 = [FCColor nullableColorWithHexString:v5];
  sportsPrimaryColor = self->_sportsPrimaryColor;
  self->_sportsPrimaryColor = v6;

  v8 = [v4 objectForKeyedSubscript:@"secondaryColor"];
  v9 = [FCColor nullableColorWithHexString:v8];
  sportsSecondaryColor = self->_sportsSecondaryColor;
  self->_sportsSecondaryColor = v9;

  v11 = [v4 objectForKeyedSubscript:@"sportsLogoMastheadVisibility"];
  self->_sportsLogoMastheadVisibility = FCMastheadLogoVisibilityFromString(v11);

  v14 = [v4 objectForKeyedSubscript:@"sportsEventNavigationForegroundColor"];

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
  v3 = [(FCSportsEvent *)self superfeedConfigResourceID];
  if (v3)
  {
    v4 = [(FCSportsEvent *)self eventCompetitorTags];
    v5 = [v4 count] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToTag:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = FCCheckedDynamicCast(v5, v4);

  v7 = [(FCSportsEvent *)self versionKey];
  v8 = [v6 versionKey];
  v9 = [v7 isEqualToString:v8];

  return v9;
}

@end