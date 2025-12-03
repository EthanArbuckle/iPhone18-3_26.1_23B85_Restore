@interface WDCitationAuthor
- (WDCitationAuthor)initWithFirst:(id)first last:(id)last;
@end

@implementation WDCitationAuthor

- (WDCitationAuthor)initWithFirst:(id)first last:(id)last
{
  firstCopy = first;
  lastCopy = last;
  v12.receiver = self;
  v12.super_class = WDCitationAuthor;
  v9 = [(WDCitationAuthor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mFirst, first);
    objc_storeStrong(&v10->mLast, last);
  }

  return v10;
}

@end