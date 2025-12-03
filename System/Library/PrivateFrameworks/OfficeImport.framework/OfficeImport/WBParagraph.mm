@interface WBParagraph
+ (BOOL)isCPAnnotationRangeEnd:(int)end bookmarkTable:(void *)table;
+ (void)check:(id)check forFieldMarkerFrom:(id)from runEnd:(int *)end readState:(void *)state;
+ (void)checkForAnnotationBookmarkFrom:(id)from runEnd:(int *)end readState:(void *)state;
+ (void)checkForAnnotationFrom:(id)from runEnd:(int *)end readState:(void *)state;
+ (void)checkForBookmarkFrom:(id)from runEnd:(int *)end readState:(void *)state;
+ (void)checkForNoteFrom:(id)from footnote:(BOOL)footnote runEnd:(int *)end readState:(void *)state;
+ (void)readAnnotationBookmarkFor:(id)for from:(id)from readState:(void *)state;
+ (void)readAnnotationFor:(id)for from:(id)from readState:(void *)state;
+ (void)readBookmarkFor:(id)for from:(id)from readState:(void *)state;
+ (void)readCharacterRunsFor:(id)for from:(id)from readState:(void *)state;
+ (void)readFieldMarkerFor:(id)for from:(id)from readState:(void *)state;
+ (void)readFrom:(id)from textRun:(WrdParagraphTextRun *)run paragraph:(id)paragraph;
+ (void)readNoteFor:(id)for from:(id)from readState:(void *)state;
+ (void)readOfficeArtFor:(id)for from:(id)from at:(int)at textRun:(WrdCharacterTextRun *)run;
+ (void)readPictureFor:(id)for from:(id)from at:(int)at textRun:(WrdCharacterTextRun *)run;
+ (void)readRunsFor:(id)for from:(id)from textRun:(WrdParagraphTextRun *)run;
+ (void)readSpecialCharacterFor:(id)for from:(id)from at:(int)at textRun:(WrdCharacterTextRun *)run;
+ (void)readSpecialCharactersFor:(id)for from:(id)from textRun:(WrdCharacterTextRun *)run;
+ (void)readSymbolsFor:(id)for from:(id)from textRun:(WrdCharacterTextRun *)run;
@end

@implementation WBParagraph

+ (void)readFrom:(id)from textRun:(WrdParagraphTextRun *)run paragraph:(id)paragraph
{
  fromCopy = from;
  paragraphCopy = paragraph;
  var4 = run->var4;
  var5 = run->var5;
  document = [paragraphCopy document];
  properties = [paragraphCopy properties];
  [WBParagraphProperties readFrom:fromCopy wrdProperties:var4 tracked:var5 document:document properties:properties];

  [self readRunsFor:paragraphCopy from:fromCopy textRun:run];
}

+ (void)readRunsFor:(id)for from:(id)from textRun:(WrdParagraphTextRun *)run
{
  forCopy = for;
  fromCopy = from;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  var2 = run->var2;
  var3 = run->var3;
  v17 = 0;
  v18 = var2;
  v12 = var3 + var2;
  v19 = v12;
  v20 = -1;
  v24 = -1;
  while (var2 < v12)
  {
    if (v17 > 3)
    {
      switch(v17)
      {
        case 4:
          [self readBookmarkFor:forCopy from:fromCopy readState:&v17];
          break;
        case 5:
          [self readAnnotationFor:forCopy from:fromCopy readState:&v17];
          break;
        case 6:
          [self readAnnotationBookmarkFor:forCopy from:fromCopy readState:&v17];
          break;
      }
    }

    else if ((v17 - 1) < 2)
    {
      [self readNoteFor:forCopy from:fromCopy readState:&v17];
    }

    else if (v17)
    {
      if (v17 == 3)
      {
        [self readFieldMarkerFor:forCopy from:fromCopy readState:&v17];
      }
    }

    else
    {
      [self readCharacterRunsFor:forCopy from:fromCopy readState:&v17];
    }

    var2 = v18;
    v12 = v19;
  }

  runCount = [forCopy runCount];
  if (runCount)
  {
    v14 = [forCopy runAt:runCount - 1];
    if (![v14 runType])
    {
      properties = [forCopy properties];
      properties2 = [v14 properties];
      [properties setCharacterProperties:properties2];
    }
  }

  [forCopy removeLastCharacter:13];
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }
}

+ (void)readCharacterRunsFor:(id)for from:(id)from readState:(void *)state
{
  forCopy = for;
  fromCopy = from;
  v19 = *(state + 2);
  if (![forCopy textType])
  {
    [self checkForBookmarkFrom:fromCopy runEnd:&v19 readState:state];
    [self checkForAnnotationBookmarkFrom:fromCopy runEnd:&v19 readState:state];
    [self checkForAnnotationFrom:fromCopy runEnd:&v19 readState:state];
    [self checkForNoteFrom:fromCopy footnote:1 runEnd:&v19 readState:state];
    [self checkForNoteFrom:fromCopy footnote:0 runEnd:&v19 readState:state];
  }

  [self check:forCopy forFieldMarkerFrom:fromCopy runEnd:&v19 readState:state];
  WrdCharacterTextRun::WrdCharacterTextRun(&v18);
  textType = [forCopy textType];
  v11 = *(state + 1);
  v18.var1 = textType;
  v18.var2 = v11;
  for (i = v19; v18.var2 < v19; i = v19)
  {
    wrdReader = [fromCopy wrdReader];
    (*(*wrdReader + 192))(wrdReader, &v18);
    i = v19;
    if (!v18.var3)
    {
      break;
    }

    if ((v18.var2 + v18.var3) > v19)
    {
      v18.var3 = v19 - v18.var2;
    }

    if (WrdCharacterTextRun::isSpecialCharacter(&v18))
    {
      [self readSpecialCharactersFor:forCopy from:fromCopy textRun:&v18];
    }

    else if ((*(&v18.var4->var2 + 8) & 0x20) != 0)
    {
      [self readSymbolsFor:forCopy from:fromCopy textRun:&v18];
    }

    else
    {
      addCharacterRun = [forCopy addCharacterRun];
      [WBCharacterRun readFrom:fromCopy wrdTextRun:&v18 run:addCharacterRun paragraph:forCopy];
      annotationRangeStart = [fromCopy annotationRangeStart];
      v16 = annotationRangeStart;
      if (annotationRangeStart && ([annotationRangeStart referencePropertiesFixed] & 1) == 0)
      {
        reference = [v16 reference];
        [reference copyPropertiesFrom:addCharacterRun];

        [v16 setReferencePropertiesFixed];
      }
    }

    v18.var2 += v18.var3;
  }

  *(state + 1) = i;
  WrdCharacterTextRun::~WrdCharacterTextRun(&v18);
}

+ (void)checkForNoteFrom:(id)from footnote:(BOOL)footnote runEnd:(int *)end readState:(void *)state
{
  footnoteCopy = footnote;
  fromCopy = from;
  v13 = fromCopy;
  if (footnoteCopy)
  {
    footnoteTable = [fromCopy footnoteTable];
  }

  else
  {
    footnoteTable = [fromCopy endnoteTable];
  }

  CPOfNextNote = WrdNoteTable::getCPOfNextNote(footnoteTable, *(state + 1) - 1);
  if (CPOfNextNote >= *(state + 1) && CPOfNextNote < *end)
  {
    *end = CPOfNextNote;
    if (footnoteCopy)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    *state = v12;
  }
}

+ (void)checkForAnnotationFrom:(id)from runEnd:(int *)end readState:(void *)state
{
  fromCopy = from;
  annotationTable = [fromCopy annotationTable];
  CPOfNextAnnotation = WrdAnnotationTable::getCPOfNextAnnotation(annotationTable, *(state + 1) - 1);
  annotationBookmarkTable = [fromCopy annotationBookmarkTable];
  if (CPOfNextAnnotation >= *(state + 1))
  {
    v11 = annotationBookmarkTable;
    v12 = 0;
    do
    {
      if (CPOfNextAnnotation >= *end || (v12 & 1) != 0)
      {
        break;
      }

      v13 = [self isCPAnnotationRangeEnd:CPOfNextAnnotation bookmarkTable:v11];
      if (v13)
      {
        CPOfNextAnnotation = WrdAnnotationTable::getCPOfNextAnnotation(annotationTable, CPOfNextAnnotation);
      }

      v12 = v13 ^ 1;
    }

    while (CPOfNextAnnotation >= *(state + 1));
    if (v12)
    {
      *end = CPOfNextAnnotation;
      *state = 5;
    }
  }
}

+ (BOOL)isCPAnnotationRangeEnd:(int)end bookmarkTable:(void *)table
{
  v4 = *(table + 6) - *(table + 4);
  v5 = (v4 >> 3);
  if (!(v4 >> 3))
  {
    return 0;
  }

  if (*(WrdBookmarkTable::getBookmark(table, 0) + 48) == end)
  {
    return 1;
  }

  v9 = 1;
  do
  {
    v10 = v9;
    if (v5 == v9)
    {
      break;
    }

    Bookmark = WrdBookmarkTable::getBookmark(table, v9);
    v9 = v10 + 1;
  }

  while (*(Bookmark + 48) != end);
  return v10 < v5;
}

+ (void)check:(id)check forFieldMarkerFrom:(id)from runEnd:(int *)end readState:(void *)state
{
  checkCopy = check;
  fromCopy = from;
  v10 = [fromCopy fieldPositionTableForTextType:{objc_msgSend(checkCopy, "textType")}];
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  v13 = WrdFieldPositionTable::lowerBoundOfCP(v10, *(state + 1));
  if (v13 < ((v11 - v12) >> 3))
  {
    Bookmark = WrdBookmarkTable::getBookmark(v10, v13);
    v15 = *(Bookmark + 8);
    if (v15 < *end)
    {
      *end = v15;
      *state = 3;
      *(state + 2) = Bookmark;
    }
  }
}

+ (void)checkForBookmarkFrom:(id)from runEnd:(int *)end readState:(void *)state
{
  fromCopy = from;
  bookmarkTable = [fromCopy bookmarkTable];
  v9 = bookmarkTable;
  *(state + 5) = *(state + 4);
  v10 = *(state + 6);
  if (*(state + 1) <= v10 + 1)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = *(state + 1);
  }

  v12 = *(bookmarkTable + 24) - *(bookmarkTable + 16);
  v13 = (v12 >> 3);
  if ((v12 >> 3))
  {
    v14 = 0;
    v15 = *end;
    do
    {
      Bookmark = WrdBookmarkTable::getBookmark(v9, v14);
      if (!Bookmark[13])
      {
        v18 = Bookmark[11];
        v17 = Bookmark[12];
        v19 = v18 >= v11 && v18 <= v15;
        if (v19 && v18 < *end)
        {
          if (v18 < v15)
          {
            *(state + 5) = *(state + 4);
            v15 = v18;
          }

          v22 = v14;
          std::vector<unsigned int>::push_back[abi:ne200100](state + 4, &v22);
        }

        else if (v17 >= v11 && v17 <= v15)
        {
          if (v17 < v15)
          {
            *(state + 5) = *(state + 4);
            v15 = v17;
          }

          v21 = v14;
          std::vector<unsigned int>::push_back[abi:ne200100](state + 4, &v21);
        }
      }

      ++v14;
    }

    while (v13 != v14);
    if (*(state + 4) != *(state + 5))
    {
      *end = v15;
      *(state + 7) = v15;
      *state = 4;
    }
  }
}

+ (void)checkForAnnotationBookmarkFrom:(id)from runEnd:(int *)end readState:(void *)state
{
  fromCopy = from;
  annotationBookmarkTable = [fromCopy annotationBookmarkTable];
  v9 = annotationBookmarkTable;
  *(state + 9) = *(state + 8);
  v10 = *(state + 14);
  if (*(state + 1) <= v10 + 1)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = *(state + 1);
  }

  v12 = *(annotationBookmarkTable + 24) - *(annotationBookmarkTable + 16);
  v13 = (v12 >> 3);
  if ((v12 >> 3))
  {
    v14 = 0;
    v15 = *end;
    do
    {
      Bookmark = WrdBookmarkTable::getBookmark(v9, v14);
      v18 = *(Bookmark + 44);
      v17 = *(Bookmark + 48);
      v19 = v18 >= v11 && v18 <= v15;
      if (v19 && v18 < *end)
      {
        if (v18 < v15)
        {
          *(state + 9) = *(state + 8);
          v15 = v18;
        }

        v22 = v14;
        std::vector<unsigned int>::push_back[abi:ne200100](state + 8, &v22);
      }

      else if (v17 >= v11 && v17 <= v15)
      {
        if (v17 < v15)
        {
          *(state + 9) = *(state + 8);
          v15 = v17;
        }

        v21 = v14;
        std::vector<unsigned int>::push_back[abi:ne200100](state + 8, &v21);
      }

      ++v14;
    }

    while (v13 != v14);
    if (*(state + 8) != *(state + 9))
    {
      *end = v15;
      *(state + 15) = v15;
      *state = 6;
    }
  }
}

+ (void)readSpecialCharactersFor:(id)for from:(id)from textRun:(WrdCharacterTextRun *)run
{
  forCopy = for;
  fromCopy = from;
  v9 = [fromCopy readCharactersForTextRun:run];
  var2 = run->var2;
  v11 = [v9 length];
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = [v9 characterAtIndex:i];
      v14 = var2 + i;
      if (v13 == 1)
      {
        [self readPictureFor:forCopy from:fromCopy at:v14 textRun:run];
      }

      else if (v13 == 8)
      {
        [self readOfficeArtFor:forCopy from:fromCopy at:v14 textRun:run];
      }

      else
      {
        [self readSpecialCharacterFor:forCopy from:fromCopy at:v14 textRun:run];
      }
    }
  }
}

+ (void)readOfficeArtFor:(id)for from:(id)from at:(int)at textRun:(WrdCharacterTextRun *)run
{
  v7 = *&at;
  forCopy = for;
  fromCopy = from;
  v10 = [[WDOfficeArt alloc] initWithParagraph:forCopy];
  [WBOfficeArt readFrom:fromCopy at:v7 textRun:run paragraph:forCopy to:v10];
  if ([(WDOfficeArt *)v10 isDrawableOverridden])
  {
    [forCopy addRun:v10];
  }
}

+ (void)readPictureFor:(id)for from:(id)from at:(int)at textRun:(WrdCharacterTextRun *)run
{
  v7 = *&at;
  forCopy = for;
  fromCopy = from;
  var4 = run->var4;
  if (WrdCharacterProperties::isPicture(var4) || WrdCharacterProperties::isOle1Object(var4))
  {
    WrdCharacterTextRun::WrdCharacterTextRun(&v15);
    v15.var1 = run->var1;
    v15.var2 = v7 - 1;
    wrdReader = [fromCopy wrdReader];
    (*(*wrdReader + 192))(wrdReader, &v15);
    WrdCharacterProperties::WrdCharacterProperties(&v14, v15.var4);
    if (WrdCharacterProperties::isOle2Object(&v14))
    {
      v13 = [(WDOfficeArt *)[WDOleObject alloc] initWithParagraph:forCopy];
      [WBOleObject readFrom:fromCopy at:v7 oleId:v14.var59 textRun:run paragraph:forCopy to:v13];
      [forCopy addRun:v13];
    }

    else
    {
      v13 = [(WDOfficeArt *)[WDPicture alloc] initWithParagraph:forCopy];
      [WBPicture readFrom:fromCopy at:v7 textRun:run paragraph:forCopy to:v13];
      if (v13 && [(WDPicture *)v13 hasContent])
      {
        [forCopy addRun:v13];
      }
    }

    WrdCharacterProperties::~WrdCharacterProperties(&v14);
    WrdCharacterTextRun::~WrdCharacterTextRun(&v15);
  }

  else if (!WrdCharacterProperties::isFormFieldData(var4))
  {
    [TCMessageContext reportWarning:WBMissingImage];
  }
}

+ (void)readSpecialCharacterFor:(id)for from:(id)from at:(int)at textRun:(WrdCharacterTextRun *)run
{
  v7 = *&at;
  forCopy = for;
  fromCopy = from;
  addSpecialCharacter = [forCopy addSpecialCharacter];
  [WBSpecialCharacter readFrom:fromCopy at:v7 textRun:run paragraph:forCopy specialCharacter:addSpecialCharacter];
}

+ (void)readSymbolsFor:(id)for from:(id)from textRun:(WrdCharacterTextRun *)run
{
  forCopy = for;
  fromCopy = from;
  var2 = run->var2;
  var3 = run->var3;
  run->var3 = 1;
  if (var2 < var3 + var2)
  {
    v10 = var3;
    v11 = var2;
    do
    {
      run->var2 = v11;
      addSymbol = [forCopy addSymbol];
      [WBSymbol readFrom:fromCopy textRun:run paragraph:forCopy symbol:addSymbol];

      ++v11;
      --v10;
    }

    while (v10);
  }

  run->var2 = var2;
  run->var3 = var3;
}

+ (void)readNoteFor:(id)for from:(id)from readState:(void *)state
{
  forCopy = for;
  fromCopy = from;
  if (*state == 1)
  {
    [forCopy addFootnote];
  }

  else
  {
    [forCopy addEndnote];
  }
  v8 = ;
  v9 = [WBNote readFrom:fromCopy at:*(state + 1) paragraph:forCopy note:v8];
  if (v9 <= 0)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v10 = *(state + 1) + v9;
  *state = 0;
  *(state + 1) = v10;
}

+ (void)readAnnotationFor:(id)for from:(id)from readState:(void *)state
{
  [WBAnnotation readFrom:from at:*(state + 1) paragraph:for];
  v6 = *(state + 1) + 1;
  *state = 0;
  *(state + 1) = v6;
}

+ (void)readFieldMarkerFor:(id)for from:(id)from readState:(void *)state
{
  forCopy = for;
  fromCopy = from;
  addFieldMarker = [forCopy addFieldMarker];
  [WBFieldMarker readFrom:fromCopy position:*(state + 2) paragraph:forCopy fieldMarker:addFieldMarker];
  v9 = *(*(state + 2) + 8) + 1;
  *state = 0;
  *(state + 1) = v9;
}

+ (void)readBookmarkFor:(id)for from:(id)from readState:(void *)state
{
  forCopy = for;
  fromCopy = from;
  bookmarkTable = [fromCopy bookmarkTable];
  v9 = *(state + 4);
  if (v9 != *(state + 5))
  {
    v10 = bookmarkTable;
    v11 = ((*(bookmarkTable + 24) - *(bookmarkTable + 16)) >> 3);
    do
    {
      if (*v9 < v11)
      {
        Bookmark = WrdBookmarkTable::getBookmark(v10, *v9);
        v13 = *(state + 7);
        if (*(Bookmark + 44) == v13)
        {
          [WBBookmark readFrom:fromCopy index:*v9 type:0 paragraph:forCopy];
          v13 = *(state + 7);
        }

        if (*(Bookmark + 48) == v13)
        {
          [WBBookmark readFrom:fromCopy index:*v9 type:1 paragraph:forCopy];
        }
      }

      ++v9;
    }

    while (v9 != *(state + 5));
  }

  *(state + 6) = *(state + 7);
  *state = 0;
}

+ (void)readAnnotationBookmarkFor:(id)for from:(id)from readState:(void *)state
{
  forCopy = for;
  fromCopy = from;
  annotationBookmarkTable = [fromCopy annotationBookmarkTable];
  v9 = *(state + 8);
  if (v9 != *(state + 9))
  {
    v10 = annotationBookmarkTable;
    v11 = ((*(annotationBookmarkTable + 24) - *(annotationBookmarkTable + 16)) >> 3);
    do
    {
      if (*v9 < v11)
      {
        Bookmark = WrdBookmarkTable::getBookmark(v10, *v9);
        v13 = *(state + 15);
        if (*(Bookmark + 44) == v13)
        {
          v14 = [WBAnnotation readRangedFrom:fromCopy index:*v9 type:0 paragraph:forCopy];
          [fromCopy setAnnotationRangeStart:v14 forBookmarkIndex:*v9];

          v13 = *(state + 15);
        }

        if (*(Bookmark + 48) == v13)
        {
          v15 = [WBAnnotation readRangedFrom:fromCopy index:*v9 type:1 paragraph:forCopy];
          v16 = [fromCopy annotationRangeStartForBookmarkIndex:*v9];
          [v16 setOtherEndOfRangedAnnotation:v15];
          [v15 setOtherEndOfRangedAnnotation:v16];
          [v15 useDataFromOtherEnd];
        }
      }

      ++v9;
    }

    while (v9 != *(state + 9));
  }

  *(state + 14) = *(state + 15);
  *state = 0;
}

@end