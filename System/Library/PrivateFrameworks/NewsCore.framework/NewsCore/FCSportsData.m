@interface FCSportsData
- (FCSportsData)initWithDictionary:(id)a3;
- (void)_inflateSportsDataFromJSONDictionary:(id)a3;
@end

@implementation FCSportsData

- (FCSportsData)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FCSportsData;
  v5 = [(FCSportsData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FCSportsData *)v5 _inflateSportsDataFromJSONDictionary:v4];
  }

  return v6;
}

- (void)_inflateSportsDataFromJSONDictionary:(id)a3
{
  v35 = a3;
  v4 = [v35 objectForKeyedSubscript:@"umcCanonicalId"];
  UMCCanonicalID = self->_UMCCanonicalID;
  self->_UMCCanonicalID = v4;

  v6 = [v35 objectForKeyedSubscript:@"primaryName"];
  sportsPrimaryName = self->_sportsPrimaryName;
  self->_sportsPrimaryName = v6;

  v8 = [v35 objectForKeyedSubscript:@"nameAbbreviation"];
  sportsNameAbbreviation = self->_sportsNameAbbreviation;
  self->_sportsNameAbbreviation = v8;

  v10 = [v35 objectForKeyedSubscript:@"secondaryName"];
  sportsSecondaryName = self->_sportsSecondaryName;
  self->_sportsSecondaryName = v10;

  v12 = [v35 objectForKeyedSubscript:@"shortSecondaryName"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v35 objectForKeyedSubscript:@"secondaryShortName"];
  }

  sportsSecondaryShortName = self->_sportsSecondaryShortName;
  self->_sportsSecondaryShortName = v14;

  v16 = [v35 objectForKeyedSubscript:@"fullName"];
  sportsFullName = self->_sportsFullName;
  self->_sportsFullName = v16;

  v18 = [v35 objectForKeyedSubscript:@"topLevelSportTagId"];
  topLevelSportTagIdentifier = self->_topLevelSportTagIdentifier;
  self->_topLevelSportTagIdentifier = v18;

  v20 = [v35 objectForKeyedSubscript:@"topLevelGroupsTagIds"];
  topLevelGroupsTagIdentifiers = self->_topLevelGroupsTagIdentifiers;
  self->_topLevelGroupsTagIdentifiers = v20;

  v22 = [v35 objectForKeyedSubscript:@"nickname"];
  if (!v22)
  {
    v22 = [v35 objectForKeyedSubscript:@"nickName"];
  }

  objc_storeStrong(&self->_sportsNickname, v22);
  v23 = [v35 objectForKeyedSubscript:@"location"];
  sportsLocation = self->_sportsLocation;
  self->_sportsLocation = v23;

  v25 = [v35 objectForKeyedSubscript:@"hideLocationInMasthead"];
  self->_hideLocationInMasthead = [v25 BOOLValue];
  v26 = [v35 objectForKeyedSubscript:@"sportsType"];
  self->_sportsType = FCSportsTypeFromString(v26);
  v27 = [v35 objectForKeyedSubscript:@"sportsTypeDisplayName"];
  sportsTypeDisplayName = self->_sportsTypeDisplayName;
  self->_sportsTypeDisplayName = v27;

  v29 = [v35 objectForKeyedSubscript:@"sportsTypePluralizedDisplayName"];
  sportsTypePluralizedDisplayName = self->_sportsTypePluralizedDisplayName;
  self->_sportsTypePluralizedDisplayName = v29;

  v31 = [v35 objectForKeyedSubscript:@"leagueType"];
  self->_sportsLeagueType = FCSportsLeagueTypeFromString(v31);
  v32 = [v35 objectForKeyedSubscript:@"startTime"];
  v33 = v32;
  if (v32)
  {
    v32 = [MEMORY[0x1E695DF00] fc_dateFromStringWithISO8601Format:v32];
  }

  sportsEventStartTime = self->_sportsEventStartTime;
  self->_sportsEventStartTime = v32;
}

@end