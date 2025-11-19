@interface WMSectionContentMapper
- (WMSectionContentMapper)initWithWDText:(id)a3 parent:(id)a4;
- (id)paragraphAtIndex:(unint64_t)a3;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapTextFrameAt:(id)a3 withState:(id)a4;
- (void)mapTextFrameStyleTo:(id)a3 withState:(id)a4;
- (void)updateTextFrameState:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation WMSectionContentMapper

- (WMSectionContentMapper)initWithWDText:(id)a3 parent:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = WMSectionContentMapper;
  v8 = [(CMMapper *)&v11 initWithParent:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->wdText, a3);
  }

  return v9;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(WDText *)self->wdText blockCount];
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      [v6 setBlockIndex:i];
      v9 = [(WDText *)self->wdText blockAt:i];
      [(WMSectionContentMapper *)self updateTextFrameState:v6 atIndex:i];
      if ([v6 isFrame])
      {
        [v6 pushTextLevel];
        [(WMSectionContentMapper *)self mapTextFrameAt:v11 withState:v6];
        i = [v6 blockIndex];
        [v6 popTextLevel];
      }

      else
      {
        if (![v9 blockType])
        {
          v10 = [[WMParagraphMapper alloc] initWithBlock:v9 parent:self];
          [(WMParagraphMapper *)v10 mapAt:v11 withState:v6];
          goto LABEL_9;
        }

        if ([v9 blockType] == 1)
        {
          [v6 pushTextLevel];
          v10 = [[WMTableMapper alloc] initWithWDTable:v9 parent:self];
          [(WMParagraphMapper *)v10 mapAt:v11 withState:v6];
          [v6 popTextLevel];
LABEL_9:
        }
      }
    }
  }
}

- (void)updateTextFrameState:(id)a3 atIndex:(unint64_t)a4
{
  v12 = a3;
  v6 = [(WMSectionContentMapper *)self paragraphAtIndex:a4];
  v7 = v6;
  if (v6 && ([v6 isTextFrame] & 1) != 0)
  {
    if (a4 && [v12 isFrame])
    {
      v8 = [v12 isFrameEnd];
    }

    else
    {
      v8 = 1;
    }

    [v12 setIsFrameStart:v8];
    [v12 setIsFrame:1];
    v9 = [(WMSectionContentMapper *)self paragraphAtIndex:a4 + 1];
    v10 = v9;
    v11 = !v9 || ([v9 isContinuationOf:v7] & 1) == 0;
    [v12 setIsFrameEnd:v11];
  }

  else
  {
    [v12 setIsFrame:0];
    [v12 setIsFrameStart:0];
    [v12 setIsFrameEnd:0];
  }
}

- (id)paragraphAtIndex:(unint64_t)a3
{
  if ([(WDText *)self->wdText blockCount]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(WDText *)self->wdText blockAt:a3];
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

- (void)mapTextFrameAt:(id)a3 withState:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [v6 blockIndex];
  v8 = [(WMSectionContentMapper *)self paragraphAtIndex:v7];
  if ([v6 isFrameStart])
  {
    v14 = objc_alloc_init(WMStyle);
    v9 = [OIXMLElement elementWithType:3];
    [v15 addChild:v9];
    [(WMSectionContentMapper *)self mapTextFrameStyleTo:v14 withState:v6];
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v9 style:v14];
    if (v8)
    {
      v10 = (v7 << 32) + 0x100000000;
      v11 = v7 + 1;
      while (1)
      {
        v12 = [[WMParagraphMapper alloc] initWithBlock:v8 parent:self];
        [(WMParagraphMapper *)v12 mapAt:v9 withState:v6];
        if ([v6 isFrameEnd])
        {
          break;
        }

        [v6 setBlockIndex:v11];
        v13 = [(WMSectionContentMapper *)self paragraphAtIndex:v11];

        [(WMSectionContentMapper *)self updateTextFrameState:v6 atIndex:v10 >> 32];
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
    if (([v6 isFrameEnd] & 1) == 0)
    {
      NSLog(@"FIXME: wrong text frame end");
    }
  }

  else
  {
    NSLog(@"FIXME: wrong text frame start");
  }
}

- (void)mapTextFrameStyleTo:(id)a3 withState:(id)a4
{
  v9 = a3;
  v6 = -[WMSectionContentMapper paragraphAtIndex:](self, "paragraphAtIndex:", [a4 blockIndex]);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 properties];
    if ([v8 isWidthOverridden])
    {
      [v9 appendPropertyForName:0x286EEA530 length:2 unit:{objc_msgSend(v8, "width")}];
    }

    [v9 appendPropertyForName:0x286EF47B0 stringValue:0x286EFB5F0];
  }

  else
  {
    NSLog(@"Fixme: nil paragraph in the text frame");
  }
}

@end