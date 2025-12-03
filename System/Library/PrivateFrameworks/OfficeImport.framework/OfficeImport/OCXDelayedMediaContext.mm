@interface OCXDelayedMediaContext
- (NSString)description;
- (OCXDelayedMediaContext)initWithTargetLocation:(id)location package:(id)package;
@end

@implementation OCXDelayedMediaContext

- (OCXDelayedMediaContext)initWithTargetLocation:(id)location package:(id)package
{
  locationCopy = location;
  packageCopy = package;
  v12.receiver = self;
  v12.super_class = OCXDelayedMediaContext;
  v9 = [(OCXDelayedMediaContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mTargetLocation, location);
    objc_storeStrong(&v10->mPackage, package);
  }

  return v10;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = OCXDelayedMediaContext;
  v2 = [(OCXDelayedMediaContext *)&v4 description];

  return v2;
}

@end