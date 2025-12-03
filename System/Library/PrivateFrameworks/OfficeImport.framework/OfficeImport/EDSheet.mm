@interface EDSheet
+ (EDSheet)sheetWithWorkbook:(id)workbook;
- (EDSheet)initWithWorkbook:(id)workbook;
- (EDWorkbook)workbook;
- (id)description;
- (id)edCommentForShape:(id)shape;
- (id)edTextBoxForShape:(id)shape;
- (void)addDrawable:(id)drawable;
- (void)applyProcessors;
- (void)dealloc;
- (void)doneWithNonRowContent;
- (void)setDefaultGridlineColor:(id)color;
- (void)setDefaultGridlineColorReference:(id)reference;
- (void)setHeaderFooter:(id)footer;
- (void)setName:(id)name;
- (void)setPageSetup:(id)setup;
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
  resources = [v15 resources];
  v17 = [EDColorReference colorReferenceWithSystemColorID:13 resources:resources];
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

- (EDSheet)initWithWorkbook:(id)workbook
{
  workbookCopy = workbook;
  v5 = [(EDSheet *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mWorkbook, workbookCopy);
    [(EDSheet *)v6 setup];
  }

  return v6;
}

+ (EDSheet)sheetWithWorkbook:(id)workbook
{
  workbookCopy = workbook;
  v4 = [objc_alloc(objc_opt_class()) initWithWorkbook:workbookCopy];

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

- (void)setName:(id)name
{
  nameCopy = name;
  if (self->mName != nameCopy)
  {
    v6 = nameCopy;
    objc_storeStrong(&self->mName, name);
    nameCopy = v6;
  }
}

- (void)setDefaultGridlineColor:(id)color
{
  colorCopy = color;
  v4 = [EDColorReference alloc];
  WeakRetained = objc_loadWeakRetained(&self->mWorkbook);
  resources = [WeakRetained resources];
  v7 = [(EDColorReference *)v4 initWithColor:colorCopy resources:resources];
  mDefaultGridlineColorReference = self->mDefaultGridlineColorReference;
  self->mDefaultGridlineColorReference = v7;
}

- (void)setHeaderFooter:(id)footer
{
  footerCopy = footer;
  if (self->mHeaderFooter != footerCopy)
  {
    v6 = footerCopy;
    objc_storeStrong(&self->mHeaderFooter, footer);
    footerCopy = v6;
  }
}

- (void)setPageSetup:(id)setup
{
  setupCopy = setup;
  if (self->mPageSetup != setupCopy)
  {
    v6 = setupCopy;
    objc_storeStrong(&self->mPageSetup, setup);
    setupCopy = v6;
  }
}

- (void)addDrawable:(id)drawable
{
  drawableCopy = drawable;
  if (drawableCopy)
  {
    workbook = [(EDSheet *)self workbook];
    defaultTextStyle = [workbook defaultTextStyle];
    [drawableCopy setParentTextListStyle:defaultTextStyle];

    [(NSMutableArray *)self->mDrawables addObject:drawableCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [drawableCopy setSheet:self];
    }
  }
}

- (id)edTextBoxForShape:(id)shape
{
  v3 = [(OITSUNoCopyDictionary *)self->mTextBoxMap objectForKey:shape];

  return v3;
}

- (id)edCommentForShape:(id)shape
{
  v3 = [(OITSUNoCopyDictionary *)self->mCommentMap objectForKey:shape];

  return v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDSheet;
  v2 = [(EDSheet *)&v4 description];

  return v2;
}

- (void)setDefaultGridlineColorReference:(id)reference
{
  referenceCopy = reference;
  if (self->mDefaultGridlineColorReference != referenceCopy)
  {
    v6 = referenceCopy;
    objc_storeStrong(&self->mDefaultGridlineColorReference, reference);
    referenceCopy = v6;
  }
}

@end