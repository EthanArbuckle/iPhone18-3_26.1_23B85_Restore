@interface FCEndpointConfiguration
- (BOOL)isEqual:(id)a3;
- (FCEndpointConfiguration)initWithClientAPIBaseURLString:(id)a3 notificationsBaseURLString:(id)a4 staticAssetBaseURLString:(id)a5 remoteDataSourceBaseURLString:(id)a6 newsletterAPIBaseURLString:(id)a7 appAnalyticsBaseURLString:(id)a8 fairPlayBaseURLString:(id)a9 searchAPIBaseURLString:(id)a10 puzzlesArchiveAPIBaseURLString:(id)a11 appAnalyticsNotificationReceiptBaseURLString:(id)a12 authTokenAPIBaseURLString:(id)a13 sportsDataVisualizationAPIBaseURLString:(id)a14 fineGrainedNewsletterSubscriptionBaseURLString:(id)a15 appAnalyticsSportsEventsBaseURLString:(id)a16 appAnalyticsAppHealthBaseURLString:(id)a17 appAnalyticsAppHeartbeatBaseURLString:(id)a18 ckOrderFeedBaseURLString:(id)a19 ckMultiFetchBaseURLString:(id)a20 ckRecordFetchBaseURLString:(id)a21 ckEdgeCachedOrderFeedBaseURLString:(id)a22 ckEdgeCachedMultiFetchBaseURLString:(id)a23 smarterFetchBaseURLString:(id)a24;
- (unint64_t)hash;
@end

@implementation FCEndpointConfiguration

- (FCEndpointConfiguration)initWithClientAPIBaseURLString:(id)a3 notificationsBaseURLString:(id)a4 staticAssetBaseURLString:(id)a5 remoteDataSourceBaseURLString:(id)a6 newsletterAPIBaseURLString:(id)a7 appAnalyticsBaseURLString:(id)a8 fairPlayBaseURLString:(id)a9 searchAPIBaseURLString:(id)a10 puzzlesArchiveAPIBaseURLString:(id)a11 appAnalyticsNotificationReceiptBaseURLString:(id)a12 authTokenAPIBaseURLString:(id)a13 sportsDataVisualizationAPIBaseURLString:(id)a14 fineGrainedNewsletterSubscriptionBaseURLString:(id)a15 appAnalyticsSportsEventsBaseURLString:(id)a16 appAnalyticsAppHealthBaseURLString:(id)a17 appAnalyticsAppHeartbeatBaseURLString:(id)a18 ckOrderFeedBaseURLString:(id)a19 ckMultiFetchBaseURLString:(id)a20 ckRecordFetchBaseURLString:(id)a21 ckEdgeCachedOrderFeedBaseURLString:(id)a22 ckEdgeCachedMultiFetchBaseURLString:(id)a23 smarterFetchBaseURLString:(id)a24
{
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v99 = a6;
  v98 = a7;
  v97 = a8;
  v32 = v30;
  v96 = a9;
  v95 = a10;
  v94 = a11;
  v33 = v31;
  v93 = a12;
  v92 = a13;
  v91 = a14;
  v90 = a15;
  v89 = a16;
  v88 = a17;
  v87 = a18;
  v34 = a19;
  v35 = a20;
  v36 = a21;
  v37 = a22;
  v38 = a23;
  v39 = a24;
  v100.receiver = self;
  v100.super_class = FCEndpointConfiguration;
  v40 = [(FCEndpointConfiguration *)&v100 init];
  if (v40)
  {
    v41 = [v29 copy];
    clientAPIBaseURLString = v40->_clientAPIBaseURLString;
    v40->_clientAPIBaseURLString = v41;

    v43 = [v32 copy];
    notificationsBaseURLString = v40->_notificationsBaseURLString;
    v40->_notificationsBaseURLString = v43;

    v45 = [v33 copy];
    staticAssetBaseURLString = v40->_staticAssetBaseURLString;
    v40->_staticAssetBaseURLString = v45;

    v47 = [v99 copy];
    remoteDataSourceBaseURLString = v40->_remoteDataSourceBaseURLString;
    v40->_remoteDataSourceBaseURLString = v47;

    v49 = [v98 copy];
    newsletterAPIBaseURLString = v40->_newsletterAPIBaseURLString;
    v40->_newsletterAPIBaseURLString = v49;

    v51 = [v97 copy];
    appAnalyticsBaseURLString = v40->_appAnalyticsBaseURLString;
    v40->_appAnalyticsBaseURLString = v51;

    v53 = [v96 copy];
    fairPlayBaseURLString = v40->_fairPlayBaseURLString;
    v40->_fairPlayBaseURLString = v53;

    v55 = [v95 copy];
    searchAPIBaseURLString = v40->_searchAPIBaseURLString;
    v40->_searchAPIBaseURLString = v55;

    v57 = [v94 copy];
    puzzlesArchiveAPIBaseURLString = v40->_puzzlesArchiveAPIBaseURLString;
    v40->_puzzlesArchiveAPIBaseURLString = v57;

    v59 = [v93 copy];
    appAnalyticsNotificationReceiptBaseURLString = v40->_appAnalyticsNotificationReceiptBaseURLString;
    v40->_appAnalyticsNotificationReceiptBaseURLString = v59;

    v61 = [v92 copy];
    authTokenAPIBaseURLString = v40->_authTokenAPIBaseURLString;
    v40->_authTokenAPIBaseURLString = v61;

    v63 = [v91 copy];
    sportsDataVisualizationAPIBaseURLString = v40->_sportsDataVisualizationAPIBaseURLString;
    v40->_sportsDataVisualizationAPIBaseURLString = v63;

    v65 = [v90 copy];
    fineGrainedNewsletterSubscriptionBaseURLString = v40->_fineGrainedNewsletterSubscriptionBaseURLString;
    v40->_fineGrainedNewsletterSubscriptionBaseURLString = v65;

    v67 = [v89 copy];
    appAnalyticsSportsEventsBaseURLString = v40->_appAnalyticsSportsEventsBaseURLString;
    v40->_appAnalyticsSportsEventsBaseURLString = v67;

    v69 = [v88 copy];
    appAnalyticsAppHealthBaseURLString = v40->_appAnalyticsAppHealthBaseURLString;
    v40->_appAnalyticsAppHealthBaseURLString = v69;

    v71 = [v87 copy];
    appAnalyticsAppHeartbeatBaseURLString = v40->_appAnalyticsAppHeartbeatBaseURLString;
    v40->_appAnalyticsAppHeartbeatBaseURLString = v71;

    v73 = [v34 copy];
    ckOrderFeedBaseURLString = v40->_ckOrderFeedBaseURLString;
    v40->_ckOrderFeedBaseURLString = v73;

    v75 = [v35 copy];
    ckMultiFetchBaseURLString = v40->_ckMultiFetchBaseURLString;
    v40->_ckMultiFetchBaseURLString = v75;

    v77 = [v36 copy];
    ckRecordFetchBaseURLString = v40->_ckRecordFetchBaseURLString;
    v40->_ckRecordFetchBaseURLString = v77;

    v79 = [v37 copy];
    ckEdgeCachedOrderFeedBaseURLString = v40->_ckEdgeCachedOrderFeedBaseURLString;
    v40->_ckEdgeCachedOrderFeedBaseURLString = v79;

    v81 = [v38 copy];
    ckEdgeCachedMultiFetchBaseURLString = v40->_ckEdgeCachedMultiFetchBaseURLString;
    v40->_ckEdgeCachedMultiFetchBaseURLString = v81;

    v83 = [v39 copy];
    smarterFetchBaseURLString = v40->_smarterFetchBaseURLString;
    v40->_smarterFetchBaseURLString = v83;
  }

  return v40;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
    v8 = [(FCEndpointConfiguration *)self clientAPIBaseURLString];
    v9 = [v6 clientAPIBaseURLString];
    if ([v7 nf_object:v8 isEqualToObject:v9])
    {
      v10 = MEMORY[0x1E69E58C0];
      v11 = [(FCEndpointConfiguration *)self notificationsBaseURLString];
      v12 = [v6 notificationsBaseURLString];
      v13 = [v10 nf_object:v11 isEqualToObject:v12];
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
  v3 = [(FCEndpointConfiguration *)self clientAPIBaseURLString];
  v4 = [v3 hash];
  v5 = [(FCEndpointConfiguration *)self notificationsBaseURLString];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end