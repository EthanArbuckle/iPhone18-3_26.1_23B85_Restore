@interface MLChapterTOC
- (unsigned)chapterIndexAtTimeLocationInMS:(unsigned int)s;
@end

@implementation MLChapterTOC

- (unsigned)chapterIndexAtTimeLocationInMS:(unsigned int)s
{
  countOfChapters = [(MLChapterTOC *)self countOfChapters];
  if (countOfChapters)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [(MLChapterTOC *)self timeLocationInMSOfChapterAtIndex:v6];
      if (v7 <= s && v8 > s)
      {
        break;
      }

      v6 = (v6 + 1);
      v7 = v8;
      if (countOfChapters == v6)
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
    if (s != 0 && countOfChapters != 0)
    {
      return countOfChapters - 1;
    }

    else
    {
      return 0x7FFFFFFF;
    }
  }
}

@end