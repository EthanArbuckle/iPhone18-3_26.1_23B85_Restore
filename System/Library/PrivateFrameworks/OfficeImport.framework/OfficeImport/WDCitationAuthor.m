@interface WDCitationAuthor
- (WDCitationAuthor)initWithFirst:(id)a3 last:(id)a4;
@end

@implementation WDCitationAuthor

- (WDCitationAuthor)initWithFirst:(id)a3 last:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = WDCitationAuthor;
  v9 = [(WDCitationAuthor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mFirst, a3);
    objc_storeStrong(&v10->mLast, a4);
  }

  return v10;
}

@end