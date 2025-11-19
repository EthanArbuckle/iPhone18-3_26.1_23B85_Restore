@interface EDResources
- (EDResources)initWithStringOptimization:(BOOL)a3;
- (id)description;
- (void)setColors:(id)a3;
- (void)setThemes:(id)a3;
@end

@implementation EDResources

- (EDResources)initWithStringOptimization:(BOOL)a3
{
  v3 = a3;
  v35.receiver = self;
  v35.super_class = EDResources;
  v4 = [(EDResources *)&v35 init];
  if (v4)
  {
    v5 = objc_alloc_init(EDContentFormatsCollection);
    mContentFormats = v4->mContentFormats;
    v4->mContentFormats = v5;

    v7 = objc_alloc_init(EDFontsCollection);
    mFonts = v4->mFonts;
    v4->mFonts = v7;

    v9 = objc_alloc_init(EDCollection);
    mAlignmentInfos = v4->mAlignmentInfos;
    v4->mAlignmentInfos = v9;

    v11 = objc_alloc_init(EDStylesCollection);
    mStyles = v4->mStyles;
    v4->mStyles = v11;

    v13 = [[EDColorsCollection alloc] initWithDefaultSetup:1];
    mColors = v4->mColors;
    v4->mColors = v13;

    v15 = [[EDColorsCollection alloc] initWithDefaultSetup:0];
    mThemes = v4->mThemes;
    v4->mThemes = v15;

    v17 = objc_alloc_init(EDCollection);
    mNames = v4->mNames;
    v4->mNames = v17;

    v19 = objc_alloc_init(EDLinksCollection);
    mLinks = v4->mLinks;
    v4->mLinks = v19;

    v21 = objc_alloc_init(EDCollection);
    mBorders = v4->mBorders;
    v4->mBorders = v21;

    v23 = objc_alloc_init(EDCollection);
    mBorder = v4->mBorder;
    v4->mBorder = v23;

    v25 = objc_alloc_init(EDCollection);
    mFills = v4->mFills;
    v4->mFills = v25;

    v27 = objc_alloc_init(EDCollection);
    mDifferentialStyles = v4->mDifferentialStyles;
    v4->mDifferentialStyles = v27;

    v29 = objc_alloc_init(EDTableStylesCollection);
    mTableStyles = v4->mTableStyles;
    v4->mTableStyles = v29;

    v31 = off_2799C56A8;
    if (!v3)
    {
      v31 = off_2799C5698;
    }

    v32 = objc_alloc_init(*v31);
    mStrings = v4->mStrings;
    v4->mStrings = v32;
  }

  return v4;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDResources;
  v2 = [(EDResources *)&v4 description];

  return v2;
}

- (void)setColors:(id)a3
{
  v5 = a3;
  mColors = self->mColors;
  p_mColors = &self->mColors;
  if (mColors != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mColors, a3);
    v5 = v8;
  }
}

- (void)setThemes:(id)a3
{
  v5 = a3;
  mThemes = self->mThemes;
  p_mThemes = &self->mThemes;
  if (mThemes != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mThemes, a3);
    v5 = v8;
  }
}

@end