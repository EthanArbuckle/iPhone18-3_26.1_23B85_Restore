@interface GDPersonRankingServiceConfiguration
- (GDPersonRankingServiceConfiguration)initWithIsFavoriteMultiplier:(double)a3 emergencyContactMultiplier:(double)a4 iCloudFamilyMemberMultiplier:(double)a5 relationshipTagMultplier:(double)a6;
@end

@implementation GDPersonRankingServiceConfiguration

- (GDPersonRankingServiceConfiguration)initWithIsFavoriteMultiplier:(double)a3 emergencyContactMultiplier:(double)a4 iCloudFamilyMemberMultiplier:(double)a5 relationshipTagMultplier:(double)a6
{
  v11.receiver = self;
  v11.super_class = GDPersonRankingServiceConfiguration;
  result = [(GDPersonRankingServiceConfiguration *)&v11 init];
  if (result)
  {
    result->_isFavoriteMultiplier = a3;
    result->_emergencyContactMultiplier = a4;
    result->_iCloudFamilyMemberMultiplier = a5;
    result->_relationshipTagMultiplier = a6;
  }

  return result;
}

@end