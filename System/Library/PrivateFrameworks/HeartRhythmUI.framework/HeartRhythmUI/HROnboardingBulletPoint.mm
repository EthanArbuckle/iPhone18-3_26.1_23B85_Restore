@interface HROnboardingBulletPoint
+ (id)bulletPointWithImage:(id)image title:(id)title body:(id)body;
- (HROnboardingBulletPoint)initWithImage:(id)image title:(id)title body:(id)body;
@end

@implementation HROnboardingBulletPoint

- (HROnboardingBulletPoint)initWithImage:(id)image title:(id)title body:(id)body
{
  imageCopy = image;
  titleCopy = title;
  bodyCopy = body;
  v15.receiver = self;
  v15.super_class = HROnboardingBulletPoint;
  v12 = [(HROnboardingBulletPoint *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bulletImage, image);
    objc_storeStrong(&v13->_bulletTitleString, title);
    objc_storeStrong(&v13->_bulletBodyString, body);
  }

  return v13;
}

+ (id)bulletPointWithImage:(id)image title:(id)title body:(id)body
{
  bodyCopy = body;
  titleCopy = title;
  imageCopy = image;
  v10 = [[HROnboardingBulletPoint alloc] initWithImage:imageCopy title:titleCopy body:bodyCopy];

  return v10;
}

@end