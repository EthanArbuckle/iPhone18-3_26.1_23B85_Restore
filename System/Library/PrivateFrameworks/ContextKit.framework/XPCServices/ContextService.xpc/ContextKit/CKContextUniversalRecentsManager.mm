@interface CKContextUniversalRecentsManager
- (CKContextUniversalRecentsManager)initWithProtocolImpl:(id)a3;
- (id)_extractedTitleForResponse:(id)a3;
- (id)_prettifiedUrlStringForURL:(id)a3;
- (id)_titleForUserActivity:(id)a3 bundleIdentifier:(id)a4 response:(id)a5;
- (void)_pruneRecentsFromSafari;
- (void)processDonation:(id)a3 retrievingTopics:(BOOL)a4;
@end

@implementation CKContextUniversalRecentsManager

- (CKContextUniversalRecentsManager)initWithProtocolImpl:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CKContextUniversalRecentsManager;
  v5 = [(CKContextUniversalRecentsManager *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_serviceImpl, v4);
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

- (void)processDonation:(id)a3 retrievingTopics:(BOOL)a4
{
  v5 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1002BC86C(v5);
  }

  v6 = [v5 associatedUserActivity];
  v7 = [v6 userActivity];

  if (v7)
  {
    v8 = +[NSUUID UUID];
    v9 = [v5 donorBundleIdentifier];
    if (([v7 isEligibleForPublicIndexing] & 1) == 0 && (objc_msgSend(v7, "isEligibleForPrediction") & 1) == 0 && (objc_msgSend(v7, "isEligibleForSearch") & 1) == 0)
    {
      v10 = [(CKContextRecentsPredictionManager *)self->_predictionManager recentsCache];
      v11 = [(CKContextUniversalRecentsManager *)self _titleForUserActivity:v7 bundleIdentifier:v9 response:0];
      [v10 insertUserActivityData:v7 preferredTitle:v11 bundleId:v9 topics:0 hasAssociatedImageRepresentation:0 uuid:v8];
    }
  }
}

- (id)_titleForUserActivity:(id)a3 bundleIdentifier:(id)a4 response:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([qword_1005572C0 containsObject:v9])
  {
    v11 = [(CKContextUniversalRecentsManager *)self _extractedTitleForResponse:v10];
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

  v13 = [v8 title];

  if ([v13 length] && (objc_msgSend(v13, "isEqualToString:", v9) & 1) == 0)
  {
    v16 = [NSURL URLWithString:v13];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 scheme];
      if (![v18 length])
      {
LABEL_14:

        goto LABEL_15;
      }

      v19 = [v17 host];
      v20 = [v19 length];

      if (v20)
      {
        [(CKContextUniversalRecentsManager *)self _prettifiedUrlStringForURL:v17];
        v13 = v18 = v13;
        goto LABEL_14;
      }
    }

LABEL_15:
    v14 = v13;

    v15 = v14;
    goto LABEL_17;
  }

  v14 = [(CKContextUniversalRecentsManager *)self _extractedTitleForResponse:v10];

  if ([v14 length])
  {
    v12 = v14;
    goto LABEL_9;
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (id)_prettifiedUrlStringForURL:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 lowercaseString];

  if ([v4 hasPrefix:@"www."])
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(@"www.", "length")}];

    v4 = v5;
  }

  return v4;
}

- (id)_extractedTitleForResponse:(id)a3
{
  if (a3)
  {
    [a3 results];
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
          v9 = [v8 tags];
          v10 = [v9 containsObject:@"CK0001"];

          if (v10)
          {
            v11 = [v8 title];
            if ([v11 length])
            {
              goto LABEL_13;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_pruneRecentsFromSafari
{
  v3 = [(CKContextRecentsPredictionManager *)self->_predictionManager recentsCache];
  v2 = [NSSet setWithObject:@"com.apple.mobilesafari"];
  [v3 pruneRecentsForBundleIdentifiers:v2];
}

@end