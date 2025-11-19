@interface OCDDocument
- (OCDDocument)init;
@end

@implementation OCDDocument

- (OCDDocument)init
{
  v18.receiver = self;
  v18.super_class = OCDDocument;
  v2 = [(OCDDocument *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(OCDSummary);
    mSummary = v2->mSummary;
    v2->mSummary = v3;

    v5 = objc_alloc_init(OADBlipCollection);
    mBlips = v2->mBlips;
    v2->mBlips = v5;

    v7 = [[OADTextListStyle alloc] initWithDefaults];
    mDefaultTextStyle = v2->mDefaultTextStyle;
    v2->mDefaultTextStyle = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mCharts = v2->mCharts;
    v2->mCharts = v9;

    v11 = objc_alloc_init(OADTableStyleCollection);
    mTableStyles = v2->mTableStyles;
    v2->mTableStyles = v11;

    v13 = objc_alloc_init(OITSUPointerKeyDictionary);
    mDualDrawableMap = v2->mDualDrawableMap;
    v2->mDualDrawableMap = v13;

    v15 = objc_alloc_init(OADTheme);
    mDocumentTheme = v2->mDocumentTheme;
    v2->mDocumentTheme = v15;
  }

  return v2;
}

@end