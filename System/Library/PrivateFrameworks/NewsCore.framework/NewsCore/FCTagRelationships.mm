@interface FCTagRelationships
- (FCTagRelationships)initWithRelatedChannelsForOnboarding:(id)a3;
@end

@implementation FCTagRelationships

- (FCTagRelationships)initWithRelatedChannelsForOnboarding:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCTagRelationships;
  v5 = [(FCTagRelationships *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    relatedChannelsForOnboarding = v5->_relatedChannelsForOnboarding;
    v5->_relatedChannelsForOnboarding = v6;
  }

  return v5;
}

@end