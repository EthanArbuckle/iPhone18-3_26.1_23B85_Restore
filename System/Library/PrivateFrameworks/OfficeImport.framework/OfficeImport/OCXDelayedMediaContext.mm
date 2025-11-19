@interface OCXDelayedMediaContext
- (NSString)description;
- (OCXDelayedMediaContext)initWithTargetLocation:(id)a3 package:(id)a4;
@end

@implementation OCXDelayedMediaContext

- (OCXDelayedMediaContext)initWithTargetLocation:(id)a3 package:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = OCXDelayedMediaContext;
  v9 = [(OCXDelayedMediaContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mTargetLocation, a3);
    objc_storeStrong(&v10->mPackage, a4);
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