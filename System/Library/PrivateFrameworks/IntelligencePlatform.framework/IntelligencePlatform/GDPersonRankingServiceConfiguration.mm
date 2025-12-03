@interface GDPersonRankingServiceConfiguration
- (GDPersonRankingServiceConfiguration)initWithIsFavoriteMultiplier:(double)multiplier emergencyContactMultiplier:(double)contactMultiplier iCloudFamilyMemberMultiplier:(double)memberMultiplier relationshipTagMultplier:(double)multplier;
@end

@implementation GDPersonRankingServiceConfiguration

- (GDPersonRankingServiceConfiguration)initWithIsFavoriteMultiplier:(double)multiplier emergencyContactMultiplier:(double)contactMultiplier iCloudFamilyMemberMultiplier:(double)memberMultiplier relationshipTagMultplier:(double)multplier
{
  v11.receiver = self;
  v11.super_class = GDPersonRankingServiceConfiguration;
  result = [(GDPersonRankingServiceConfiguration *)&v11 init];
  if (result)
  {
    result->_isFavoriteMultiplier = multiplier;
    result->_emergencyContactMultiplier = contactMultiplier;
    result->_iCloudFamilyMemberMultiplier = memberMultiplier;
    result->_relationshipTagMultiplier = multplier;
  }

  return result;
}

@end