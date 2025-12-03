@interface WDAnnotationData
- (WDAnnotationData)initWithText:(id)text;
@end

@implementation WDAnnotationData

- (WDAnnotationData)initWithText:(id)text
{
  textCopy = text;
  v13.receiver = self;
  v13.super_class = WDAnnotationData;
  v6 = [(WDAnnotationData *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mText, text);
    date = [MEMORY[0x277CBEAA8] date];
    mDate = v7->mDate;
    v7->mDate = date;

    v10 = objc_alloc_init(MEMORY[0x277CCACA8]);
    mOwner = v7->mOwner;
    v7->mOwner = v10;
  }

  return v7;
}

@end