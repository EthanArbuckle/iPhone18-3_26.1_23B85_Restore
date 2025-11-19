@interface WBAnnotation
+ (id)readRangedFrom:(id)a3 index:(unsigned int)a4 type:(int)a5 paragraph:(id)a6;
+ (unint64_t)findStartFrom:(id)a3 annotation:(const WrdAnnotation *)a4;
+ (void)readFrom:(id)a3 at:(int)a4 paragraph:(id)a5;
@end

@implementation WBAnnotation

+ (void)readFrom:(id)a3 at:(int)a4 paragraph:(id)a5
{
  v8 = a3;
  v9 = a5;
  v23 = 0;
  AnnotationAtMainTextCP = WrdAnnotationTable::getAnnotationAtMainTextCP([v8 annotationTable], a4, &v23);
  v11 = *(AnnotationAtMainTextCP + 24);
  if (*(v11 + 32) == -1)
  {
    v12 = [v9 addAnnotation:2];
    v13 = [a1 findStartFrom:v8 annotation:AnnotationAtMainTextCP];
    WrdTextRun::WrdTextRun(v21, 4, *(AnnotationAtMainTextCP + 12) + v13);
    v22 = *(AnnotationAtMainTextCP + 16) - v13;
    v14 = [v12 text];
    [WBText readFrom:v8 text:v14 textRun:v21];

    WrdCharacterTextRun::WrdCharacterTextRun(&v20);
    v15 = *(AnnotationAtMainTextCP + 8);
    v20.var1 = 0;
    v20.var2 = v15;
    v16 = [v8 wrdReader];
    (*(*v16 + 192))(v16, &v20);
    v20.var3 = 1;
    v17 = [v12 reference];
    [WBCharacterRun readFrom:v8 wrdTextRun:&v20 run:v17 paragraph:v9];

    v18 = [MEMORY[0x277CBEAA8] tc_dateWithWordDate:*(AnnotationAtMainTextCP + 32)];
    [v12 setDate:v18];

    v19 = [v8 annotationOwner:*(v11 + 36)];
    [v12 setOwner:v19];

    WrdCharacterTextRun::~WrdCharacterTextRun(&v20);
  }
}

+ (id)readRangedFrom:(id)a3 index:(unsigned int)a4 type:(int)a5 paragraph:(id)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = [a6 addAnnotation:v7];
  if (v7 == 1)
  {
    [v10 setAnnotationRangeStart:0];
LABEL_11:
    v23 = v11;
    goto LABEL_12;
  }

  if (v7)
  {
    goto LABEL_11;
  }

  v12 = [v10 annotationBookmarkTable];
  if (a4 >= ((*(v12 + 6) - *(v12 + 4)) >> 3))
  {
    goto LABEL_11;
  }

  Bookmark = WrdBookmarkTable::getBookmark(v12, a4);
  if (*(Bookmark + 40) >= 6u)
  {
    v14 = [v10 annotationTable];
    v26 = 0;
    SInt32 = CsLeReadSInt32((*(Bookmark + 32) + 2));
    AnnotationForBookmark = WrdAnnotationTable::getAnnotationForBookmark(v14, SInt32, &v26);
    v17 = AnnotationForBookmark;
    if (AnnotationForBookmark)
    {
      if ((*(AnnotationForBookmark + 16) & 0x80000000) == 0)
      {
        v18 = [a1 findStartFrom:v10 annotation:AnnotationForBookmark];
        WrdTextRun::WrdTextRun(v25, 4, *(v17 + 12) + v18);
        v25[4] = *(v17 + 16) - v18;
        v19 = [v11 text];
        [WBText readFrom:v10 text:v19 textRun:v25];

        v20 = *(v17 + 32);
        if (!WrdDateTime::isDefault(v20))
        {
          v21 = [MEMORY[0x277CBEAA8] tc_dateWithWordDate:v20];
          [v11 setDate:v21];
        }

        v22 = [v10 annotationOwner:*(*(v17 + 24) + 36)];
        [v11 setOwner:v22];

        [v10 setAnnotationRangeStart:v11];
        goto LABEL_11;
      }
    }
  }

  v23 = 0;
LABEL_12:

  return v23;
}

+ (unint64_t)findStartFrom:(id)a3 annotation:(const WrdAnnotation *)a4
{
  v4 = [a3 readCharactersFrom:a4->var2 to:(a4->var3 + a4->var2) textType:4];
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