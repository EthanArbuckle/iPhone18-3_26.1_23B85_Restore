@interface FCEndpointConfiguration
- (BOOL)isEqual:(id)equal;
- (FCEndpointConfiguration)initWithClientAPIBaseURLString:(id)string notificationsBaseURLString:(id)lString staticAssetBaseURLString:(id)rLString remoteDataSourceBaseURLString:(id)uRLString newsletterAPIBaseURLString:(id)baseURLString appAnalyticsBaseURLString:(id)analyticsBaseURLString fairPlayBaseURLString:(id)playBaseURLString searchAPIBaseURLString:(id)self0 puzzlesArchiveAPIBaseURLString:(id)self1 appAnalyticsNotificationReceiptBaseURLString:(id)self2 authTokenAPIBaseURLString:(id)self3 sportsDataVisualizationAPIBaseURLString:(id)self4 fineGrainedNewsletterSubscriptionBaseURLString:(id)self5 appAnalyticsSportsEventsBaseURLString:(id)self6 appAnalyticsAppHealthBaseURLString:(id)self7 appAnalyticsAppHeartbeatBaseURLString:(id)self8 ckOrderFeedBaseURLString:(id)self9 ckMultiFetchBaseURLString:(id)fetchBaseURLString ckRecordFetchBaseURLString:(id)recordFetchBaseURLString ckEdgeCachedOrderFeedBaseURLString:(id)orderFeedBaseURLString ckEdgeCachedMultiFetchBaseURLString:(id)multiFetchBaseURLString smarterFetchBaseURLString:(id)smarterFetchBaseURLString;
- (unint64_t)hash;
@end

@implementation FCEndpointConfiguration

- (FCEndpointConfiguration)initWithClientAPIBaseURLString:(id)string notificationsBaseURLString:(id)lString staticAssetBaseURLString:(id)rLString remoteDataSourceBaseURLString:(id)uRLString newsletterAPIBaseURLString:(id)baseURLString appAnalyticsBaseURLString:(id)analyticsBaseURLString fairPlayBaseURLString:(id)playBaseURLString searchAPIBaseURLString:(id)self0 puzzlesArchiveAPIBaseURLString:(id)self1 appAnalyticsNotificationReceiptBaseURLString:(id)self2 authTokenAPIBaseURLString:(id)self3 sportsDataVisualizationAPIBaseURLString:(id)self4 fineGrainedNewsletterSubscriptionBaseURLString:(id)self5 appAnalyticsSportsEventsBaseURLString:(id)self6 appAnalyticsAppHealthBaseURLString:(id)self7 appAnalyticsAppHeartbeatBaseURLString:(id)self8 ckOrderFeedBaseURLString:(id)self9 ckMultiFetchBaseURLString:(id)fetchBaseURLString ckRecordFetchBaseURLString:(id)recordFetchBaseURLString ckEdgeCachedOrderFeedBaseURLString:(id)orderFeedBaseURLString ckEdgeCachedMultiFetchBaseURLString:(id)multiFetchBaseURLString smarterFetchBaseURLString:(id)smarterFetchBaseURLString
{
  stringCopy = string;
  lStringCopy = lString;
  rLStringCopy = rLString;
  uRLStringCopy = uRLString;
  baseURLStringCopy = baseURLString;
  analyticsBaseURLStringCopy = analyticsBaseURLString;
  v32 = lStringCopy;
  playBaseURLStringCopy = playBaseURLString;
  iBaseURLStringCopy = iBaseURLString;
  pIBaseURLStringCopy = pIBaseURLString;
  v33 = rLStringCopy;
  receiptBaseURLStringCopy = receiptBaseURLString;
  aPIBaseURLStringCopy = aPIBaseURLString;
  visualizationAPIBaseURLStringCopy = visualizationAPIBaseURLString;
  subscriptionBaseURLStringCopy = subscriptionBaseURLString;
  eventsBaseURLStringCopy = eventsBaseURLString;
  healthBaseURLStringCopy = healthBaseURLString;
  heartbeatBaseURLStringCopy = heartbeatBaseURLString;
  feedBaseURLStringCopy = feedBaseURLString;
  fetchBaseURLStringCopy = fetchBaseURLString;
  recordFetchBaseURLStringCopy = recordFetchBaseURLString;
  orderFeedBaseURLStringCopy = orderFeedBaseURLString;
  multiFetchBaseURLStringCopy = multiFetchBaseURLString;
  smarterFetchBaseURLStringCopy = smarterFetchBaseURLString;
  v100.receiver = self;
  v100.super_class = FCEndpointConfiguration;
  v40 = [(FCEndpointConfiguration *)&v100 init];
  if (v40)
  {
    v41 = [stringCopy copy];
    clientAPIBaseURLString = v40->_clientAPIBaseURLString;
    v40->_clientAPIBaseURLString = v41;

    v43 = [v32 copy];
    notificationsBaseURLString = v40->_notificationsBaseURLString;
    v40->_notificationsBaseURLString = v43;

    v45 = [v33 copy];
    staticAssetBaseURLString = v40->_staticAssetBaseURLString;
    v40->_staticAssetBaseURLString = v45;

    v47 = [uRLStringCopy copy];
    remoteDataSourceBaseURLString = v40->_remoteDataSourceBaseURLString;
    v40->_remoteDataSourceBaseURLString = v47;

    v49 = [baseURLStringCopy copy];
    newsletterAPIBaseURLString = v40->_newsletterAPIBaseURLString;
    v40->_newsletterAPIBaseURLString = v49;

    v51 = [analyticsBaseURLStringCopy copy];
    appAnalyticsBaseURLString = v40->_appAnalyticsBaseURLString;
    v40->_appAnalyticsBaseURLString = v51;

    v53 = [playBaseURLStringCopy copy];
    fairPlayBaseURLString = v40->_fairPlayBaseURLString;
    v40->_fairPlayBaseURLString = v53;

    v55 = [iBaseURLStringCopy copy];
    searchAPIBaseURLString = v40->_searchAPIBaseURLString;
    v40->_searchAPIBaseURLString = v55;

    v57 = [pIBaseURLStringCopy copy];
    puzzlesArchiveAPIBaseURLString = v40->_puzzlesArchiveAPIBaseURLString;
    v40->_puzzlesArchiveAPIBaseURLString = v57;

    v59 = [receiptBaseURLStringCopy copy];
    appAnalyticsNotificationReceiptBaseURLString = v40->_appAnalyticsNotificationReceiptBaseURLString;
    v40->_appAnalyticsNotificationReceiptBaseURLString = v59;

    v61 = [aPIBaseURLStringCopy copy];
    authTokenAPIBaseURLString = v40->_authTokenAPIBaseURLString;
    v40->_authTokenAPIBaseURLString = v61;

    v63 = [visualizationAPIBaseURLStringCopy copy];
    sportsDataVisualizationAPIBaseURLString = v40->_sportsDataVisualizationAPIBaseURLString;
    v40->_sportsDataVisualizationAPIBaseURLString = v63;

    v65 = [subscriptionBaseURLStringCopy copy];
    fineGrainedNewsletterSubscriptionBaseURLString = v40->_fineGrainedNewsletterSubscriptionBaseURLString;
    v40->_fineGrainedNewsletterSubscriptionBaseURLString = v65;

    v67 = [eventsBaseURLStringCopy copy];
    appAnalyticsSportsEventsBaseURLString = v40->_appAnalyticsSportsEventsBaseURLString;
    v40->_appAnalyticsSportsEventsBaseURLString = v67;

    v69 = [healthBaseURLStringCopy copy];
    appAnalyticsAppHealthBaseURLString = v40->_appAnalyticsAppHealthBaseURLString;
    v40->_appAnalyticsAppHealthBaseURLString = v69;

    v71 = [heartbeatBaseURLStringCopy copy];
    appAnalyticsAppHeartbeatBaseURLString = v40->_appAnalyticsAppHeartbeatBaseURLString;
    v40->_appAnalyticsAppHeartbeatBaseURLString = v71;

    v73 = [feedBaseURLStringCopy copy];
    ckOrderFeedBaseURLString = v40->_ckOrderFeedBaseURLString;
    v40->_ckOrderFeedBaseURLString = v73;

    v75 = [fetchBaseURLStringCopy copy];
    ckMultiFetchBaseURLString = v40->_ckMultiFetchBaseURLString;
    v40->_ckMultiFetchBaseURLString = v75;

    v77 = [recordFetchBaseURLStringCopy copy];
    ckRecordFetchBaseURLString = v40->_ckRecordFetchBaseURLString;
    v40->_ckRecordFetchBaseURLString = v77;

    v79 = [orderFeedBaseURLStringCopy copy];
    ckEdgeCachedOrderFeedBaseURLString = v40->_ckEdgeCachedOrderFeedBaseURLString;
    v40->_ckEdgeCachedOrderFeedBaseURLString = v79;

    v81 = [multiFetchBaseURLStringCopy copy];
    ckEdgeCachedMultiFetchBaseURLString = v40->_ckEdgeCachedMultiFetchBaseURLString;
    v40->_ckEdgeCachedMultiFetchBaseURLString = v81;

    v83 = [smarterFetchBaseURLStringCopy copy];
    smarterFetchBaseURLString = v40->_smarterFetchBaseURLString;
    v40->_smarterFetchBaseURLString = v83;
  }

  return v40;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x1E69E58C0];
    clientAPIBaseURLString = [(FCEndpointConfiguration *)self clientAPIBaseURLString];
    clientAPIBaseURLString2 = [v6 clientAPIBaseURLString];
    if ([v7 nf_object:clientAPIBaseURLString isEqualToObject:clientAPIBaseURLString2])
    {
      v10 = MEMORY[0x1E69E58C0];
      notificationsBaseURLString = [(FCEndpointConfiguration *)self notificationsBaseURLString];
      notificationsBaseURLString2 = [v6 notificationsBaseURLString];
      v13 = [v10 nf_object:notificationsBaseURLString isEqualToObject:notificationsBaseURLString2];
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

  return v13;
}

- (unint64_t)hash
{
  clientAPIBaseURLString = [(FCEndpointConfiguration *)self clientAPIBaseURLString];
  v4 = [clientAPIBaseURLString hash];
  notificationsBaseURLString = [(FCEndpointConfiguration *)self notificationsBaseURLString];
  v6 = [notificationsBaseURLString hash];

  return v6 ^ v4;
}

@end