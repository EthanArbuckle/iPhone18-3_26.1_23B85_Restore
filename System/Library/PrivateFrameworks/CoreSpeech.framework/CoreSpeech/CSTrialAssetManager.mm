@interface CSTrialAssetManager
+ (id)sharedInstance;
- (CSTrialAssetManager)init;
- (void)getInstalledAssetofType:(unint64_t)type forLocale:(id)locale completion:(id)completion;
@end

@implementation CSTrialAssetManager

- (void)getInstalledAssetofType:(unint64_t)type forLocale:(id)locale completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014D07C;
  v7[3] = &unk_100252DC8;
  v7[4] = self;
  completionCopy = completion;
  typeCopy = type;
  v6 = completionCopy;
  [CSUtils getTrialIdsForAssetType:type withCompletion:v7];
}

- (CSTrialAssetManager)init
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CSTrialAssetManager;
    v4 = [(CSTrialAssetManager *)&v20 init];
    if (v4)
    {
      v5 = +[NSMutableDictionary dictionary];
      if (+[CSUtils supportTrialMitigationAssets])
      {
        [NSArray arrayWithObjects:&off_10025E810, &off_10025E828, 0];
      }

      else
      {
        [NSArray arrayWithObjects:&off_10025E840, &off_10025E858, 0];
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v6 = v17 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            unsignedIntegerValue = [*(*(&v16 + 1) + 8 * i) unsignedIntegerValue];
            v14[0] = _NSConcreteStackBlock;
            v14[1] = 3221225472;
            v14[2] = sub_10014D71C;
            v14[3] = &unk_100252DA0;
            v15 = v5;
            [CSUtils getTrialIdsForAssetType:unsignedIntegerValue withCompletion:v14];
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v8);
      }

      trialClientDict = v4->_trialClientDict;
      v4->_trialClientDict = v5;
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)sharedInstance
{
  if (qword_10029E550 != -1)
  {
    dispatch_once(&qword_10029E550, &stru_100252D78);
  }

  v3 = qword_10029E548;

  return v3;
}

@end