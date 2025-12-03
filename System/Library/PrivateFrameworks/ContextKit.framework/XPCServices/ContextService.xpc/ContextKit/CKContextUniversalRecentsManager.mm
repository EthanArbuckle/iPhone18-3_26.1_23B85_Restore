@interface CKContextUniversalRecentsManager
- (CKContextUniversalRecentsManager)initWithProtocolImpl:(id)impl;
- (id)_extractedTitleForResponse:(id)response;
- (id)_prettifiedUrlStringForURL:(id)l;
- (id)_titleForUserActivity:(id)activity bundleIdentifier:(id)identifier response:(id)response;
- (void)_pruneRecentsFromSafari;
- (void)processDonation:(id)donation retrievingTopics:(BOOL)topics;
@end

@implementation CKContextUniversalRecentsManager

- (CKContextUniversalRecentsManager)initWithProtocolImpl:(id)impl
{
  implCopy = impl;
  v15.receiver = self;
  v15.super_class = CKContextUniversalRecentsManager;
  v5 = [(CKContextUniversalRecentsManager *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_serviceImpl, implCopy);
    v7 = objc_alloc_init(CKContextRecentsPredictionManager);
    predictionManager = v6->_predictionManager;
    v6->_predictionManager = v7;

    [(CKContextRecentsPredictionManager *)v6->_predictionManager startContributingPredictions];
    [(CKContextRecentsPredictionManager *)v6->_predictionManager setDelegate:v6];
    v9 = +[NSUserDefaults standardUserDefaults];
    v6->_allowStructuredExtraction = [v9 BOOLForKey:@"CKContextUniversalRecentsAllowStructuredDataExtraction"];

    v10 = [NSSet setWithArray:&off_1004A9E98];
    v11 = qword_1005572C0;
    qword_1005572C0 = v10;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1002BC254;
    handler[3] = &unk_100484338;
    v14 = v6;
    notify_register_dispatch("com.apple.mobilesafari.ClearHistory", &v6->_notificationToken, &_dispatch_main_q, handler);
  }

  return v6;
}

- (void)processDonation:(id)donation retrievingTopics:(BOOL)topics
{
  donationCopy = donation;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1002BC86C(donationCopy);
  }

  associatedUserActivity = [donationCopy associatedUserActivity];
  userActivity = [associatedUserActivity userActivity];

  if (userActivity)
  {
    v8 = +[NSUUID UUID];
    donorBundleIdentifier = [donationCopy donorBundleIdentifier];
    if (([userActivity isEligibleForPublicIndexing] & 1) == 0 && (objc_msgSend(userActivity, "isEligibleForPrediction") & 1) == 0 && (objc_msgSend(userActivity, "isEligibleForSearch") & 1) == 0)
    {
      recentsCache = [(CKContextRecentsPredictionManager *)self->_predictionManager recentsCache];
      v11 = [(CKContextUniversalRecentsManager *)self _titleForUserActivity:userActivity bundleIdentifier:donorBundleIdentifier response:0];
      [recentsCache insertUserActivityData:userActivity preferredTitle:v11 bundleId:donorBundleIdentifier topics:0 hasAssociatedImageRepresentation:0 uuid:v8];
    }
  }
}

- (id)_titleForUserActivity:(id)activity bundleIdentifier:(id)identifier response:(id)response
{
  activityCopy = activity;
  identifierCopy = identifier;
  responseCopy = response;
  if ([qword_1005572C0 containsObject:identifierCopy])
  {
    v11 = [(CKContextUniversalRecentsManager *)self _extractedTitleForResponse:responseCopy];
    if ([v11 length])
    {
      v12 = v11;
LABEL_9:
      v14 = v12;
      v15 = v12;
      goto LABEL_17;
    }
  }

  else
  {
    v11 = 0;
  }

  title = [activityCopy title];

  if ([title length] && (objc_msgSend(title, "isEqualToString:", identifierCopy) & 1) == 0)
  {
    v16 = [NSURL URLWithString:title];
    v17 = v16;
    if (v16)
    {
      scheme = [v16 scheme];
      if (![scheme length])
      {
LABEL_14:

        goto LABEL_15;
      }

      host = [v17 host];
      v20 = [host length];

      if (v20)
      {
        [(CKContextUniversalRecentsManager *)self _prettifiedUrlStringForURL:v17];
        title = scheme = title;
        goto LABEL_14;
      }
    }

LABEL_15:
    v14 = title;

    v15 = v14;
    goto LABEL_17;
  }

  v14 = [(CKContextUniversalRecentsManager *)self _extractedTitleForResponse:responseCopy];

  if ([v14 length])
  {
    v12 = v14;
    goto LABEL_9;
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (id)_prettifiedUrlStringForURL:(id)l
{
  host = [l host];
  lowercaseString = [host lowercaseString];

  if ([lowercaseString hasPrefix:@"www."])
  {
    v5 = [lowercaseString substringFromIndex:{objc_msgSend(@"www.", "length")}];

    lowercaseString = v5;
  }

  return lowercaseString;
}

- (id)_extractedTitleForResponse:(id)response
{
  if (response)
  {
    [response results];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v16 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          tags = [v8 tags];
          v10 = [tags containsObject:@"CK0001"];

          if (v10)
          {
            title = [v8 title];
            if ([title length])
            {
              goto LABEL_13;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    title = 0;
LABEL_13:
  }

  else
  {
    title = 0;
  }

  return title;
}

- (void)_pruneRecentsFromSafari
{
  recentsCache = [(CKContextRecentsPredictionManager *)self->_predictionManager recentsCache];
  v2 = [NSSet setWithObject:@"com.apple.mobilesafari"];
  [recentsCache pruneRecentsForBundleIdentifiers:v2];
}

@end