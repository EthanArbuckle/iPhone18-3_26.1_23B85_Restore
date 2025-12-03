@interface FCNewsTabiEventAggregationConditions
- (FCNewsTabiEventAggregationConditions)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsTabiEventAggregationConditions

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  articleSeenConditions = [(FCNewsTabiEventAggregationConditions *)self articleSeenConditions];
  indentedDescription = [articleSeenConditions indentedDescription];
  [v3 appendFormat:@"\n\tarticleSeenConditions: %@", indentedDescription];

  articleReadConditions = [(FCNewsTabiEventAggregationConditions *)self articleReadConditions];
  indentedDescription2 = [articleReadConditions indentedDescription];
  [v3 appendFormat:@"\n\tarticleReadConditions: %@", indentedDescription2];

  trackListenedConditions = [(FCNewsTabiEventAggregationConditions *)self trackListenedConditions];
  indentedDescription3 = [trackListenedConditions indentedDescription];
  [v3 appendFormat:@"\n\ttrackListenedConditions: %@", indentedDescription3];

  articleVisitedConditions = [(FCNewsTabiEventAggregationConditions *)self articleVisitedConditions];
  indentedDescription4 = [articleVisitedConditions indentedDescription];
  [v3 appendFormat:@"\n\tarticleVisitedConditions: %@", indentedDescription4];

  articleSharedConditions = [(FCNewsTabiEventAggregationConditions *)self articleSharedConditions];
  indentedDescription5 = [articleSharedConditions indentedDescription];
  [v3 appendFormat:@"\n\tarticleSharedConditions: %@", indentedDescription5];

  articleLikedConditions = [(FCNewsTabiEventAggregationConditions *)self articleLikedConditions];
  indentedDescription6 = [articleLikedConditions indentedDescription];
  [v3 appendFormat:@"\n\tarticleLikedConditions: %@", indentedDescription6];

  articleDislikedConditions = [(FCNewsTabiEventAggregationConditions *)self articleDislikedConditions];
  indentedDescription7 = [articleDislikedConditions indentedDescription];
  [v3 appendFormat:@"\n\tarticleDislikedConditions: %@", indentedDescription7];

  articleSavedConditions = [(FCNewsTabiEventAggregationConditions *)self articleSavedConditions];
  indentedDescription8 = [articleSavedConditions indentedDescription];
  [v3 appendFormat:@"\n\tarticleSavedConditions: %@", indentedDescription8];

  trackVisitedConditions = [(FCNewsTabiEventAggregationConditions *)self trackVisitedConditions];
  indentedDescription9 = [trackVisitedConditions indentedDescription];
  [v3 appendFormat:@"\n\ttrackVisitedConditions: %@", indentedDescription9];

  trackFinishedConditions = [(FCNewsTabiEventAggregationConditions *)self trackFinishedConditions];
  indentedDescription10 = [trackFinishedConditions indentedDescription];
  [v3 appendFormat:@"\n\ttrackFinishedConditions: %@", indentedDescription10];

  articleUnlikedConditions = [(FCNewsTabiEventAggregationConditions *)self articleUnlikedConditions];
  indentedDescription11 = [articleUnlikedConditions indentedDescription];
  [v3 appendFormat:@"\n\tarticleUnlikedConditions: %@", indentedDescription11];

  articleUndislikedConditions = [(FCNewsTabiEventAggregationConditions *)self articleUndislikedConditions];
  indentedDescription12 = [articleUndislikedConditions indentedDescription];
  [v3 appendFormat:@"\n\tarticleUndislikedConditions: %@", indentedDescription12];

  articleUnsavedConditions = [(FCNewsTabiEventAggregationConditions *)self articleUnsavedConditions];
  indentedDescription13 = [articleUnsavedConditions indentedDescription];
  [v3 appendFormat:@"\n\tarticleUnsavedConditions: %@", indentedDescription13];

  notificationVendedConditions = [(FCNewsTabiEventAggregationConditions *)self notificationVendedConditions];
  indentedDescription14 = [notificationVendedConditions indentedDescription];
  [v3 appendFormat:@"\n\tnotificationVendedConditions: %@", indentedDescription14];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiEventAggregationConditions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v63.receiver = self;
  v63.super_class = FCNewsTabiEventAggregationConditions;
  v5 = [(FCNewsTabiEventAggregationConditions *)&v63 init];
  if (v5)
  {
    v6 = [FCNewsTabiEventAggregationArticleSeenConditions alloc];
    v7 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"articleSeenConditions", 0);
    v8 = [(FCNewsTabiEventAggregationDurationEventConditions *)v6 initWithDictionary:v7];
    articleSeenConditions = v5->_articleSeenConditions;
    v5->_articleSeenConditions = v8;

    v10 = [FCNewsTabiEventAggregationArticleReadConditions alloc];
    v11 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"articleReadConditions", 0);
    v12 = [(FCNewsTabiEventAggregationDurationEventConditions *)v10 initWithDictionary:v11];
    articleReadConditions = v5->_articleReadConditions;
    v5->_articleReadConditions = v12;

    v14 = [FCNewsTabiEventAggregationTrackListenedConditions alloc];
    v15 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"trackListenedConditions", 0);
    v16 = [(FCNewsTabiEventAggregationBaseEventConditions *)v14 initWithDictionary:v15];
    trackListenedConditions = v5->_trackListenedConditions;
    v5->_trackListenedConditions = v16;

    v18 = [FCNewsTabiEventAggregationArticleVisitedConditions alloc];
    v19 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"articleVisitedConditions", 0);
    v20 = [(FCNewsTabiEventAggregationBaseEventConditions *)v18 initWithDictionary:v19];
    articleVisitedConditions = v5->_articleVisitedConditions;
    v5->_articleVisitedConditions = v20;

    v22 = [FCNewsTabiEventAggregationArticleSharedConditions alloc];
    v23 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"articleSharedConditions", 0);
    v24 = [(FCNewsTabiEventAggregationBaseEventConditions *)v22 initWithDictionary:v23];
    articleSharedConditions = v5->_articleSharedConditions;
    v5->_articleSharedConditions = v24;

    v26 = [FCNewsTabiEventAggregationArticleLikedConditions alloc];
    v27 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"articleLikedConditions", 0);
    v28 = [(FCNewsTabiEventAggregationBaseEventConditions *)v26 initWithDictionary:v27];
    articleLikedConditions = v5->_articleLikedConditions;
    v5->_articleLikedConditions = v28;

    v30 = [FCNewsTabiEventAggregationArticleDislikedConditions alloc];
    v31 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"articleDislikedConditions", 0);
    v32 = [(FCNewsTabiEventAggregationBaseEventConditions *)v30 initWithDictionary:v31];
    articleDislikedConditions = v5->_articleDislikedConditions;
    v5->_articleDislikedConditions = v32;

    v34 = [FCNewsTabiEventAggregationArticleSavedConditions alloc];
    v35 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"articleSavedConditions", 0);
    v36 = [(FCNewsTabiEventAggregationBaseEventConditions *)v34 initWithDictionary:v35];
    articleSavedConditions = v5->_articleSavedConditions;
    v5->_articleSavedConditions = v36;

    v38 = [FCNewsTabiEventAggregationTrackVisitedConditions alloc];
    v39 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"trackVisitedConditions", 0);
    v40 = [(FCNewsTabiEventAggregationBaseEventConditions *)v38 initWithDictionary:v39];
    trackVisitedConditions = v5->_trackVisitedConditions;
    v5->_trackVisitedConditions = v40;

    v42 = [FCNewsTabiEventAggregationTrackFinishedConditions alloc];
    v43 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"trackFinishedConditions", 0);
    v44 = [(FCNewsTabiEventAggregationBaseEventConditions *)v42 initWithDictionary:v43];
    trackFinishedConditions = v5->_trackFinishedConditions;
    v5->_trackFinishedConditions = v44;

    v46 = [FCNewsTabiEventAggregationArticleUnlikedConditions alloc];
    v47 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"articleUnlikedConditions", 0);
    v48 = [(FCNewsTabiEventAggregationBaseEventConditions *)v46 initWithDictionary:v47];
    articleUnlikedConditions = v5->_articleUnlikedConditions;
    v5->_articleUnlikedConditions = v48;

    v50 = [FCNewsTabiEventAggregationArticleUndislikedConditions alloc];
    v51 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"articleUndislikedConditions", 0);
    v52 = [(FCNewsTabiEventAggregationBaseEventConditions *)v50 initWithDictionary:v51];
    articleUndislikedConditions = v5->_articleUndislikedConditions;
    v5->_articleUndislikedConditions = v52;

    v54 = [FCNewsTabiEventAggregationArticleUnsavedConditions alloc];
    v55 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"articleUnsavedConditions", 0);
    v56 = [(FCNewsTabiEventAggregationBaseEventConditions *)v54 initWithDictionary:v55];
    articleUnsavedConditions = v5->_articleUnsavedConditions;
    v5->_articleUnsavedConditions = v56;

    v58 = [FCNewsTabiEventAggregationNotificationVendedConditions alloc];
    v59 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"notificationVendedConditions", 0);
    v60 = [(FCNewsTabiEventAggregationBaseEventConditions *)v58 initWithDictionary:v59];
    notificationVendedConditions = v5->_notificationVendedConditions;
    v5->_notificationVendedConditions = v60;
  }

  return v5;
}

@end