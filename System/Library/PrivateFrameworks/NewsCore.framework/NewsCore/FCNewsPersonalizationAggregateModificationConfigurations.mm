@interface FCNewsPersonalizationAggregateModificationConfigurations
- (FCNewsPersonalizationAggregateModificationConfigurations)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsPersonalizationAggregateModificationConfigurations

- (FCNewsPersonalizationAggregateModificationConfigurations)initWithDictionary:(id)a3
{
  v4 = a3;
  v70.receiver = self;
  v70.super_class = FCNewsPersonalizationAggregateModificationConfigurations;
  v5 = [(FCNewsPersonalizationAggregateModificationConfigurations *)&v70 init];
  if (v5)
  {
    v69 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"articleSeen", 0);
    v6 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v69];
    articleSeenAggregateModificationConfiguration = v5->_articleSeenAggregateModificationConfiguration;
    v5->_articleSeenAggregateModificationConfiguration = v6;

    v68 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"articleVisited", 0);
    v8 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v68];
    articleVisitedAggregateModificationConfiguration = v5->_articleVisitedAggregateModificationConfiguration;
    v5->_articleVisitedAggregateModificationConfiguration = v8;

    v67 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"articleRead", 0);
    v10 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v67];
    articleReadAggregateModificationConfiguration = v5->_articleReadAggregateModificationConfiguration;
    v5->_articleReadAggregateModificationConfiguration = v10;

    v66 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"dislike", 0);
    v12 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v66];
    dislikeAggregateModificationConfiguration = v5->_dislikeAggregateModificationConfiguration;
    v5->_dislikeAggregateModificationConfiguration = v12;

    v65 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"undislike", 0);
    v14 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v65];
    undislikeAggregateModificationConfiguration = v5->_undislikeAggregateModificationConfiguration;
    v5->_undislikeAggregateModificationConfiguration = v14;

    v64 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"like", 0);
    v16 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v64];
    likeAggregateModificationConfiguration = v5->_likeAggregateModificationConfiguration;
    v5->_likeAggregateModificationConfiguration = v16;

    v63 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"unlike", 0);
    v18 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v63];
    unlikeAggregateModificationConfiguration = v5->_unlikeAggregateModificationConfiguration;
    v5->_unlikeAggregateModificationConfiguration = v18;

    v62 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"share", 0);
    v20 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v62];
    shareAggregateModificationConfiguration = v5->_shareAggregateModificationConfiguration;
    v5->_shareAggregateModificationConfiguration = v20;

    v61 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"mute", 0);
    v22 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v61];
    muteAggregateModificationConfiguration = v5->_muteAggregateModificationConfiguration;
    v5->_muteAggregateModificationConfiguration = v22;

    v60 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"saved", 0);
    v24 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v60];
    savedAggregateModificationConfiguration = v5->_savedAggregateModificationConfiguration;
    v5->_savedAggregateModificationConfiguration = v24;

    v59 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"unsaved", 0);
    v26 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v59];
    unsavedAggregateModificationConfiguration = v5->_unsavedAggregateModificationConfiguration;
    v5->_unsavedAggregateModificationConfiguration = v26;

    v58 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"unmute", 0);
    v28 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v58];
    unmuteAggregateModificationConfiguration = v5->_unmuteAggregateModificationConfiguration;
    v5->_unmuteAggregateModificationConfiguration = v28;

    v57 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"follow", 0);
    v30 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v57];
    followAggregateModificationConfiguration = v5->_followAggregateModificationConfiguration;
    v5->_followAggregateModificationConfiguration = v30;

    v56 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"unfollow", 0);
    v32 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v56];
    unfollowAggregateModificationConfiguration = v5->_unfollowAggregateModificationConfiguration;
    v5->_unfollowAggregateModificationConfiguration = v32;

    v34 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"feedView", 0);
    v35 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v34];
    deprecatedFeedViewAggregateModificationConfiguration = v5->_deprecatedFeedViewAggregateModificationConfiguration;
    v5->_deprecatedFeedViewAggregateModificationConfiguration = v35;

    v37 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"feedView2", 0);
    v38 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v37];
    feedViewAggregateModificationConfiguration = v5->_feedViewAggregateModificationConfiguration;
    v5->_feedViewAggregateModificationConfiguration = v38;

    v40 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"tagIgnore", 0);
    v41 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v40];
    tagIgnoreAggregateModificationConfiguration = v5->_tagIgnoreAggregateModificationConfiguration;
    v5->_tagIgnoreAggregateModificationConfiguration = v41;

    v43 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"trackVisited", 0);
    v44 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v43];
    trackVisitedAggregateModificationConfiguration = v5->_trackVisitedAggregateModificationConfiguration;
    v5->_trackVisitedAggregateModificationConfiguration = v44;

    v46 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"trackListened", 0);
    v47 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v46];
    trackListenedAggregateModificationConfiguration = v5->_trackListenedAggregateModificationConfiguration;
    v5->_trackListenedAggregateModificationConfiguration = v47;

    v49 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"trackFinished", 0);
    v50 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v49];
    trackFinishedAggregateModificationConfiguration = v5->_trackFinishedAggregateModificationConfiguration;
    v5->_trackFinishedAggregateModificationConfiguration = v50;

    v52 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"sportsTagSeen", 0);
    v53 = [[FCNewsPersonalizationAggregateModificationConfiguration alloc] initWithDictionary:v52];
    sportsTagSeenAggregateModificationConfiguration = v5->_sportsTagSeenAggregateModificationConfiguration;
    v5->_sportsTagSeenAggregateModificationConfiguration = v53;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self articleSeenAggregateModificationConfiguration];
  [v3 appendFormat:@"; articleSeenAggregateModificationConfiguration: %@", v4];

  v5 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self articleVisitedAggregateModificationConfiguration];
  [v3 appendFormat:@"; articleVisitedAggregateModificationConfiguration: %@", v5];

  v6 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self articleReadAggregateModificationConfiguration];
  [v3 appendFormat:@"; articleReadAggregateModificationConfiguration: %@", v6];

  v7 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self dislikeAggregateModificationConfiguration];
  [v3 appendFormat:@"; dislikeAggregateModificationConfiguration: %@", v7];

  v8 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self undislikeAggregateModificationConfiguration];
  [v3 appendFormat:@"; undislikeAggregateModificationConfiguration: %@", v8];

  v9 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self likeAggregateModificationConfiguration];
  [v3 appendFormat:@"; likeAggregateModificationConfiguration: %@", v9];

  v10 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self unlikeAggregateModificationConfiguration];
  [v3 appendFormat:@"; unlikeAggregateModificationConfiguration: %@", v10];

  v11 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self shareAggregateModificationConfiguration];
  [v3 appendFormat:@"; shareAggregateModificationConfiguration: %@", v11];

  v12 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self muteAggregateModificationConfiguration];
  [v3 appendFormat:@"; muteAggregateModificationConfiguration: %@", v12];

  v13 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self savedAggregateModificationConfiguration];
  [v3 appendFormat:@"; savedAggregateModificationConfiguration: %@", v13];

  v14 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self unsavedAggregateModificationConfiguration];
  [v3 appendFormat:@"; unsavedAggregateModificationConfiguration: %@", v14];

  v15 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self unmuteAggregateModificationConfiguration];
  [v3 appendFormat:@"; unmuteAggregateModificationConfiguration: %@", v15];

  v16 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self followAggregateModificationConfiguration];
  [v3 appendFormat:@"; followAggregateModificationConfiguration: %@", v16];

  v17 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self unfollowAggregateModificationConfiguration];
  [v3 appendFormat:@"; unfollowAggregateModificationConfiguration: %@", v17];

  v18 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self deprecatedFeedViewAggregateModificationConfiguration];
  [v3 appendFormat:@"; deprecatedFeedViewAggregateModificationConfiguration: %@", v18];

  v19 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self feedViewAggregateModificationConfiguration];
  [v3 appendFormat:@"; feedViewAggregateModificationConfiguration: %@", v19];

  v20 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self tagIgnoreAggregateModificationConfiguration];
  [v3 appendFormat:@"; tagIgnoreAggregateModificationConfiguration: %@", v20];

  v21 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self trackVisitedAggregateModificationConfiguration];
  [v3 appendFormat:@"; trackVisitedAggregateModificationConfiguration: %@", v21];

  v22 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self trackListenedAggregateModificationConfiguration];
  [v3 appendFormat:@"; trackListenedAggregateModificationConfiguration: %@", v22];

  v23 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self trackFinishedAggregateModificationConfiguration];
  [v3 appendFormat:@"; trackFinishedAggregateModificationConfiguration: %@", v23];

  v24 = [(FCNewsPersonalizationAggregateModificationConfigurations *)self sportsTagSeenAggregateModificationConfiguration];
  [v3 appendFormat:@"; sportsTagSeenAggregateModificationConfiguration: %@", v24];

  [v3 appendString:@">"];

  return v3;
}

@end