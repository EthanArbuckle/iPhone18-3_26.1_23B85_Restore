@interface OAXBlipContext
- (BOOL)loadDelayedNode:(id)a3;
- (id)description;
@end

@implementation OAXBlipContext

- (BOOL)loadDelayedNode:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(OCPPackage *)self->super.mPackage partForLocation:self->super.mTargetLocation];
    v6 = v5;
    v7 = v5 != 0;
    if (v5)
    {
      v8 = [v5 data];
      [v4 setData:v8];

      [(OCPPackage *)self->super.mPackage resetPartForLocation:self->super.mTargetLocation];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OAXBlipContext;
  v2 = [(OCXDelayedMediaContext *)&v4 description];

  return v2;
}

@end