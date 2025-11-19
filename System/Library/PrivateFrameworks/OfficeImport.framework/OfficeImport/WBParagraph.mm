@interface WBParagraph
+ (BOOL)isCPAnnotationRangeEnd:(int)a3 bookmarkTable:(void *)a4;
+ (void)check:(id)a3 forFieldMarkerFrom:(id)a4 runEnd:(int *)a5 readState:(void *)a6;
+ (void)checkForAnnotationBookmarkFrom:(id)a3 runEnd:(int *)a4 readState:(void *)a5;
+ (void)checkForAnnotationFrom:(id)a3 runEnd:(int *)a4 readState:(void *)a5;
+ (void)checkForBookmarkFrom:(id)a3 runEnd:(int *)a4 readState:(void *)a5;
+ (void)checkForNoteFrom:(id)a3 footnote:(BOOL)a4 runEnd:(int *)a5 readState:(void *)a6;
+ (void)readAnnotationBookmarkFor:(id)a3 from:(id)a4 readState:(void *)a5;
+ (void)readAnnotationFor:(id)a3 from:(id)a4 readState:(void *)a5;
+ (void)readBookmarkFor:(id)a3 from:(id)a4 readState:(void *)a5;
+ (void)readCharacterRunsFor:(id)a3 from:(id)a4 readState:(void *)a5;
+ (void)readFieldMarkerFor:(id)a3 from:(id)a4 readState:(void *)a5;
+ (void)readFrom:(id)a3 textRun:(WrdParagraphTextRun *)a4 paragraph:(id)a5;
+ (void)readNoteFor:(id)a3 from:(id)a4 readState:(void *)a5;
+ (void)readOfficeArtFor:(id)a3 from:(id)a4 at:(int)a5 textRun:(WrdCharacterTextRun *)a6;
+ (void)readPictureFor:(id)a3 from:(id)a4 at:(int)a5 textRun:(WrdCharacterTextRun *)a6;
+ (void)readRunsFor:(id)a3 from:(id)a4 textRun:(WrdParagraphTextRun *)a5;
+ (void)readSpecialCharacterFor:(id)a3 from:(id)a4 at:(int)a5 textRun:(WrdCharacterTextRun *)a6;
+ (void)readSpecialCharactersFor:(id)a3 from:(id)a4 textRun:(WrdCharacterTextRun *)a5;
+ (void)readSymbolsFor:(id)a3 from:(id)a4 textRun:(WrdCharacterTextRun *)a5;
@end

@implementation WBParagraph

+ (void)readFrom:(id)a3 textRun:(WrdParagraphTextRun *)a4 paragraph:(id)a5
{
  v13 = a3;
  v8 = a5;
  var4 = a4->var4;
  var5 = a4->var5;
  v11 = [v8 document];
  v12 = [v8 properties];
  [WBParagraphProperties readFrom:v13 wrdProperties:var4 tracked:var5 document:v11 properties:v12];

  [a1 readRunsFor:v8 from:v13 textRun:a4];
}

+ (void)readRunsFor:(id)a3 from:(id)a4 textRun:(WrdParagraphTextRun *)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  var2 = a5->var2;
  var3 = a5->var3;
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
          [a1 readBookmarkFor:v8 from:v9 readState:&v17];
          break;
        case 5:
          [a1 readAnnotationFor:v8 from:v9 readState:&v17];
          break;
        case 6:
          [a1 readAnnotationBookmarkFor:v8 from:v9 readState:&v17];
          break;
      }
    }

    else if ((v17 - 1) < 2)
    {
      [a1 readNoteFor:v8 from:v9 readState:&v17];
    }

    else if (v17)
    {
      if (v17 == 3)
      {
        [a1 readFieldMarkerFor:v8 from:v9 readState:&v17];
      }
    }

    else
    {
      [a1 readCharacterRunsFor:v8 from:v9 readState:&v17];
    }

    var2 = v18;
    v12 = v19;
  }

  v13 = [v8 runCount];
  if (v13)
  {
    v14 = [v8 runAt:v13 - 1];
    if (![v14 runType])
    {
      v15 = [v8 properties];
      v16 = [v14 properties];
      [v15 setCharacterProperties:v16];
    }
  }

  [v8 removeLastCharacter:13];
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

+ (void)readCharacterRunsFor:(id)a3 from:(id)a4 readState:(void *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = *(a5 + 2);
  if (![v8 textType])
  {
    [a1 checkForBookmarkFrom:v9 runEnd:&v19 readState:a5];
    [a1 checkForAnnotationBookmarkFrom:v9 runEnd:&v19 readState:a5];
    [a1 checkForAnnotationFrom:v9 runEnd:&v19 readState:a5];
    [a1 checkForNoteFrom:v9 footnote:1 runEnd:&v19 readState:a5];
    [a1 checkForNoteFrom:v9 footnote:0 runEnd:&v19 readState:a5];
  }

  [a1 check:v8 forFieldMarkerFrom:v9 runEnd:&v19 readState:a5];
  WrdCharacterTextRun::WrdCharacterTextRun(&v18);
  v10 = [v8 textType];
  v11 = *(a5 + 1);
  v18.var1 = v10;
  v18.var2 = v11;
  for (i = v19; v18.var2 < v19; i = v19)
  {
    v13 = [v9 wrdReader];
    (*(*v13 + 192))(v13, &v18);
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
      [a1 readSpecialCharactersFor:v8 from:v9 textRun:&v18];
    }

    else if ((*(&v18.var4->var2 + 8) & 0x20) != 0)
    {
      [a1 readSymbolsFor:v8 from:v9 textRun:&v18];
    }

    else
    {
      v14 = [v8 addCharacterRun];
      [WBCharacterRun readFrom:v9 wrdTextRun:&v18 run:v14 paragraph:v8];
      v15 = [v9 annotationRangeStart];
      v16 = v15;
      if (v15 && ([v15 referencePropertiesFixed] & 1) == 0)
      {
        v17 = [v16 reference];
        [v17 copyPropertiesFrom:v14];

        [v16 setReferencePropertiesFixed];
      }
    }

    v18.var2 += v18.var3;
  }

  *(a5 + 1) = i;
  WrdCharacterTextRun::~WrdCharacterTextRun(&v18);
}

+ (void)checkForNoteFrom:(id)a3 footnote:(BOOL)a4 runEnd:(int *)a5 readState:(void *)a6
{
  v8 = a4;
  v9 = a3;
  v13 = v9;
  if (v8)
  {
    v10 = [v9 footnoteTable];
  }

  else
  {
    v10 = [v9 endnoteTable];
  }

  CPOfNextNote = WrdNoteTable::getCPOfNextNote(v10, *(a6 + 1) - 1);
  if (CPOfNextNote >= *(a6 + 1) && CPOfNextNote < *a5)
  {
    *a5 = CPOfNextNote;
    if (v8)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    *a6 = v12;
  }
}

+ (void)checkForAnnotationFrom:(id)a3 runEnd:(int *)a4 readState:(void *)a5
{
  v14 = a3;
  v8 = [v14 annotationTable];
  CPOfNextAnnotation = WrdAnnotationTable::getCPOfNextAnnotation(v8, *(a5 + 1) - 1);
  v10 = [v14 annotationBookmarkTable];
  if (CPOfNextAnnotation >= *(a5 + 1))
  {
    v11 = v10;
    v12 = 0;
    do
    {
      if (CPOfNextAnnotation >= *a4 || (v12 & 1) != 0)
      {
        break;
      }

      v13 = [a1 isCPAnnotationRangeEnd:CPOfNextAnnotation bookmarkTable:v11];
      if (v13)
      {
        CPOfNextAnnotation = WrdAnnotationTable::getCPOfNextAnnotation(v8, CPOfNextAnnotation);
      }

      v12 = v13 ^ 1;
    }

    while (CPOfNextAnnotation >= *(a5 + 1));
    if (v12)
    {
      *a4 = CPOfNextAnnotation;
      *a5 = 5;
    }
  }
}

+ (BOOL)isCPAnnotationRangeEnd:(int)a3 bookmarkTable:(void *)a4
{
  v4 = *(a4 + 6) - *(a4 + 4);
  v5 = (v4 >> 3);
  if (!(v4 >> 3))
  {
    return 0;
  }

  if (*(WrdBookmarkTable::getBookmark(a4, 0) + 48) == a3)
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

    Bookmark = WrdBookmarkTable::getBookmark(a4, v9);
    v9 = v10 + 1;
  }

  while (*(Bookmark + 48) != a3);
  return v10 < v5;
}

+ (void)check:(id)a3 forFieldMarkerFrom:(id)a4 runEnd:(int *)a5 readState:(void *)a6
{
  v16 = a3;
  v9 = a4;
  v10 = [v9 fieldPositionTableForTextType:{objc_msgSend(v16, "textType")}];
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  v13 = WrdFieldPositionTable::lowerBoundOfCP(v10, *(a6 + 1));
  if (v13 < ((v11 - v12) >> 3))
  {
    Bookmark = WrdBookmarkTable::getBookmark(v10, v13);
    v15 = *(Bookmark + 8);
    if (v15 < *a5)
    {
      *a5 = v15;
      *a6 = 3;
      *(a6 + 2) = Bookmark;
    }
  }
}

+ (void)checkForBookmarkFrom:(id)a3 runEnd:(int *)a4 readState:(void *)a5
{
  v7 = a3;
  v8 = [v7 bookmarkTable];
  v9 = v8;
  *(a5 + 5) = *(a5 + 4);
  v10 = *(a5 + 6);
  if (*(a5 + 1) <= v10 + 1)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = *(a5 + 1);
  }

  v12 = *(v8 + 24) - *(v8 + 16);
  v13 = (v12 >> 3);
  if ((v12 >> 3))
  {
    v14 = 0;
    v15 = *a4;
    do
    {
      Bookmark = WrdBookmarkTable::getBookmark(v9, v14);
      if (!Bookmark[13])
      {
        v18 = Bookmark[11];
        v17 = Bookmark[12];
        v19 = v18 >= v11 && v18 <= v15;
        if (v19 && v18 < *a4)
        {
          if (v18 < v15)
          {
            *(a5 + 5) = *(a5 + 4);
            v15 = v18;
          }

          v22 = v14;
          std::vector<unsigned int>::push_back[abi:ne200100](a5 + 4, &v22);
        }

        else if (v17 >= v11 && v17 <= v15)
        {
          if (v17 < v15)
          {
            *(a5 + 5) = *(a5 + 4);
            v15 = v17;
          }

          v21 = v14;
          std::vector<unsigned int>::push_back[abi:ne200100](a5 + 4, &v21);
        }
      }

      ++v14;
    }

    while (v13 != v14);
    if (*(a5 + 4) != *(a5 + 5))
    {
      *a4 = v15;
      *(a5 + 7) = v15;
      *a5 = 4;
    }
  }
}

+ (void)checkForAnnotationBookmarkFrom:(id)a3 runEnd:(int *)a4 readState:(void *)a5
{
  v7 = a3;
  v8 = [v7 annotationBookmarkTable];
  v9 = v8;
  *(a5 + 9) = *(a5 + 8);
  v10 = *(a5 + 14);
  if (*(a5 + 1) <= v10 + 1)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = *(a5 + 1);
  }

  v12 = *(v8 + 24) - *(v8 + 16);
  v13 = (v12 >> 3);
  if ((v12 >> 3))
  {
    v14 = 0;
    v15 = *a4;
    do
    {
      Bookmark = WrdBookmarkTable::getBookmark(v9, v14);
      v18 = *(Bookmark + 44);
      v17 = *(Bookmark + 48);
      v19 = v18 >= v11 && v18 <= v15;
      if (v19 && v18 < *a4)
      {
        if (v18 < v15)
        {
          *(a5 + 9) = *(a5 + 8);
          v15 = v18;
        }

        v22 = v14;
        std::vector<unsigned int>::push_back[abi:ne200100](a5 + 8, &v22);
      }

      else if (v17 >= v11 && v17 <= v15)
      {
        if (v17 < v15)
        {
          *(a5 + 9) = *(a5 + 8);
          v15 = v17;
        }

        v21 = v14;
        std::vector<unsigned int>::push_back[abi:ne200100](a5 + 8, &v21);
      }

      ++v14;
    }

    while (v13 != v14);
    if (*(a5 + 8) != *(a5 + 9))
    {
      *a4 = v15;
      *(a5 + 15) = v15;
      *a5 = 6;
    }
  }
}

+ (void)readSpecialCharactersFor:(id)a3 from:(id)a4 textRun:(WrdCharacterTextRun *)a5
{
  v15 = a3;
  v8 = a4;
  v9 = [v8 readCharactersForTextRun:a5];
  var2 = a5->var2;
  v11 = [v9 length];
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = [v9 characterAtIndex:i];
      v14 = var2 + i;
      if (v13 == 1)
      {
        [a1 readPictureFor:v15 from:v8 at:v14 textRun:a5];
      }

      else if (v13 == 8)
      {
        [a1 readOfficeArtFor:v15 from:v8 at:v14 textRun:a5];
      }

      else
      {
        [a1 readSpecialCharacterFor:v15 from:v8 at:v14 textRun:a5];
      }
    }
  }
}

+ (void)readOfficeArtFor:(id)a3 from:(id)a4 at:(int)a5 textRun:(WrdCharacterTextRun *)a6
{
  v7 = *&a5;
  v11 = a3;
  v9 = a4;
  v10 = [[WDOfficeArt alloc] initWithParagraph:v11];
  [WBOfficeArt readFrom:v9 at:v7 textRun:a6 paragraph:v11 to:v10];
  if ([(WDOfficeArt *)v10 isDrawableOverridden])
  {
    [v11 addRun:v10];
  }
}

+ (void)readPictureFor:(id)a3 from:(id)a4 at:(int)a5 textRun:(WrdCharacterTextRun *)a6
{
  v7 = *&a5;
  v9 = a3;
  v10 = a4;
  var4 = a6->var4;
  if (WrdCharacterProperties::isPicture(var4) || WrdCharacterProperties::isOle1Object(var4))
  {
    WrdCharacterTextRun::WrdCharacterTextRun(&v15);
    v15.var1 = a6->var1;
    v15.var2 = v7 - 1;
    v12 = [v10 wrdReader];
    (*(*v12 + 192))(v12, &v15);
    WrdCharacterProperties::WrdCharacterProperties(&v14, v15.var4);
    if (WrdCharacterProperties::isOle2Object(&v14))
    {
      v13 = [(WDOfficeArt *)[WDOleObject alloc] initWithParagraph:v9];
      [WBOleObject readFrom:v10 at:v7 oleId:v14.var59 textRun:a6 paragraph:v9 to:v13];
      [v9 addRun:v13];
    }

    else
    {
      v13 = [(WDOfficeArt *)[WDPicture alloc] initWithParagraph:v9];
      [WBPicture readFrom:v10 at:v7 textRun:a6 paragraph:v9 to:v13];
      if (v13 && [(WDPicture *)v13 hasContent])
      {
        [v9 addRun:v13];
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

+ (void)readSpecialCharacterFor:(id)a3 from:(id)a4 at:(int)a5 textRun:(WrdCharacterTextRun *)a6
{
  v7 = *&a5;
  v11 = a3;
  v9 = a4;
  v10 = [v11 addSpecialCharacter];
  [WBSpecialCharacter readFrom:v9 at:v7 textRun:a6 paragraph:v11 specialCharacter:v10];
}

+ (void)readSymbolsFor:(id)a3 from:(id)a4 textRun:(WrdCharacterTextRun *)a5
{
  v13 = a3;
  v7 = a4;
  var2 = a5->var2;
  var3 = a5->var3;
  a5->var3 = 1;
  if (var2 < var3 + var2)
  {
    v10 = var3;
    v11 = var2;
    do
    {
      a5->var2 = v11;
      v12 = [v13 addSymbol];
      [WBSymbol readFrom:v7 textRun:a5 paragraph:v13 symbol:v12];

      ++v11;
      --v10;
    }

    while (v10);
  }

  a5->var2 = var2;
  a5->var3 = var3;
}

+ (void)readNoteFor:(id)a3 from:(id)a4 readState:(void *)a5
{
  v11 = a3;
  v7 = a4;
  if (*a5 == 1)
  {
    [v11 addFootnote];
  }

  else
  {
    [v11 addEndnote];
  }
  v8 = ;
  v9 = [WBNote readFrom:v7 at:*(a5 + 1) paragraph:v11 note:v8];
  if (v9 <= 0)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v10 = *(a5 + 1) + v9;
  *a5 = 0;
  *(a5 + 1) = v10;
}

+ (void)readAnnotationFor:(id)a3 from:(id)a4 readState:(void *)a5
{
  [WBAnnotation readFrom:a4 at:*(a5 + 1) paragraph:a3];
  v6 = *(a5 + 1) + 1;
  *a5 = 0;
  *(a5 + 1) = v6;
}

+ (void)readFieldMarkerFor:(id)a3 from:(id)a4 readState:(void *)a5
{
  v10 = a3;
  v7 = a4;
  v8 = [v10 addFieldMarker];
  [WBFieldMarker readFrom:v7 position:*(a5 + 2) paragraph:v10 fieldMarker:v8];
  v9 = *(*(a5 + 2) + 8) + 1;
  *a5 = 0;
  *(a5 + 1) = v9;
}

+ (void)readBookmarkFor:(id)a3 from:(id)a4 readState:(void *)a5
{
  v14 = a3;
  v7 = a4;
  v8 = [v7 bookmarkTable];
  v9 = *(a5 + 4);
  if (v9 != *(a5 + 5))
  {
    v10 = v8;
    v11 = ((*(v8 + 24) - *(v8 + 16)) >> 3);
    do
    {
      if (*v9 < v11)
      {
        Bookmark = WrdBookmarkTable::getBookmark(v10, *v9);
        v13 = *(a5 + 7);
        if (*(Bookmark + 44) == v13)
        {
          [WBBookmark readFrom:v7 index:*v9 type:0 paragraph:v14];
          v13 = *(a5 + 7);
        }

        if (*(Bookmark + 48) == v13)
        {
          [WBBookmark readFrom:v7 index:*v9 type:1 paragraph:v14];
        }
      }

      ++v9;
    }

    while (v9 != *(a5 + 5));
  }

  *(a5 + 6) = *(a5 + 7);
  *a5 = 0;
}

+ (void)readAnnotationBookmarkFor:(id)a3 from:(id)a4 readState:(void *)a5
{
  v17 = a3;
  v7 = a4;
  v8 = [v7 annotationBookmarkTable];
  v9 = *(a5 + 8);
  if (v9 != *(a5 + 9))
  {
    v10 = v8;
    v11 = ((*(v8 + 24) - *(v8 + 16)) >> 3);
    do
    {
      if (*v9 < v11)
      {
        Bookmark = WrdBookmarkTable::getBookmark(v10, *v9);
        v13 = *(a5 + 15);
        if (*(Bookmark + 44) == v13)
        {
          v14 = [WBAnnotation readRangedFrom:v7 index:*v9 type:0 paragraph:v17];
          [v7 setAnnotationRangeStart:v14 forBookmarkIndex:*v9];

          v13 = *(a5 + 15);
        }

        if (*(Bookmark + 48) == v13)
        {
          v15 = [WBAnnotation readRangedFrom:v7 index:*v9 type:1 paragraph:v17];
          v16 = [v7 annotationRangeStartForBookmarkIndex:*v9];
          [v16 setOtherEndOfRangedAnnotation:v15];
          [v15 setOtherEndOfRangedAnnotation:v16];
          [v15 useDataFromOtherEnd];
        }
      }

      ++v9;
    }

    while (v9 != *(a5 + 9));
  }

  *(a5 + 14) = *(a5 + 15);
  *a5 = 0;
}

@end