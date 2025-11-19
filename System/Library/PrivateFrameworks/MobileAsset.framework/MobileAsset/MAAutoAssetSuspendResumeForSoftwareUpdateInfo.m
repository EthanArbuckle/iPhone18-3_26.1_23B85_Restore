@interface MAAutoAssetSuspendResumeForSoftwareUpdateInfo
+ (id)newServerMessageClasses:(id)a3;
- (MAAutoAssetSuspendResumeForSoftwareUpdateInfo)initWithCoder:(id)a3;
@end

@implementation MAAutoAssetSuspendResumeForSoftwareUpdateInfo

+ (id)newServerMessageClasses:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    if (objc_opt_class())
    {
      v4 = [v3 setByAddingObject:objc_opt_class()];
    }

    if (objc_opt_class())
    {
      v5 = [v4 setByAddingObject:objc_opt_class()];

      v4 = v5;
    }

    if (objc_opt_class())
    {
      v6 = [v4 setByAddingObject:objc_opt_class()];

      v4 = v6;
    }

    if (objc_opt_class())
    {
      v7 = [v4 setByAddingObject:objc_opt_class()];

      v4 = v7;
    }

    if (objc_opt_class())
    {
      v8 = [v4 setByAddingObject:objc_opt_class()];

      v4 = v8;
    }

    if (objc_opt_class())
    {
      v9 = [v4 setByAddingObject:objc_opt_class()];

      v4 = v9;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MAAutoAssetSuspendResumeForSoftwareUpdateInfo)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateInfo;
  return [(MAAutoAssetSuspendResumeForSoftwareUpdateInfo *)&v4 init];
}

@end