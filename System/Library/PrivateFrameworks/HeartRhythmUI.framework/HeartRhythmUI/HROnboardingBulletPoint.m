@interface HROnboardingBulletPoint
+ (id)bulletPointWithImage:(id)a3 title:(id)a4 body:(id)a5;
- (HROnboardingBulletPoint)initWithImage:(id)a3 title:(id)a4 body:(id)a5;
@end

@implementation HROnboardingBulletPoint

- (HROnboardingBulletPoint)initWithImage:(id)a3 title:(id)a4 body:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HROnboardingBulletPoint;
  v12 = [(HROnboardingBulletPoint *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bulletImage, a3);
    objc_storeStrong(&v13->_bulletTitleString, a4);
    objc_storeStrong(&v13->_bulletBodyString, a5);
  }

  return v13;
}

+ (id)bulletPointWithImage:(id)a3 title:(id)a4 body:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HROnboardingBulletPoint alloc] initWithImage:v9 title:v8 body:v7];

  return v10;
}

@end