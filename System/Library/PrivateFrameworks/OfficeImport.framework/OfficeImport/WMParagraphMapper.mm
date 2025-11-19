@interface WMParagraphMapper
+ (void)mapPlaceholderAt:(id)a3 rect:(CGRect)a4 withState:(id)a5;
- (BOOL)containsOfficeArt;
- (BOOL)isCollapsable:(id)a3;
- (BOOL)isTextFrame;
- (WMParagraphMapper)initWithBlock:(id)a3 parent:(id)a4;
- (id)runAtIndex:(unint64_t)a3;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapParagraphBodyWithState:(id)a3;
- (void)mapRunAt:(id)a3 run:(id)a4 withState:(id)a5;
@end

@implementation WMParagraphMapper

- (BOOL)isTextFrame
{
  v2 = [(WDParagraph *)self->wdParagraph properties];
  if ([v2 isHorizontalAnchorOverridden] && objc_msgSend(v2, "horizontalAnchor") || objc_msgSend(v2, "isVerticalAnchorOverridden") && objc_msgSend(v2, "verticalAnchor") != 2 || objc_msgSend(v2, "isHorizontalPositionOverridden") && objc_msgSend(v2, "horizontalPosition"))
  {
    v3 = 1;
  }

  else if ([v2 isVerticalPositionOverridden])
  {
    v3 = [v2 verticalPosition] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)containsOfficeArt
{
  v3 = [(WDParagraph *)self->wdParagraph runCount];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = [(WDParagraph *)self->wdParagraph runAt:v5];
      v8 = [v7 runType];

      if (v8 == 3)
      {
        break;
      }

      v6 = ++v5 < v4;
    }

    while (v4 != v5);
  }

  else
  {
    return 0;
  }

  return v6;
}

+ (void)mapPlaceholderAt:(id)a3 rect:(CGRect)a4 withState:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v10 = a5;
  v11 = [OIXMLElement elementWithType:14];
  [v14 addChild:v11];
  v12 = objc_alloc_init(CMStyle);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  [(CMStyle *)v12 appendPropertyForName:0x286EF67D0 length:4 unit:CGRectGetHeight(v16)];
  v13 = [[CMMapper alloc] initWithParent:0];
  [(CMMapper *)v13 addStyleUsingGlobalCacheTo:v11 style:v12];
  [WMCharacterRunMapper addNonCollapsableSpanAt:v11 withState:v10];
}

- (WMParagraphMapper)initWithBlock:(id)a3 parent:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = WMParagraphMapper;
  v8 = [(CMMapper *)&v11 initWithParent:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->wdParagraph, a3);
  }

  return v9;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  if ([v6 containsParagraph:self->wdParagraph])
  {
    NSLog(@"Bailing out: mapping a paragraph recursively");
  }

  else
  {
    [v6 pushParagraph:self->wdParagraph];
    v8 = [(WMParagraphMapper *)self isTextFrame];
    v9 = [[WMParagraphStyleMapper alloc] initWithWDParagraph:self->wdParagraph parent:self isInTextFrame:v8];
    v10 = [(WMParagraphMapper *)self containsOfficeArt];
    if ([(WMParagraphStyleMapper *)v9 isListItem]|| v10 || v8)
    {
      [OIXMLElement elementWithType:3];
    }

    else
    {
      [OIXMLElement elementWithType:14];
    }
    v11 = ;
    objc_storeStrong(&self->mActiveNode, v11);

    v12 = [(CMMapper *)self archiver];
    v13 = [v12 progressiveMappingIsPausedOnPath:0];

    if (v13)
    {
      [v19 addChild:self->mActiveNode];
    }

    v14 = [(CMMapper *)self archiver];
    [v14 pauseProgressiveMappingOnPath:0];

    if (v10)
    {
      [(CMMapper *)self addAttribute:0x286EEA590 toNode:self->mActiveNode value:@"border:1px solid transparent;"];
    }

    [(WMParagraphStyleMapper *)v9 mapListStyleFromParagraphStyleWithState:v6];
    [(WMParagraphStyleMapper *)v9 mapParagraphStyle];
    [(WMParagraphStyleMapper *)v9 mapListStyleAt:self->mActiveNode state:v6];
    [(WMParagraphStyleMapper *)v9 mapParagraphProperties];
    [(WMParagraphMapper *)self mapParagraphBodyWithState:v6];
    if (!self->mIsDeleted)
    {
      if ([(WMParagraphMapper *)self isCollapsable:self->mActiveNode])
      {
        [(WMParagraphStyleMapper *)v9 destyleEmptyParagraph];
        [WMCharacterRunMapper addNonCollapsableSpanAt:self->mActiveNode withState:v6];
      }

      [(WMParagraphStyleMapper *)v9 mapAt:self->mActiveNode withState:v6];
    }

    if ((v13 & 1) == 0)
    {
      v15 = [(CMMapper *)self archiver];
      [v15 restartProgressiveMappingOnPath:0];

      v16 = [(CMMapper *)self archiver];
      [v16 pushCssToPath:0];

      v17 = [(CMMapper *)self archiver];
      v18 = [(OIXMLNode *)self->mActiveNode XMLString];
      [v17 pushText:v18 toPath:0];
    }

    [v6 popParagraph];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)mapParagraphBodyWithState:(id)a3
{
  v14 = a3;
  v4 = [(WDParagraph *)self->wdParagraph runCount];
  self->mIsDeleted = v4 != 0;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = [(WDParagraph *)self->wdParagraph runAt:v5];
      [v14 setRunIndex:v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v7 fieldMarkerType] == 19)
        {
          v8 = [WMFieldMapper alloc];
          if (v6)
          {
            v9 = v6;
          }

          else
          {
            v9 = self;
          }

          v10 = [(WMFieldMapper *)v8 initWithWDFieldMarker:v7 parent:v9];

          v6 = v10;
        }

        [(WMParagraphMapper *)v6 mapFieldMarkerAt:self->mActiveNode marker:v7 withState:v14];
        if ([v7 fieldMarkerType] != 21)
        {
          goto LABEL_17;
        }

        v11 = [(CMMapper *)v6 parent];

        if (v11 == self)
        {
          v12 = v6;
          v6 = 0;
        }

        else
        {
          [(CMMapper *)v6 parent];
          v6 = v12 = v6;
        }
      }

      else
      {
        if (v6)
        {
          v13 = v6;
        }

        else
        {
          v13 = self;
        }

        v12 = v13;
        [(WMParagraphMapper *)v12 mapRunAt:self->mActiveNode run:v7 withState:v14];
      }

LABEL_17:
      if (v4 == ++v5)
      {

        break;
      }
    }
  }
}

- (void)mapRunAt:(id)a3 run:(id)a4 withState:(id)a5
{
  v9 = a4;
  v7 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v9 isHidden] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[WMCharacterRunMapper alloc] initWithWDCharacterRun:v9 parent:self];
      [(WMCharacterRunMapper *)v8 mapAt:self->mActiveNode withState:v7];
      if (self->mIsDeleted)
      {
        self->mIsDeleted = [(WMCharacterRunMapper *)v8 isDeleted];
      }

      goto LABEL_10;
    }

    if ([v9 runType] == 4 || objc_msgSend(v9, "runType") == 5)
    {
      v8 = [[WMPictureMapper alloc] initWithWDPicture:v9 parent:self];
      [(WMCharacterRunMapper *)v8 mapAt:self->mActiveNode withState:v7];
LABEL_9:
      self->mIsDeleted = 0;
LABEL_10:

      goto LABEL_11;
    }

    if ([v9 runType] == 3)
    {
      v8 = [[WMOfficeArtMapper alloc] initWithWdOfficeArt:v9 parent:self];
      [(WMCharacterRunMapper *)v8 mapAt:self->mActiveNode withState:v7];
      goto LABEL_9;
    }

    if ([v9 runType] == 10)
    {
      v8 = [[WMSymbolMapper alloc] initWithWDSymbol:v9 parent:self];
      [(WMCharacterRunMapper *)v8 mapAt:self->mActiveNode withState:v7];
      goto LABEL_9;
    }

    if ([v9 runType] == 12)
    {
      v8 = [[WMBookmarkMapper alloc] initWithWDBookmark:v9 parent:self];
      [(WMCharacterRunMapper *)v8 mapAt:self->mActiveNode withState:v7];
      goto LABEL_9;
    }
  }

LABEL_11:
}

- (id)runAtIndex:(unint64_t)a3
{
  if ([(WDParagraph *)self->wdParagraph runCount]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(WDParagraph *)self->wdParagraph runAt:a3];
  }

  return v5;
}

- (BOOL)isCollapsable:(id)a3
{
  if (![a3 childrenCount])
  {
    return 1;
  }

  v4 = [(WDParagraph *)self->wdParagraph runCount];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = [(WDParagraph *)self->wdParagraph runAt:v7];
    if ([v8 runType] == 3)
    {
      v6 = 1;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if ([v8 runType] == 10)
    {
      v6 = 0;
      goto LABEL_19;
    }

LABEL_8:

    if (v5 == ++v7)
    {
      return v6;
    }
  }

  v9 = [v8 string];
  v6 = ![v9 length] || objc_msgSend(v9, "length") == 1 && objc_msgSend(v9, "characterAtIndex:", 0) == 32;

LABEL_19:
  return v6;
}

@end