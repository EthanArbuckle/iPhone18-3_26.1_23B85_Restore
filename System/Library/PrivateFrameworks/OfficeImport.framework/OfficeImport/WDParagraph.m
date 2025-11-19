@interface WDParagraph
- (BOOL)isContinuationOf:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isTextFrame;
- (WDParagraph)initWithText:(id)a3;
- (WDParagraph)initWithText:(id)a3 string:(id)a4;
- (float)maxReflectionDistance;
- (id)addAnnotation:(int)a3 atIndex:(unint64_t)a4;
- (id)addBookmark;
- (id)addBookmark:(id)a3 type:(int)a4;
- (id)addCharacterRun;
- (id)addDateTime:(id)a3;
- (id)addEndnote;
- (id)addFieldMarker;
- (id)addFieldMarker:(int)a3;
- (id)addFootnote;
- (id)addHyperlinkFieldMarker;
- (id)addHyperlinkFieldMarker:(int)a3;
- (id)addMath:(id)a3;
- (id)addSpecialCharacter;
- (id)addSymbol;
- (id)description;
- (id)newRunIterator;
- (id)runIterator;
- (void)clearProperties;
- (void)clearRuns;
- (void)removeLastCharacter:(unsigned __int16)a3;
@end

@implementation WDParagraph

- (id)addCharacterRun
{
  v3 = [[WDCharacterRun alloc] initWithParagraph:self];
  [(NSMutableArray *)self->mRuns addObject:v3];

  return v3;
}

- (id)addFieldMarker
{
  v3 = [[WDFieldMarker alloc] initWithParagraph:self];
  [(NSMutableArray *)self->mRuns addObject:v3];

  return v3;
}

- (BOOL)isTextFrame
{
  v2 = [(WDParagraph *)self properties];
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

- (id)addSpecialCharacter
{
  v3 = [[WDSpecialCharacter alloc] initWithParagraph:self];
  [(NSMutableArray *)self->mRuns addObject:v3];

  return v3;
}

- (id)addFootnote
{
  v3 = [[WDNote alloc] initWithParagraph:self footnote:1];
  [(NSMutableArray *)self->mRuns addObject:v3];

  return v3;
}

- (id)addBookmark
{
  v3 = [(WDRun *)[WDBookmark alloc] initWithParagraph:self];
  [(NSMutableArray *)self->mRuns addObject:v3];

  return v3;
}

- (id)addSymbol
{
  v3 = [[WDSymbol alloc] initWithParagraph:self];
  [(NSMutableArray *)self->mRuns addObject:v3];

  return v3;
}

- (id)addEndnote
{
  v3 = [[WDNote alloc] initWithParagraph:self footnote:0];
  [(NSMutableArray *)self->mRuns addObject:v3];

  return v3;
}

- (WDParagraph)initWithText:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WDParagraph;
  v5 = [(WDBlock *)&v13 initWithText:v4];
  if (v5)
  {
    v6 = [WDParagraphProperties alloc];
    v7 = [v4 document];
    v8 = [(WDParagraphProperties *)v6 initWithDocument:v7];
    mProperties = v5->mProperties;
    v5->mProperties = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mRuns = v5->mRuns;
    v5->mRuns = v10;

    v5->identifier = 0;
  }

  return v5;
}

- (WDParagraph)initWithText:(id)a3 string:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WDParagraph *)self initWithText:v6];
  v9 = v8;
  if (v8)
  {
    [(WDParagraphProperties *)v8->mProperties setBaseStyle:0];
    v10 = [[WDCharacterRun alloc] initWithParagraph:v9 string:v7];
    [(NSMutableArray *)v9->mRuns addObject:v10];
  }

  return v9;
}

- (void)clearProperties
{
  mProperties = self->mProperties;
  self->mProperties = 0;
}

- (void)clearRuns
{
  mRuns = self->mRuns;
  self->mRuns = 0;
}

- (id)addAnnotation:(int)a3 atIndex:(unint64_t)a4
{
  v6 = [[WDAnnotation alloc] initWithParagraph:self type:*&a3];
  if (a4 == -1 || [(NSMutableArray *)self->mRuns count]< a4)
  {
    [(NSMutableArray *)self->mRuns addObject:v6];
  }

  else
  {
    [(NSMutableArray *)self->mRuns insertObject:v6 atIndex:a4];
  }

  return v6;
}

- (id)addFieldMarker:(int)a3
{
  v3 = *&a3;
  v4 = [(WDParagraph *)self addFieldMarker];
  [v4 setFieldMarkerType:v3];

  return v4;
}

- (id)addHyperlinkFieldMarker
{
  v3 = [(WDFieldMarker *)[WDHyperlinkFieldMarker alloc] initWithParagraph:self];
  [(NSMutableArray *)self->mRuns addObject:v3];

  return v3;
}

- (id)addHyperlinkFieldMarker:(int)a3
{
  v3 = *&a3;
  v4 = [(WDParagraph *)self addHyperlinkFieldMarker];
  [v4 setFieldMarkerType:v3];

  return v4;
}

- (id)addBookmark:(id)a3 type:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [[WDBookmark alloc] initWithParagraph:self name:v6 type:v4];
  [(NSMutableArray *)self->mRuns addObject:v7];

  return v7;
}

- (id)addDateTime:(id)a3
{
  v4 = a3;
  v5 = [[WDDateTime alloc] initWithParagraph:self date:v4];
  [(NSMutableArray *)self->mRuns addObject:v5];

  return v5;
}

- (id)addMath:(id)a3
{
  v4 = a3;
  v5 = [[WDMath alloc] initWithParagraph:self xmlBlob:v4];
  [(NSMutableArray *)self->mRuns addObject:v5];

  return v5;
}

- (float)maxReflectionDistance
{
  v3 = [(NSMutableArray *)self->mRuns count];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0.0;
  do
  {
    v7 = [(NSMutableArray *)self->mRuns objectAtIndex:v5];
    if (![v7 runType])
    {
      v8 = v7;
      v9 = [v8 properties];
      if ([v9 isReflectionOverridden])
      {
        v10 = [v9 reflection];
        v11 = v10;
        if (v10)
        {
          [v10 distance];
          if (v12 > v6)
          {
            v6 = v12;
          }
        }
      }
    }

    ++v5;
  }

  while (v4 != v5);
  return v6;
}

- (void)removeLastCharacter:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(NSMutableArray *)self->mRuns count];
  if (v5)
  {
    v6 = v5;
    v11 = [(NSMutableArray *)self->mRuns objectAtIndex:v5 - 1];
    if (![v11 runType])
    {
      v7 = v11;
      [v7 removeLastCharacter:v3];
      v8 = [v7 string];
      v9 = [v8 length];

      if (v6 != 1 && v9 == 0)
      {
        [(NSMutableArray *)self->mRuns removeLastObject];
      }
    }
  }
}

- (id)runIterator
{
  v2 = [[WDArrayIterator alloc] initWithArray:self->mRuns];

  return v2;
}

- (id)newRunIterator
{
  v3 = [WDArrayIterator alloc];
  mRuns = self->mRuns;

  return [(WDArrayIterator *)v3 initWithArray:mRuns];
}

- (BOOL)isEmpty
{
  if (![(NSMutableArray *)self->mRuns count])
  {
    return 1;
  }

  v3 = 0;
  v4 = 1;
  do
  {
    v5 = [(NSMutableArray *)self->mRuns objectAtIndex:v3];
    v6 = [v5 isEmpty];

    if ((v6 & 1) == 0)
    {
      break;
    }

    v3 = v4;
  }

  while ([(NSMutableArray *)self->mRuns count]> v4++);
  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDParagraph;
  v2 = [(WDBlock *)&v4 description];

  return v2;
}

- (BOOL)isContinuationOf:(id)a3
{
  v4 = a3;
  v5 = [(WDParagraph *)self properties];
  v6 = [v4 properties];
  if ([v5 isHorizontalAnchorOverridden] && objc_msgSend(v6, "isHorizontalAnchorOverridden") && (v7 = objc_msgSend(v5, "horizontalAnchor"), v7 == objc_msgSend(v6, "horizontalAnchor")) && objc_msgSend(v5, "isVerticalAnchorOverridden") && objc_msgSend(v6, "isVerticalAnchorOverridden") && (v8 = objc_msgSend(v5, "verticalAnchor"), v8 == objc_msgSend(v6, "verticalAnchor")) && objc_msgSend(v5, "isHorizontalPositionOverridden") && objc_msgSend(v6, "isHorizontalPositionOverridden") && (v9 = objc_msgSend(v5, "horizontalPosition"), v9 == objc_msgSend(v6, "horizontalPosition")) && objc_msgSend(v5, "isVerticalPositionOverridden") && objc_msgSend(v6, "isVerticalPositionOverridden") && (v10 = objc_msgSend(v5, "verticalPosition"), v10 == objc_msgSend(v6, "verticalPosition")) && objc_msgSend(v5, "isWidthOverridden") && objc_msgSend(v6, "isWidthOverridden"))
  {
    v11 = [v5 width];
    v12 = v11 == [v6 width];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end