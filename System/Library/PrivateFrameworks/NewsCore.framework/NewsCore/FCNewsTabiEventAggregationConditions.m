@interface FCNewsTabiEventAggregationConditions
- (FCNewsTabiEventAggregationConditions)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiEventAggregationConditions

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiEventAggregationConditions *)self articleSeenConditions];
  v5 = [v4 indentedDescription];
  [v3 appendFormat:@"\n\tarticleSeenConditions: %@", v5];

  v6 = [(FCNewsTabiEventAggregationConditions *)self articleReadConditions];
  v7 = [v6 indentedDescription];
  [v3 appendFormat:@"\n\tarticleReadConditions: %@", v7];

  v8 = [(FCNewsTabiEventAggregationConditions *)self trackListenedConditions];
  v9 = [v8 indentedDescription];
  [v3 appendFormat:@"\n\ttrackListenedConditions: %@", v9];

  v10 = [(FCNewsTabiEventAggregationConditions *)self articleVisitedConditions];
  v11 = [v10 indentedDescription];
  [v3 appendFormat:@"\n\tarticleVisitedConditions: %@", v11];

  v12 = [(FCNewsTabiEventAggregationConditions *)self articleSharedConditions];
  v13 = [v12 indentedDescription];
  [v3 appendFormat:@"\n\tarticleSharedConditions: %@", v13];

  v14 = [(FCNewsTabiEventAggregationConditions *)self articleLikedConditions];
  v15 = [v14 indentedDescription];
  [v3 appendFormat:@"\n\tarticleLikedConditions: %@", v15];

  v16 = [(FCNewsTabiEventAggregationConditions *)self articleDislikedConditions];
  v17 = [v16 indentedDescription];
  [v3 appendFormat:@"\n\tarticleDislikedConditions: %@", v17];

  v18 = [(FCNewsTabiEventAggregationConditions *)self articleSavedConditions];
  v19 = [v18 indentedDescription];
  [v3 appendFormat:@"\n\tarticleSavedConditions: %@", v19];

  v20 = [(FCNewsTabiEventAggregationConditions *)self trackVisitedConditions];
  v21 = [v20 indentedDescription];
  [v3 appendFormat:@"\n\ttrackVisitedConditions: %@", v21];

  v22 = [(FCNewsTabiEventAggregationConditions *)self trackFinishedConditions];
  v23 = [v22 indentedDescription];
  [v3 appendFormat:@"\n\ttrackFinishedConditions: %@", v23];

  v24 = [(FCNewsTabiEventAggregationConditions *)self articleUnlikedConditions];
  v25 = [v24 indentedDescription];
  [v3 appendFormat:@"\n\tarticleUnlikedConditions: %@", v25];

  v26 = [(FCNewsTabiEventAggregationConditions *)self articleUndislikedConditions];
  v27 = [v26 indentedDescription];
  [v3 appendFormat:@"\n\tarticleUndislikedConditions: %@", v27];

  v28 = [(FCNewsTabiEventAggregationConditions *)self articleUnsavedConditions];
  v29 = [v28 indentedDescription];
  [v3 appendFormat:@"\n\tarticleUnsavedConditions: %@", v29];

  v30 = [(FCNewsTabiEventAggregationConditions *)self notificationVendedConditions];
  v31 = [v30 indentedDescription];
  [v3 appendFormat:@"\n\tnotificationVendedConditions: %@", v31];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiEventAggregationConditions)initWithDictionary:(id)a3
{
  v4 = a3;
  v63.receiver = self;
  v63.super_class = FCNewsTabiEventAggregationConditions;
  v5 = [(FCNewsTabiEventAggregationConditions *)&v63 init];
  if (v5)
  {
    v6 = [FCNewsTabiEventAggregationArticleSeenConditions alloc];
    v7 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"articleSeenConditions", 0);
    v8 = [(FCNewsTabiEventAggregationDurationEventConditions *)v6 initWithDictionary:v7];
    articleSeenConditions = v5->_articleSeenConditions;
    v5->_articleSeenConditions = v8;

    v10 = [FCNewsTabiEventAggregationArticleReadConditions alloc];
    v11 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"articleReadConditions", 0);
    v12 = [(FCNewsTabiEventAggregationDurationEventConditions *)v10 initWithDictionary:v11];
    articleReadConditions = v5->_articleReadConditions;
    v5->_articleReadConditions = v12;

    v14 = [FCNewsTabiEventAggregationTrackListenedConditions alloc];
    v15 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"trackListenedConditions", 0);
    v16 = [(FCNewsTabiEventAggregationBaseEventConditions *)v14 initWithDictionary:v15];
    trackListenedConditions = v5->_trackListenedConditions;
    v5->_trackListenedConditions = v16;

    v18 = [FCNewsTabiEventAggregationArticleVisitedConditions alloc];
    v19 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"articleVisitedConditions", 0);
    v20 = [(FCNewsTabiEventAggregationBaseEventConditions *)v18 initWithDictionary:v19];
    articleVisitedConditions = v5->_articleVisitedConditions;
    v5->_articleVisitedConditions = v20;

    v22 = [FCNewsTabiEventAggregationArticleSharedConditions alloc];
    v23 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"articleSharedConditions", 0);
    v24 = [(FCNewsTabiEventAggregationBaseEventConditions *)v22 initWithDictionary:v23];
    articleSharedConditions = v5->_articleSharedConditions;
    v5->_articleSharedConditions = v24;

    v26 = [FCNewsTabiEventAggregationArticleLikedConditions alloc];
    v27 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"articleLikedConditions", 0);
    v28 = [(FCNewsTabiEventAggregationBaseEventConditions *)v26 initWithDictionary:v27];
    articleLikedConditions = v5->_articleLikedConditions;
    v5->_articleLikedConditions = v28;

    v30 = [FCNewsTabiEventAggregationArticleDislikedConditions alloc];
    v31 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"articleDislikedConditions", 0);
    v32 = [(FCNewsTabiEventAggregationBaseEventConditions *)v30 initWithDictionary:v31];
    articleDislikedConditions = v5->_articleDislikedConditions;
    v5->_articleDislikedConditions = v32;

    v34 = [FCNewsTabiEventAggregationArticleSavedConditions alloc];
    v35 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"articleSavedConditions", 0);
    v36 = [(FCNewsTabiEventAggregationBaseEventConditions *)v34 initWithDictionary:v35];
    articleSavedConditions = v5->_articleSavedConditions;
    v5->_articleSavedConditions = v36;

    v38 = [FCNewsTabiEventAggregationTrackVisitedConditions alloc];
    v39 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"trackVisitedConditions", 0);
    v40 = [(FCNewsTabiEventAggregationBaseEventConditions *)v38 initWithDictionary:v39];
    trackVisitedConditions = v5->_trackVisitedConditions;
    v5->_trackVisitedConditions = v40;

    v42 = [FCNewsTabiEventAggregationTrackFinishedConditions alloc];
    v43 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"trackFinishedConditions", 0);
    v44 = [(FCNewsTabiEventAggregationBaseEventConditions *)v42 initWithDictionary:v43];
    trackFinishedConditions = v5->_trackFinishedConditions;
    v5->_trackFinishedConditions = v44;

    v46 = [FCNewsTabiEventAggregationArticleUnlikedConditions alloc];
    v47 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"articleUnlikedConditions", 0);
    v48 = [(FCNewsTabiEventAggregationBaseEventConditions *)v46 initWithDictionary:v47];
    articleUnlikedConditions = v5->_articleUnlikedConditions;
    v5->_articleUnlikedConditions = v48;

    v50 = [FCNewsTabiEventAggregationArticleUndislikedConditions alloc];
    v51 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"articleUndislikedConditions", 0);
    v52 = [(FCNewsTabiEventAggregationBaseEventConditions *)v50 initWithDictionary:v51];
    articleUndislikedConditions = v5->_articleUndislikedConditions;
    v5->_articleUndislikedConditions = v52;

    v54 = [FCNewsTabiEventAggregationArticleUnsavedConditions alloc];
    v55 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"articleUnsavedConditions", 0);
    v56 = [(FCNewsTabiEventAggregationBaseEventConditions *)v54 initWithDictionary:v55];
    articleUnsavedConditions = v5->_articleUnsavedConditions;
    v5->_articleUnsavedConditions = v56;

    v58 = [FCNewsTabiEventAggregationNotificationVendedConditions alloc];
    v59 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"notificationVendedConditions", 0);
    v60 = [(FCNewsTabiEventAggregationBaseEventConditions *)v58 initWithDictionary:v59];
    notificationVendedConditions = v5->_notificationVendedConditions;
    v5->_notificationVendedConditions = v60;
  }

  return v5;
}

@end