@interface EDSheet
+ (EDSheet)sheetWithWorkbook:(id)a3;
- (EDSheet)initWithWorkbook:(id)a3;
- (EDWorkbook)workbook;
- (id)description;
- (id)edCommentForShape:(id)a3;
- (id)edTextBoxForShape:(id)a3;
- (void)addDrawable:(id)a3;
- (void)applyProcessors;
- (void)dealloc;
- (void)doneWithNonRowContent;
- (void)setDefaultGridlineColor:(id)a3;
- (void)setDefaultGridlineColorReference:(id)a3;
- (void)setHeaderFooter:(id)a3;
- (void)setName:(id)a3;
- (void)setPageSetup:(id)a3;
- (void)setup;
- (void)teardown;
@end

@implementation EDSheet

- (void)setup
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mDrawables = self->mDrawables;
  self->mDrawables = v3;

  v5 = [EDProcessors alloc];
  WeakRetained = objc_loadWeakRetained(&self->mWorkbook);
  v7 = [(EDProcessors *)v5 initWithWorkbook:WeakRetained];
  mProcessors = self->mProcessors;
  self->mProcessors = v7;

  v9 = objc_alloc_init(EDWarnings);
  mWarnings = self->mWarnings;
  self->mWarnings = v9;

  v11 = [[OITSUPointerKeyDictionary alloc] initWithCapacity:128];
  mTextBoxMap = self->mTextBoxMap;
  self->mTextBoxMap = v11;

  v13 = [[OITSUPointerKeyDictionary alloc] initWithCapacity:128];
  mCommentMap = self->mCommentMap;
  self->mCommentMap = v13;

  v15 = objc_loadWeakRetained(&self->mWorkbook);
  v16 = [v15 resources];
  v17 = [EDColorReference colorReferenceWithSystemColorID:13 resources:v16];
  [(EDSheet *)self setDefaultGridlineColorReference:v17];

  self->mHidden = 0;
  self->mDisplayFormulas = 0;
  self->mDisplayGridlines = 1;
}

- (void)applyProcessors
{
  [(EDProcessors *)self->mProcessors applyProcessorsWithSheet:self];
  mProcessors = self->mProcessors;

  [(EDProcessors *)mProcessors removeAllObjects];
}

- (void)teardown
{
  objc_storeWeak(&self->mWorkbook, 0);
  v3 = [(NSMutableArray *)self->mDrawables count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(NSMutableArray *)self->mDrawables objectAtIndex:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 setSheet:0];
      }
    }
  }

  mDrawables = self->mDrawables;
  self->mDrawables = 0;

  [(EDProcessors *)self->mProcessors removeAllObjects];
  mProcessors = self->mProcessors;
  self->mProcessors = 0;

  mWarnings = self->mWarnings;
  self->mWarnings = 0;

  mHeaderFooter = self->mHeaderFooter;
  self->mHeaderFooter = 0;

  mPageSetup = self->mPageSetup;
  self->mPageSetup = 0;

  mDefaultGridlineColorReference = self->mDefaultGridlineColorReference;
  self->mDefaultGridlineColorReference = 0;

  mEscherDrawing = self->mEscherDrawing;
  self->mEscherDrawing = 0;

  mTextBoxMap = self->mTextBoxMap;
  self->mTextBoxMap = 0;

  mCommentMap = self->mCommentMap;
  self->mCommentMap = 0;
}

- (void)dealloc
{
  [(EDSheet *)self teardown];
  v3.receiver = self;
  v3.super_class = EDSheet;
  [(EDSheet *)&v3 dealloc];
}

- (EDWorkbook)workbook
{
  WeakRetained = objc_loadWeakRetained(&self->mWorkbook);

  return WeakRetained;
}

- (EDSheet)initWithWorkbook:(id)a3
{
  v4 = a3;
  v5 = [(EDSheet *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mWorkbook, v4);
    [(EDSheet *)v6 setup];
  }

  return v6;
}

+ (EDSheet)sheetWithWorkbook:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithWorkbook:v3];

  return v4;
}

- (void)doneWithNonRowContent
{
  [(NSMutableArray *)self->mDrawables removeAllObjects];
  mEscherDrawing = self->mEscherDrawing;
  self->mEscherDrawing = 0;

  mTextBoxMap = self->mTextBoxMap;
  self->mTextBoxMap = 0;

  mCommentMap = self->mCommentMap;
  self->mCommentMap = 0;
}

- (void)setName:(id)a3
{
  v5 = a3;
  if (self->mName != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mName, a3);
    v5 = v6;
  }
}

- (void)setDefaultGridlineColor:(id)a3
{
  v9 = a3;
  v4 = [EDColorReference alloc];
  WeakRetained = objc_loadWeakRetained(&self->mWorkbook);
  v6 = [WeakRetained resources];
  v7 = [(EDColorReference *)v4 initWithColor:v9 resources:v6];
  mDefaultGridlineColorReference = self->mDefaultGridlineColorReference;
  self->mDefaultGridlineColorReference = v7;
}

- (void)setHeaderFooter:(id)a3
{
  v5 = a3;
  if (self->mHeaderFooter != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mHeaderFooter, a3);
    v5 = v6;
  }
}

- (void)setPageSetup:(id)a3
{
  v5 = a3;
  if (self->mPageSetup != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mPageSetup, a3);
    v5 = v6;
  }
}

- (void)addDrawable:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(EDSheet *)self workbook];
    v5 = [v4 defaultTextStyle];
    [v6 setParentTextListStyle:v5];

    [(NSMutableArray *)self->mDrawables addObject:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setSheet:self];
    }
  }
}

- (id)edTextBoxForShape:(id)a3
{
  v3 = [(OITSUNoCopyDictionary *)self->mTextBoxMap objectForKey:a3];

  return v3;
}

- (id)edCommentForShape:(id)a3
{
  v3 = [(OITSUNoCopyDictionary *)self->mCommentMap objectForKey:a3];

  return v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDSheet;
  v2 = [(EDSheet *)&v4 description];

  return v2;
}

- (void)setDefaultGridlineColorReference:(id)a3
{
  v5 = a3;
  if (self->mDefaultGridlineColorReference != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mDefaultGridlineColorReference, a3);
    v5 = v6;
  }
}

@end