@interface MAAutoAssetSuspendResumeForSoftwareUpdateInfo
+ (id)newServerMessageClasses:(id)classes;
- (MAAutoAssetSuspendResumeForSoftwareUpdateInfo)initWithCoder:(id)coder;
@end

@implementation MAAutoAssetSuspendResumeForSoftwareUpdateInfo

+ (id)newServerMessageClasses:(id)classes
{
  classesCopy = classes;
  if (classesCopy)
  {
    v4 = classesCopy;
    if (objc_opt_class())
    {
      v4 = [classesCopy setByAddingObject:objc_opt_class()];
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

- (MAAutoAssetSuspendResumeForSoftwareUpdateInfo)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateInfo;
  return [(MAAutoAssetSuspendResumeForSoftwareUpdateInfo *)&v4 init];
}

@end