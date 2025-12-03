@interface FCTagRelationships
- (FCTagRelationships)initWithRelatedChannelsForOnboarding:(id)onboarding;
@end

@implementation FCTagRelationships

- (FCTagRelationships)initWithRelatedChannelsForOnboarding:(id)onboarding
{
  onboardingCopy = onboarding;
  v9.receiver = self;
  v9.super_class = FCTagRelationships;
  v5 = [(FCTagRelationships *)&v9 init];
  if (v5)
  {
    v6 = [onboardingCopy copy];
    relatedChannelsForOnboarding = v5->_relatedChannelsForOnboarding;
    v5->_relatedChannelsForOnboarding = v6;
  }

  return v5;
}

@end