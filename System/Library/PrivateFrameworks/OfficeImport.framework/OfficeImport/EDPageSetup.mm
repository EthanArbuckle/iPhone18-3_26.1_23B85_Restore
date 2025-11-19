@interface EDPageSetup
+ (id)pageSetup;
- (EDPageSetup)init;
- (id)description;
@end

@implementation EDPageSetup

+ (id)pageSetup
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (EDPageSetup)init
{
  v3.receiver = self;
  v3.super_class = EDPageSetup;
  result = [(EDPageSetup *)&v3 init];
  if (result)
  {
    *&result->mFirstPageNumber = vdupq_n_s64(1uLL);
    *&result->mFitToWidth = xmmword_25D6FECA0;
    result->mCustomFirstPageNumber = 0;
    *&result->mOrientation = 1;
  }

  return result;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDPageSetup;
  v2 = [(EDPageSetup *)&v4 description];

  return v2;
}

@end