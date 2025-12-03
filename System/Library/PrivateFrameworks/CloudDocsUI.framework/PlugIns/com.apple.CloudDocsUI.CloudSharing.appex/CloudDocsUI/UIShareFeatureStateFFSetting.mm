@interface UIShareFeatureStateFFSetting
- (UIShareFeatureStateFFSetting)initWithDomainID:(id)d featureID:(id)iD valueMode:(int64_t)mode buildType:(int64_t)type;
@end

@implementation UIShareFeatureStateFFSetting

- (UIShareFeatureStateFFSetting)initWithDomainID:(id)d featureID:(id)iD valueMode:(int64_t)mode buildType:(int64_t)type
{
  dCopy = d;
  iDCopy = iD;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000025A8;
  v26[3] = &unk_10004C988;
  v13 = dCopy;
  v27 = v13;
  v14 = iDCopy;
  v28 = v14;
  selfCopy = self;
  v29 = selfCopy;
  v16 = objc_retainBlock(v26);
  v25.receiver = selfCopy;
  v25.super_class = UIShareFeatureStateFFSetting;
  v17 = [(UIShareFeatureStateFFSetting *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_domainID, d);
    objc_storeStrong(&v18->_featureID, iD);
    v18->_valueMode = mode;
    v19 = [NSString stringWithFormat:@"UIShareFeature.override.%@.%@", v13, v14];
    if (type)
    {
      v20 = +[NSUserDefaults standardUserDefaults];
      type = [v20 valueForKey:v19];

      if (!type)
      {
        v21 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.CloudDocsUI.defaults"];
        type = [v21 valueForKey:v19];
      }
    }

    if ((mode - 1) > 1)
    {
      if (type)
      {
        bOOLValue = [type BOOLValue];
        v23 = @"default override";
      }

      else
      {
        if (mode)
        {
          goto LABEL_10;
        }

        [v13 UTF8String];
        [v14 UTF8String];
        bOOLValue = _os_feature_enabled_impl();
        v23 = @"user setting";
      }
    }

    else
    {
      bOOLValue = mode == 1;
      v23 = @"forced value";
    }

    [(UIShareFeatureState *)v18 setIsEnabled:bOOLValue];
    (v16[2])(v16, v23);
LABEL_10:
  }

  return v18;
}

@end