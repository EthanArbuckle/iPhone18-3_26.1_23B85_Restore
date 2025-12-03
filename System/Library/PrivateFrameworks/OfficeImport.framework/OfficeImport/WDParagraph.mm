@interface WDParagraph
- (BOOL)isContinuationOf:(id)of;
- (BOOL)isEmpty;
- (BOOL)isTextFrame;
- (WDParagraph)initWithText:(id)text;
- (WDParagraph)initWithText:(id)text string:(id)string;
- (float)maxReflectionDistance;
- (id)addAnnotation:(int)annotation atIndex:(unint64_t)index;
- (id)addBookmark;
- (id)addBookmark:(id)bookmark type:(int)type;
- (id)addCharacterRun;
- (id)addDateTime:(id)time;
- (id)addEndnote;
- (id)addFieldMarker;
- (id)addFieldMarker:(int)marker;
- (id)addFootnote;
- (id)addHyperlinkFieldMarker;
- (id)addHyperlinkFieldMarker:(int)marker;
- (id)addMath:(id)math;
- (id)addSpecialCharacter;
- (id)addSymbol;
- (id)description;
- (id)newRunIterator;
- (id)runIterator;
- (void)clearProperties;
- (void)clearRuns;
- (void)removeLastCharacter:(unsigned __int16)character;
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
  properties = [(WDParagraph *)self properties];
  if ([properties isHorizontalAnchorOverridden] && objc_msgSend(properties, "horizontalAnchor") || objc_msgSend(properties, "isVerticalAnchorOverridden") && objc_msgSend(properties, "verticalAnchor") != 2 || objc_msgSend(properties, "isHorizontalPositionOverridden") && objc_msgSend(properties, "horizontalPosition"))
  {
    v3 = 1;
  }

  else if ([properties isVerticalPositionOverridden])
  {
    v3 = [properties verticalPosition] != 0;
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

- (WDParagraph)initWithText:(id)text
{
  textCopy = text;
  v13.receiver = self;
  v13.super_class = WDParagraph;
  v5 = [(WDBlock *)&v13 initWithText:textCopy];
  if (v5)
  {
    v6 = [WDParagraphProperties alloc];
    document = [textCopy document];
    v8 = [(WDParagraphProperties *)v6 initWithDocument:document];
    mProperties = v5->mProperties;
    v5->mProperties = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mRuns = v5->mRuns;
    v5->mRuns = v10;

    v5->identifier = 0;
  }

  return v5;
}

- (WDParagraph)initWithText:(id)text string:(id)string
{
  textCopy = text;
  stringCopy = string;
  v8 = [(WDParagraph *)self initWithText:textCopy];
  v9 = v8;
  if (v8)
  {
    [(WDParagraphProperties *)v8->mProperties setBaseStyle:0];
    v10 = [[WDCharacterRun alloc] initWithParagraph:v9 string:stringCopy];
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

- (id)addAnnotation:(int)annotation atIndex:(unint64_t)index
{
  v6 = [[WDAnnotation alloc] initWithParagraph:self type:*&annotation];
  if (index == -1 || [(NSMutableArray *)self->mRuns count]< index)
  {
    [(NSMutableArray *)self->mRuns addObject:v6];
  }

  else
  {
    [(NSMutableArray *)self->mRuns insertObject:v6 atIndex:index];
  }

  return v6;
}

- (id)addFieldMarker:(int)marker
{
  v3 = *&marker;
  addFieldMarker = [(WDParagraph *)self addFieldMarker];
  [addFieldMarker setFieldMarkerType:v3];

  return addFieldMarker;
}

- (id)addHyperlinkFieldMarker
{
  v3 = [(WDFieldMarker *)[WDHyperlinkFieldMarker alloc] initWithParagraph:self];
  [(NSMutableArray *)self->mRuns addObject:v3];

  return v3;
}

- (id)addHyperlinkFieldMarker:(int)marker
{
  v3 = *&marker;
  addHyperlinkFieldMarker = [(WDParagraph *)self addHyperlinkFieldMarker];
  [addHyperlinkFieldMarker setFieldMarkerType:v3];

  return addHyperlinkFieldMarker;
}

- (id)addBookmark:(id)bookmark type:(int)type
{
  v4 = *&type;
  bookmarkCopy = bookmark;
  v7 = [[WDBookmark alloc] initWithParagraph:self name:bookmarkCopy type:v4];
  [(NSMutableArray *)self->mRuns addObject:v7];

  return v7;
}

- (id)addDateTime:(id)time
{
  timeCopy = time;
  v5 = [[WDDateTime alloc] initWithParagraph:self date:timeCopy];
  [(NSMutableArray *)self->mRuns addObject:v5];

  return v5;
}

- (id)addMath:(id)math
{
  mathCopy = math;
  v5 = [[WDMath alloc] initWithParagraph:self xmlBlob:mathCopy];
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
      properties = [v8 properties];
      if ([properties isReflectionOverridden])
      {
        reflection = [properties reflection];
        v11 = reflection;
        if (reflection)
        {
          [reflection distance];
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

- (void)removeLastCharacter:(unsigned __int16)character
{
  characterCopy = character;
  v5 = [(NSMutableArray *)self->mRuns count];
  if (v5)
  {
    v6 = v5;
    v11 = [(NSMutableArray *)self->mRuns objectAtIndex:v5 - 1];
    if (![v11 runType])
    {
      v7 = v11;
      [v7 removeLastCharacter:characterCopy];
      string = [v7 string];
      v9 = [string length];

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
    isEmpty = [v5 isEmpty];

    if ((isEmpty & 1) == 0)
    {
      break;
    }

    v3 = v4;
  }

  while ([(NSMutableArray *)self->mRuns count]> v4++);
  return isEmpty;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDParagraph;
  v2 = [(WDBlock *)&v4 description];

  return v2;
}

- (BOOL)isContinuationOf:(id)of
{
  ofCopy = of;
  properties = [(WDParagraph *)self properties];
  properties2 = [ofCopy properties];
  if ([properties isHorizontalAnchorOverridden] && objc_msgSend(properties2, "isHorizontalAnchorOverridden") && (v7 = objc_msgSend(properties, "horizontalAnchor"), v7 == objc_msgSend(properties2, "horizontalAnchor")) && objc_msgSend(properties, "isVerticalAnchorOverridden") && objc_msgSend(properties2, "isVerticalAnchorOverridden") && (v8 = objc_msgSend(properties, "verticalAnchor"), v8 == objc_msgSend(properties2, "verticalAnchor")) && objc_msgSend(properties, "isHorizontalPositionOverridden") && objc_msgSend(properties2, "isHorizontalPositionOverridden") && (v9 = objc_msgSend(properties, "horizontalPosition"), v9 == objc_msgSend(properties2, "horizontalPosition")) && objc_msgSend(properties, "isVerticalPositionOverridden") && objc_msgSend(properties2, "isVerticalPositionOverridden") && (v10 = objc_msgSend(properties, "verticalPosition"), v10 == objc_msgSend(properties2, "verticalPosition")) && objc_msgSend(properties, "isWidthOverridden") && objc_msgSend(properties2, "isWidthOverridden"))
  {
    width = [properties width];
    v12 = width == [properties2 width];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end