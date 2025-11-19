@interface WMSectionMapper
+ (BOOL)isContentEmpty:(id)a3;
- (WMSectionMapper)initWithWDSection:(id)a3 breakAtStart:(BOOL)a4 breakAtEnd:(BOOL)a5 parent:(id)a6;
- (void)MapSectionStyleAt:(id)a3;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapFooterAt:(id)a3 withState:(id)a4;
- (void)mapHeaderAt:(id)a3 withState:(id)a4;
@end

@implementation WMSectionMapper

- (WMSectionMapper)initWithWDSection:(id)a3 breakAtStart:(BOOL)a4 breakAtEnd:(BOOL)a5 parent:(id)a6
{
  v11 = a3;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = WMSectionMapper;
  v13 = [(CMMapper *)&v17 initWithParent:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->wdSection, a3);
    v14->mTopMargin = [(WDSection *)v14->wdSection topMargin];
    v14->mLeftMargin = [(WDSection *)v14->wdSection leftMargin];
    v14->mBreakAtStart = a4;
    v14->mBreakAtEnd = a5;
    v15 = [(WDSection *)v14->wdSection isTitlePageOverridden]&& [(WDSection *)v14->wdSection titlePage];
    v14->mIsTitlePage = v15;
  }

  return v14;
}

- (void)MapSectionStyleAt:(id)a3
{
  v5 = a3;
  v4 = objc_alloc_init(WMStyle);
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v5 style:v4];
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [OIXMLElement elementWithType:3];
  [v14 addChild:v7];
  *&v8 = self->mTopMargin;
  [v6 setTopMargin:v8];
  *&v9 = self->mLeftMargin;
  [v6 setLeftMargin:v9];
  v10 = [(WDSection *)self->wdSection pageHeight]/ 20.0;
  *&v10 = v10;
  [v6 setPageHeight:v10];
  if (!self->mBreakAtStart)
  {
    v11 = [v6 currentPage];
    if (v11)
    {
      [v6 setCurrentPage:(v11 - 1)];
    }
  }

  [(WMSectionMapper *)self MapSectionStyleAt:v7];
  v12 = [(WDSection *)self->wdSection text];
  if ([v12 blockCount])
  {
    [(WMSectionMapper *)self mapHeaderAt:v7 withState:v6];
    v13 = [[WMSectionContentMapper alloc] initWithWDText:v12 parent:self];
    [(WMSectionContentMapper *)v13 mapAt:v7 withState:v6];
    [(WMSectionMapper *)self mapFooterAt:v7 withState:v6];
  }
}

- (void)mapHeaderAt:(id)a3 withState:(id)a4
{
  v25 = a3;
  v6 = a4;
  v7 = [(WDSection *)self->wdSection firstPageHeader];
  if ([WMSectionMapper isContentEmpty:v7])
  {
  }

  else
  {
    mIsTitlePage = self->mIsTitlePage;

    if (mIsTitlePage)
    {
      v9 = [(WDSection *)self->wdSection firstPageHeader];
      goto LABEL_13;
    }
  }

  v10 = [(WDSection *)self->wdSection oddPageHeader];
  if ([WMSectionMapper isContentEmpty:v10])
  {
  }

  else
  {
    v11 = self->mIsTitlePage;

    if (!v11)
    {
      v9 = [(WDSection *)self->wdSection oddPageHeader];
      [v6 setLastHeader:v9];
      goto LABEL_13;
    }
  }

  v12 = [(WDSection *)self->wdSection evenPageHeader];
  if ([WMSectionMapper isContentEmpty:v12])
  {

    goto LABEL_14;
  }

  v13 = self->mIsTitlePage;

  if (v13)
  {
LABEL_14:
    v9 = [v6 lastHeader];
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v9 = [(WDSection *)self->wdSection evenPageHeader];
  [v6 setLastHeader:v9];
LABEL_13:
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (self->mBreakAtStart)
  {
    v14 = [OIXMLElement elementWithType:3];
    v15 = [(CMMapper *)self archiver];
    v16 = [v15 progressiveMappingIsPausedOnPath:0];

    if (v16)
    {
      [v25 addChild:v14];
    }

    v17 = [(CMMapper *)self archiver];
    [v17 pauseProgressiveMappingOnPath:0];

    v18 = objc_alloc_init(CMStyle);
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v14 style:v18];
    [v6 setIsHeaderOrFooter:1];
    v19 = [[WMSectionContentMapper alloc] initWithWDText:v9 parent:self];
    [(WMSectionContentMapper *)v19 mapAt:v14 withState:v6];
    [v6 setIsHeaderOrFooter:0];
    v20 = [(CMMapper *)self archiver];
    [v20 restartProgressiveMappingOnPath:0];

    if ((v16 & 1) == 0)
    {
      v21 = [(CMMapper *)self archiver];
      [v21 restartProgressiveMappingOnPath:0];

      v22 = [(CMMapper *)self archiver];
      [v22 pushCssToPath:0];

      v23 = [(CMMapper *)self archiver];
      v24 = [v14 XMLString];
      [v23 pushText:v24 toPath:0];
    }

    [v6 setIsHeaderOrFooter:0];
  }

LABEL_21:
}

- (void)mapFooterAt:(id)a3 withState:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(WDSection *)self->wdSection firstPageFooter];
  v8 = [WMSectionMapper isContentEmpty:v7];

  if (v8)
  {
    v9 = [(WDSection *)self->wdSection oddPageFooter];
    v10 = [WMSectionMapper isContentEmpty:v9];

    if (v10)
    {
      v11 = [(WDSection *)self->wdSection evenPageFooter];
      v12 = [WMSectionMapper isContentEmpty:v11];

      if (v12)
      {
        v13 = 0;
        goto LABEL_11;
      }

      v14 = [(WDSection *)self->wdSection evenPageFooter];
    }

    else
    {
      v14 = [(WDSection *)self->wdSection oddPageFooter];
    }
  }

  else
  {
    v14 = [(WDSection *)self->wdSection firstPageFooter];
  }

  v13 = v14;
  if (!v14 || ![v14 blockCount])
  {
LABEL_11:
    v15 = [v6 lastFooter];

    v13 = v15;
    if (!v15)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  [v6 setLastFooter:v13];
LABEL_12:
  if (self->mBreakAtEnd)
  {
    [v6 setIsHeaderOrFooter:1];
    v16 = [[WMSectionContentMapper alloc] initWithWDText:v13 parent:self];
    [(WMSectionContentMapper *)v16 mapAt:v17 withState:v6];
    [v6 setIsHeaderOrFooter:0];
  }

LABEL_14:
}

+ (BOOL)isContentEmpty:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 blockCount];
    if (v5)
    {
      for (i = 0; v5 != i; ++i)
      {
        v7 = [v4 blockAt:i];
        if ([v7 blockType])
        {
          if ([v7 blockType] == 1)
          {
            goto LABEL_11;
          }
        }

        else if ([v7 runCount])
        {
LABEL_11:

          v8 = 0;
          goto LABEL_10;
        }
      }
    }
  }

  v8 = 1;
LABEL_10:

  return v8;
}

@end