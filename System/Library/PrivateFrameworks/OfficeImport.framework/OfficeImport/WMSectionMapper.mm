@interface WMSectionMapper
+ (BOOL)isContentEmpty:(id)empty;
- (WMSectionMapper)initWithWDSection:(id)section breakAtStart:(BOOL)start breakAtEnd:(BOOL)end parent:(id)parent;
- (void)MapSectionStyleAt:(id)at;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapFooterAt:(id)at withState:(id)state;
- (void)mapHeaderAt:(id)at withState:(id)state;
@end

@implementation WMSectionMapper

- (WMSectionMapper)initWithWDSection:(id)section breakAtStart:(BOOL)start breakAtEnd:(BOOL)end parent:(id)parent
{
  sectionCopy = section;
  parentCopy = parent;
  v17.receiver = self;
  v17.super_class = WMSectionMapper;
  v13 = [(CMMapper *)&v17 initWithParent:parentCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->wdSection, section);
    v14->mTopMargin = [(WDSection *)v14->wdSection topMargin];
    v14->mLeftMargin = [(WDSection *)v14->wdSection leftMargin];
    v14->mBreakAtStart = start;
    v14->mBreakAtEnd = end;
    titlePage = [(WDSection *)v14->wdSection isTitlePageOverridden]&& [(WDSection *)v14->wdSection titlePage];
    v14->mIsTitlePage = titlePage;
  }

  return v14;
}

- (void)MapSectionStyleAt:(id)at
{
  atCopy = at;
  v4 = objc_alloc_init(WMStyle);
  [(CMMapper *)self addStyleUsingGlobalCacheTo:atCopy style:v4];
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v7 = [OIXMLElement elementWithType:3];
  [atCopy addChild:v7];
  *&v8 = self->mTopMargin;
  [stateCopy setTopMargin:v8];
  *&v9 = self->mLeftMargin;
  [stateCopy setLeftMargin:v9];
  v10 = [(WDSection *)self->wdSection pageHeight]/ 20.0;
  *&v10 = v10;
  [stateCopy setPageHeight:v10];
  if (!self->mBreakAtStart)
  {
    currentPage = [stateCopy currentPage];
    if (currentPage)
    {
      [stateCopy setCurrentPage:(currentPage - 1)];
    }
  }

  [(WMSectionMapper *)self MapSectionStyleAt:v7];
  text = [(WDSection *)self->wdSection text];
  if ([text blockCount])
  {
    [(WMSectionMapper *)self mapHeaderAt:v7 withState:stateCopy];
    v13 = [[WMSectionContentMapper alloc] initWithWDText:text parent:self];
    [(WMSectionContentMapper *)v13 mapAt:v7 withState:stateCopy];
    [(WMSectionMapper *)self mapFooterAt:v7 withState:stateCopy];
  }
}

- (void)mapHeaderAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  firstPageHeader = [(WDSection *)self->wdSection firstPageHeader];
  if ([WMSectionMapper isContentEmpty:firstPageHeader])
  {
  }

  else
  {
    mIsTitlePage = self->mIsTitlePage;

    if (mIsTitlePage)
    {
      firstPageHeader2 = [(WDSection *)self->wdSection firstPageHeader];
      goto LABEL_13;
    }
  }

  oddPageHeader = [(WDSection *)self->wdSection oddPageHeader];
  if ([WMSectionMapper isContentEmpty:oddPageHeader])
  {
  }

  else
  {
    v11 = self->mIsTitlePage;

    if (!v11)
    {
      firstPageHeader2 = [(WDSection *)self->wdSection oddPageHeader];
      [stateCopy setLastHeader:firstPageHeader2];
      goto LABEL_13;
    }
  }

  evenPageHeader = [(WDSection *)self->wdSection evenPageHeader];
  if ([WMSectionMapper isContentEmpty:evenPageHeader])
  {

    goto LABEL_14;
  }

  v13 = self->mIsTitlePage;

  if (v13)
  {
LABEL_14:
    firstPageHeader2 = [stateCopy lastHeader];
    if (!firstPageHeader2)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  firstPageHeader2 = [(WDSection *)self->wdSection evenPageHeader];
  [stateCopy setLastHeader:firstPageHeader2];
LABEL_13:
  if (!firstPageHeader2)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (self->mBreakAtStart)
  {
    v14 = [OIXMLElement elementWithType:3];
    archiver = [(CMMapper *)self archiver];
    v16 = [archiver progressiveMappingIsPausedOnPath:0];

    if (v16)
    {
      [atCopy addChild:v14];
    }

    archiver2 = [(CMMapper *)self archiver];
    [archiver2 pauseProgressiveMappingOnPath:0];

    v18 = objc_alloc_init(CMStyle);
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v14 style:v18];
    [stateCopy setIsHeaderOrFooter:1];
    v19 = [[WMSectionContentMapper alloc] initWithWDText:firstPageHeader2 parent:self];
    [(WMSectionContentMapper *)v19 mapAt:v14 withState:stateCopy];
    [stateCopy setIsHeaderOrFooter:0];
    archiver3 = [(CMMapper *)self archiver];
    [archiver3 restartProgressiveMappingOnPath:0];

    if ((v16 & 1) == 0)
    {
      archiver4 = [(CMMapper *)self archiver];
      [archiver4 restartProgressiveMappingOnPath:0];

      archiver5 = [(CMMapper *)self archiver];
      [archiver5 pushCssToPath:0];

      archiver6 = [(CMMapper *)self archiver];
      xMLString = [v14 XMLString];
      [archiver6 pushText:xMLString toPath:0];
    }

    [stateCopy setIsHeaderOrFooter:0];
  }

LABEL_21:
}

- (void)mapFooterAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  firstPageFooter = [(WDSection *)self->wdSection firstPageFooter];
  v8 = [WMSectionMapper isContentEmpty:firstPageFooter];

  if (v8)
  {
    oddPageFooter = [(WDSection *)self->wdSection oddPageFooter];
    v10 = [WMSectionMapper isContentEmpty:oddPageFooter];

    if (v10)
    {
      evenPageFooter = [(WDSection *)self->wdSection evenPageFooter];
      v12 = [WMSectionMapper isContentEmpty:evenPageFooter];

      if (v12)
      {
        v13 = 0;
        goto LABEL_11;
      }

      evenPageFooter2 = [(WDSection *)self->wdSection evenPageFooter];
    }

    else
    {
      evenPageFooter2 = [(WDSection *)self->wdSection oddPageFooter];
    }
  }

  else
  {
    evenPageFooter2 = [(WDSection *)self->wdSection firstPageFooter];
  }

  v13 = evenPageFooter2;
  if (!evenPageFooter2 || ![evenPageFooter2 blockCount])
  {
LABEL_11:
    lastFooter = [stateCopy lastFooter];

    v13 = lastFooter;
    if (!lastFooter)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  [stateCopy setLastFooter:v13];
LABEL_12:
  if (self->mBreakAtEnd)
  {
    [stateCopy setIsHeaderOrFooter:1];
    v16 = [[WMSectionContentMapper alloc] initWithWDText:v13 parent:self];
    [(WMSectionContentMapper *)v16 mapAt:atCopy withState:stateCopy];
    [stateCopy setIsHeaderOrFooter:0];
  }

LABEL_14:
}

+ (BOOL)isContentEmpty:(id)empty
{
  emptyCopy = empty;
  v4 = emptyCopy;
  if (emptyCopy)
  {
    blockCount = [emptyCopy blockCount];
    if (blockCount)
    {
      for (i = 0; blockCount != i; ++i)
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