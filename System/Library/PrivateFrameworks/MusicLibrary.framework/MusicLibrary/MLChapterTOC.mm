@interface MLChapterTOC
- (unsigned)chapterIndexAtTimeLocationInMS:(unsigned int)a3;
@end

@implementation MLChapterTOC

- (unsigned)chapterIndexAtTimeLocationInMS:(unsigned int)a3
{
  v5 = [(MLChapterTOC *)self countOfChapters];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [(MLChapterTOC *)self timeLocationInMSOfChapterAtIndex:v6];
      if (v7 <= a3 && v8 > a3)
      {
        break;
      }

      v6 = (v6 + 1);
      v7 = v8;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    if (v6)
    {
      return v6 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_6:
    if (a3 != 0 && v5 != 0)
    {
      return v5 - 1;
    }

    else
    {
      return 0x7FFFFFFF;
    }
  }
}

@end