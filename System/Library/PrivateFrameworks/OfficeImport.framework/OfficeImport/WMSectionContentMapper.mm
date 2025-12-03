@interface WMSectionContentMapper
- (WMSectionContentMapper)initWithWDText:(id)text parent:(id)parent;
- (id)paragraphAtIndex:(unint64_t)index;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapTextFrameAt:(id)at withState:(id)state;
- (void)mapTextFrameStyleTo:(id)to withState:(id)state;
- (void)updateTextFrameState:(id)state atIndex:(unint64_t)index;
@end

@implementation WMSectionContentMapper

- (WMSectionContentMapper)initWithWDText:(id)text parent:(id)parent
{
  textCopy = text;
  v11.receiver = self;
  v11.super_class = WMSectionContentMapper;
  v8 = [(CMMapper *)&v11 initWithParent:parent];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->wdText, text);
  }

  return v9;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  blockCount = [(WDText *)self->wdText blockCount];
  if (blockCount)
  {
    for (i = 0; i < blockCount; ++i)
    {
      [stateCopy setBlockIndex:i];
      v9 = [(WDText *)self->wdText blockAt:i];
      [(WMSectionContentMapper *)self updateTextFrameState:stateCopy atIndex:i];
      if ([stateCopy isFrame])
      {
        [stateCopy pushTextLevel];
        [(WMSectionContentMapper *)self mapTextFrameAt:atCopy withState:stateCopy];
        i = [stateCopy blockIndex];
        [stateCopy popTextLevel];
      }

      else
      {
        if (![v9 blockType])
        {
          v10 = [[WMParagraphMapper alloc] initWithBlock:v9 parent:self];
          [(WMParagraphMapper *)v10 mapAt:atCopy withState:stateCopy];
          goto LABEL_9;
        }

        if ([v9 blockType] == 1)
        {
          [stateCopy pushTextLevel];
          v10 = [[WMTableMapper alloc] initWithWDTable:v9 parent:self];
          [(WMParagraphMapper *)v10 mapAt:atCopy withState:stateCopy];
          [stateCopy popTextLevel];
LABEL_9:
        }
      }
    }
  }
}

- (void)updateTextFrameState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  v6 = [(WMSectionContentMapper *)self paragraphAtIndex:index];
  v7 = v6;
  if (v6 && ([v6 isTextFrame] & 1) != 0)
  {
    if (index && [stateCopy isFrame])
    {
      isFrameEnd = [stateCopy isFrameEnd];
    }

    else
    {
      isFrameEnd = 1;
    }

    [stateCopy setIsFrameStart:isFrameEnd];
    [stateCopy setIsFrame:1];
    v9 = [(WMSectionContentMapper *)self paragraphAtIndex:index + 1];
    v10 = v9;
    v11 = !v9 || ([v9 isContinuationOf:v7] & 1) == 0;
    [stateCopy setIsFrameEnd:v11];
  }

  else
  {
    [stateCopy setIsFrame:0];
    [stateCopy setIsFrameStart:0];
    [stateCopy setIsFrameEnd:0];
  }
}

- (id)paragraphAtIndex:(unint64_t)index
{
  if ([(WDText *)self->wdText blockCount]<= index)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(WDText *)self->wdText blockAt:index];
    if ([v5 blockType])
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  return v6;
}

- (void)mapTextFrameAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  blockIndex = [stateCopy blockIndex];
  v8 = [(WMSectionContentMapper *)self paragraphAtIndex:blockIndex];
  if ([stateCopy isFrameStart])
  {
    v14 = objc_alloc_init(WMStyle);
    v9 = [OIXMLElement elementWithType:3];
    [atCopy addChild:v9];
    [(WMSectionContentMapper *)self mapTextFrameStyleTo:v14 withState:stateCopy];
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v9 style:v14];
    if (v8)
    {
      v10 = (blockIndex << 32) + 0x100000000;
      v11 = blockIndex + 1;
      while (1)
      {
        v12 = [[WMParagraphMapper alloc] initWithBlock:v8 parent:self];
        [(WMParagraphMapper *)v12 mapAt:v9 withState:stateCopy];
        if ([stateCopy isFrameEnd])
        {
          break;
        }

        [stateCopy setBlockIndex:v11];
        v13 = [(WMSectionContentMapper *)self paragraphAtIndex:v11];

        [(WMSectionContentMapper *)self updateTextFrameState:stateCopy atIndex:v10 >> 32];
        v10 += 0x100000000;
        ++v11;
        v8 = v13;
        if (!v13)
        {
          goto LABEL_9;
        }
      }
    }

LABEL_9:
    if (([stateCopy isFrameEnd] & 1) == 0)
    {
      NSLog(@"FIXME: wrong text frame end");
    }
  }

  else
  {
    NSLog(@"FIXME: wrong text frame start");
  }
}

- (void)mapTextFrameStyleTo:(id)to withState:(id)state
{
  toCopy = to;
  v6 = -[WMSectionContentMapper paragraphAtIndex:](self, "paragraphAtIndex:", [state blockIndex]);
  v7 = v6;
  if (v6)
  {
    properties = [v6 properties];
    if ([properties isWidthOverridden])
    {
      [toCopy appendPropertyForName:0x286EEA530 length:2 unit:{objc_msgSend(properties, "width")}];
    }

    [toCopy appendPropertyForName:0x286EF47B0 stringValue:0x286EFB5F0];
  }

  else
  {
    NSLog(@"Fixme: nil paragraph in the text frame");
  }
}

@end