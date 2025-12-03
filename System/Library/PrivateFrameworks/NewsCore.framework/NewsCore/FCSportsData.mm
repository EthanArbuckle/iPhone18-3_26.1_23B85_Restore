@interface FCSportsData
- (FCSportsData)initWithDictionary:(id)dictionary;
- (void)_inflateSportsDataFromJSONDictionary:(id)dictionary;
@end

@implementation FCSportsData

- (FCSportsData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = FCSportsData;
  v5 = [(FCSportsData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FCSportsData *)v5 _inflateSportsDataFromJSONDictionary:dictionaryCopy];
  }

  return v6;
}

- (void)_inflateSportsDataFromJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"umcCanonicalId"];
  UMCCanonicalID = self->_UMCCanonicalID;
  self->_UMCCanonicalID = v4;

  v6 = [dictionaryCopy objectForKeyedSubscript:@"primaryName"];
  sportsPrimaryName = self->_sportsPrimaryName;
  self->_sportsPrimaryName = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"nameAbbreviation"];
  sportsNameAbbreviation = self->_sportsNameAbbreviation;
  self->_sportsNameAbbreviation = v8;

  v10 = [dictionaryCopy objectForKeyedSubscript:@"secondaryName"];
  sportsSecondaryName = self->_sportsSecondaryName;
  self->_sportsSecondaryName = v10;

  v12 = [dictionaryCopy objectForKeyedSubscript:@"shortSecondaryName"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [dictionaryCopy objectForKeyedSubscript:@"secondaryShortName"];
  }

  sportsSecondaryShortName = self->_sportsSecondaryShortName;
  self->_sportsSecondaryShortName = v14;

  v16 = [dictionaryCopy objectForKeyedSubscript:@"fullName"];
  sportsFullName = self->_sportsFullName;
  self->_sportsFullName = v16;

  v18 = [dictionaryCopy objectForKeyedSubscript:@"topLevelSportTagId"];
  topLevelSportTagIdentifier = self->_topLevelSportTagIdentifier;
  self->_topLevelSportTagIdentifier = v18;

  v20 = [dictionaryCopy objectForKeyedSubscript:@"topLevelGroupsTagIds"];
  topLevelGroupsTagIdentifiers = self->_topLevelGroupsTagIdentifiers;
  self->_topLevelGroupsTagIdentifiers = v20;

  v22 = [dictionaryCopy objectForKeyedSubscript:@"nickname"];
  if (!v22)
  {
    v22 = [dictionaryCopy objectForKeyedSubscript:@"nickName"];
  }

  objc_storeStrong(&self->_sportsNickname, v22);
  v23 = [dictionaryCopy objectForKeyedSubscript:@"location"];
  sportsLocation = self->_sportsLocation;
  self->_sportsLocation = v23;

  v25 = [dictionaryCopy objectForKeyedSubscript:@"hideLocationInMasthead"];
  self->_hideLocationInMasthead = [v25 BOOLValue];
  v26 = [dictionaryCopy objectForKeyedSubscript:@"sportsType"];
  self->_sportsType = FCSportsTypeFromString(v26);
  v27 = [dictionaryCopy objectForKeyedSubscript:@"sportsTypeDisplayName"];
  sportsTypeDisplayName = self->_sportsTypeDisplayName;
  self->_sportsTypeDisplayName = v27;

  v29 = [dictionaryCopy objectForKeyedSubscript:@"sportsTypePluralizedDisplayName"];
  sportsTypePluralizedDisplayName = self->_sportsTypePluralizedDisplayName;
  self->_sportsTypePluralizedDisplayName = v29;

  v31 = [dictionaryCopy objectForKeyedSubscript:@"leagueType"];
  self->_sportsLeagueType = FCSportsLeagueTypeFromString(v31);
  v32 = [dictionaryCopy objectForKeyedSubscript:@"startTime"];
  v33 = v32;
  if (v32)
  {
    v32 = [MEMORY[0x1E695DF00] fc_dateFromStringWithISO8601Format:v32];
  }

  sportsEventStartTime = self->_sportsEventStartTime;
  self->_sportsEventStartTime = v32;
}

@end