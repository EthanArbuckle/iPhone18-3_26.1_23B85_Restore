@interface UIShareFeatureStateFFSetting
- (UIShareFeatureStateFFSetting)initWithDomainID:(id)a3 featureID:(id)a4 valueMode:(int64_t)a5 buildType:(int64_t)a6;
@end

@implementation UIShareFeatureStateFFSetting

- (UIShareFeatureStateFFSetting)initWithDomainID:(id)a3 featureID:(id)a4 valueMode:(int64_t)a5 buildType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000025A8;
  v26[3] = &unk_10004C988;
  v13 = v11;
  v27 = v13;
  v14 = v12;
  v28 = v14;
  v15 = self;
  v29 = v15;
  v16 = objc_retainBlock(v26);
  v25.receiver = v15;
  v25.super_class = UIShareFeatureStateFFSetting;
  v17 = [(UIShareFeatureStateFFSetting *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_domainID, a3);
    objc_storeStrong(&v18->_featureID, a4);
    v18->_valueMode = a5;
    v19 = [NSString stringWithFormat:@"UIShareFeature.override.%@.%@", v13, v14];
    if (a6)
    {
      v20 = +[NSUserDefaults standardUserDefaults];
      a6 = [v20 valueForKey:v19];

      if (!a6)
      {
        v21 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.CloudDocsUI.defaults"];
        a6 = [v21 valueForKey:v19];
      }
    }

    if ((a5 - 1) > 1)
    {
      if (a6)
      {
        v22 = [a6 BOOLValue];
        v23 = @"default override";
      }

      else
      {
        if (a5)
        {
          goto LABEL_10;
        }

        [v13 UTF8String];
        [v14 UTF8String];
        v22 = _os_feature_enabled_impl();
        v23 = @"user setting";
      }
    }

    else
    {
      v22 = a5 == 1;
      v23 = @"forced value";
    }

    [(UIShareFeatureState *)v18 setIsEnabled:v22];
    (v16[2])(v16, v23);
LABEL_10:
  }

  return v18;
}

@end