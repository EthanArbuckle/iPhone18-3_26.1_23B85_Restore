@interface WBAnnotation
+ (id)readRangedFrom:(id)from index:(unsigned int)index type:(int)type paragraph:(id)paragraph;
+ (unint64_t)findStartFrom:(id)from annotation:(const WrdAnnotation *)annotation;
+ (void)readFrom:(id)from at:(int)at paragraph:(id)paragraph;
@end

@implementation WBAnnotation

+ (void)readFrom:(id)from at:(int)at paragraph:(id)paragraph
{
  fromCopy = from;
  paragraphCopy = paragraph;
  v23 = 0;
  AnnotationAtMainTextCP = WrdAnnotationTable::getAnnotationAtMainTextCP([fromCopy annotationTable], at, &v23);
  v11 = *(AnnotationAtMainTextCP + 24);
  if (*(v11 + 32) == -1)
  {
    v12 = [paragraphCopy addAnnotation:2];
    v13 = [self findStartFrom:fromCopy annotation:AnnotationAtMainTextCP];
    WrdTextRun::WrdTextRun(v21, 4, *(AnnotationAtMainTextCP + 12) + v13);
    v22 = *(AnnotationAtMainTextCP + 16) - v13;
    text = [v12 text];
    [WBText readFrom:fromCopy text:text textRun:v21];

    WrdCharacterTextRun::WrdCharacterTextRun(&v20);
    v15 = *(AnnotationAtMainTextCP + 8);
    v20.var1 = 0;
    v20.var2 = v15;
    wrdReader = [fromCopy wrdReader];
    (*(*wrdReader + 192))(wrdReader, &v20);
    v20.var3 = 1;
    reference = [v12 reference];
    [WBCharacterRun readFrom:fromCopy wrdTextRun:&v20 run:reference paragraph:paragraphCopy];

    v18 = [MEMORY[0x277CBEAA8] tc_dateWithWordDate:*(AnnotationAtMainTextCP + 32)];
    [v12 setDate:v18];

    v19 = [fromCopy annotationOwner:*(v11 + 36)];
    [v12 setOwner:v19];

    WrdCharacterTextRun::~WrdCharacterTextRun(&v20);
  }
}

+ (id)readRangedFrom:(id)from index:(unsigned int)index type:(int)type paragraph:(id)paragraph
{
  v7 = *&type;
  fromCopy = from;
  v11 = [paragraph addAnnotation:v7];
  if (v7 == 1)
  {
    [fromCopy setAnnotationRangeStart:0];
LABEL_11:
    v23 = v11;
    goto LABEL_12;
  }

  if (v7)
  {
    goto LABEL_11;
  }

  annotationBookmarkTable = [fromCopy annotationBookmarkTable];
  if (index >= ((*(annotationBookmarkTable + 6) - *(annotationBookmarkTable + 4)) >> 3))
  {
    goto LABEL_11;
  }

  Bookmark = WrdBookmarkTable::getBookmark(annotationBookmarkTable, index);
  if (*(Bookmark + 40) >= 6u)
  {
    annotationTable = [fromCopy annotationTable];
    v26 = 0;
    SInt32 = CsLeReadSInt32((*(Bookmark + 32) + 2));
    AnnotationForBookmark = WrdAnnotationTable::getAnnotationForBookmark(annotationTable, SInt32, &v26);
    v17 = AnnotationForBookmark;
    if (AnnotationForBookmark)
    {
      if ((*(AnnotationForBookmark + 16) & 0x80000000) == 0)
      {
        v18 = [self findStartFrom:fromCopy annotation:AnnotationForBookmark];
        WrdTextRun::WrdTextRun(v25, 4, *(v17 + 12) + v18);
        v25[4] = *(v17 + 16) - v18;
        text = [v11 text];
        [WBText readFrom:fromCopy text:text textRun:v25];

        v20 = *(v17 + 32);
        if (!WrdDateTime::isDefault(v20))
        {
          v21 = [MEMORY[0x277CBEAA8] tc_dateWithWordDate:v20];
          [v11 setDate:v21];
        }

        v22 = [fromCopy annotationOwner:*(*(v17 + 24) + 36)];
        [v11 setOwner:v22];

        [fromCopy setAnnotationRangeStart:v11];
        goto LABEL_11;
      }
    }
  }

  v23 = 0;
LABEL_12:

  return v23;
}

+ (unint64_t)findStartFrom:(id)from annotation:(const WrdAnnotation *)annotation
{
  v4 = [from readCharactersFrom:annotation->var2 to:(annotation->var3 + annotation->var2) textType:4];
  v5 = [v4 rangeOfString:@"\x05"];
  if (v6 == 1)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end