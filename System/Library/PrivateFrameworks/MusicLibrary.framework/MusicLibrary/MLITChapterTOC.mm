@interface MLITChapterTOC
+ (unsigned)_chapterDataCookieIndexMapForProperty:(int)property ofChapterTOC:(id)c;
+ (void)enumerateArtworkCacheIDsInFlattenedChapterData:(id)data usingBlock:(id)block;
+ (void)enumerateChapterTimesInFlattenedChapterData:(id)data usingBlock:(id)block;
- (MLITChapterTOC)initWithChapterDataRef:(ChapterData *)ref totalTimeInMS:(unsigned int)s;
- (id)titlePropertyOfChapterAtIndex:(unsigned int)index;
- (id)urlPropertyOfChapterAtIndex:(unsigned int)index;
- (id)urlTitlePropertyOfChapterAtIndex:(unsigned int)index;
- (unsigned)_cachedCookieIndexMapForProperty:(int)property createIfNecessary:(BOOL)necessary;
- (unsigned)chapterIndexForGroupIndex:(unsigned int)index groupingProperty:(int)property;
- (unsigned)countOfChapters;
- (unsigned)countOfGroupsForProperty:(int)property;
- (unsigned)durationInMSOfGroupAtIndex:(unsigned int)index groupingProperty:(int)property;
- (unsigned)groupIndexAtTimeLocationInMS:(unsigned int)s groupingProperty:(int)property;
- (unsigned)groupIndexForChapterIndex:(unsigned int)index groupingProperty:(int)property;
- (unsigned)timeLocationInMSOfChapterAtIndex:(unsigned int)index;
- (unsigned)timeLocationInMSOfGroupAtIndex:(unsigned int)index groupingProperty:(int)property;
- (void)dealloc;
@end

@implementation MLITChapterTOC

- (id)urlPropertyOfChapterAtIndex:(unsigned int)index
{
  v7 = *MEMORY[0x277D85DE8];
  chapterDataRef = self->_chapterDataRef;
  if (!chapterDataRef)
  {
    goto LABEL_9;
  }

  if ((ChapterData_GetFlags() & 4) == 0 || ChapterData_GetIndChapterTime() == -1)
  {
LABEL_8:
    chapterDataRef = 0;
LABEL_9:
    v4 = 0;
LABEL_10:

    goto LABEL_11;
  }

  bzero(v6, 0x800uLL);
  if (!ChapterData_FindURLForTime())
  {
    if (v6[1])
    {
      v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v6];
      if (v4)
      {
        chapterDataRef = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
      }

      else
      {
        chapterDataRef = 0;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  chapterDataRef = 0;
LABEL_11:

  return chapterDataRef;
}

- (id)urlTitlePropertyOfChapterAtIndex:(unsigned int)index
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_chapterDataRef || (ChapterData_GetFlags() & 4) == 0)
  {
    goto LABEL_3;
  }

  if (ChapterData_GetIndChapterTime() == -1)
  {
    v5 = 0;
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    if (ChapterData_FindURLTitleForTime())
    {
LABEL_3:
      v4 = 0;
      goto LABEL_9;
    }

    v5 = NSStringCreateWithUStr255(v9);
  }

  v6 = v5;
  urlTitleTrimmingCharacterSet = [(MLITChapterTOC *)self urlTitleTrimmingCharacterSet];
  v4 = [v6 stringByTrimmingCharactersInSet:urlTitleTrimmingCharacterSet];

LABEL_9:

  return v4;
}

- (id)titlePropertyOfChapterAtIndex:(unsigned int)index
{
  v6 = *MEMORY[0x277D85DE8];
  if (!self->_chapterDataRef || (ChapterData_GetFlags() & 1) == 0 || ChapterData_GetIndChapterTime() == -1 || (memset(v5, 0, sizeof(v5)), ChapterData_CopyProperty()))
  {
    v3 = 0;
  }

  else
  {
    v3 = NSStringCreateWithUStr255(v5);
  }

  return v3;
}

- (unsigned)timeLocationInMSOfChapterAtIndex:(unsigned int)index
{
  chapterDataRef = self->_chapterDataRef;
  if (chapterDataRef)
  {
    LODWORD(chapterDataRef) = ChapterData_GetIndChapterTime();
  }

  return chapterDataRef;
}

- (unsigned)timeLocationInMSOfGroupAtIndex:(unsigned int)index groupingProperty:(int)property
{
  v5 = [(MLITChapterTOC *)self chapterIndexForGroupIndex:*&index groupingProperty:*&property];

  return [(MLITChapterTOC *)self timeLocationInMSOfChapterAtIndex:v5];
}

- (unsigned)groupIndexAtTimeLocationInMS:(unsigned int)s groupingProperty:(int)property
{
  v4 = *&property;
  v6 = [(MLChapterTOC *)self chapterIndexAtTimeLocationInMS:*&s];

  return [(MLITChapterTOC *)self groupIndexForChapterIndex:v6 groupingProperty:v4];
}

- (unsigned)durationInMSOfGroupAtIndex:(unsigned int)index groupingProperty:(int)property
{
  v4 = *&property;
  v7 = [MLITChapterTOC chapterIndexForGroupIndex:"chapterIndexForGroupIndex:groupingProperty:" groupingProperty:?];
  if ([(MLITChapterTOC *)self countOfGroupsForProperty:v4]- 1 == index)
  {
    totalTimeInMS = [(MLITChapterTOC *)self totalTimeInMS];
    return totalTimeInMS - [(MLITChapterTOC *)self timeLocationInMSOfChapterAtIndex:v7];
  }

  else
  {
    v10 = [(MLITChapterTOC *)self timeLocationInMSOfChapterAtIndex:[(MLITChapterTOC *)self chapterIndexForGroupIndex:index + 1 groupingProperty:v4]];
    return v10 + ~[(MLITChapterTOC *)self timeLocationInMSOfChapterAtIndex:v7];
  }
}

- (unsigned)groupIndexForChapterIndex:(unsigned int)index groupingProperty:(int)property
{
  chapterDataRef = self->_chapterDataRef;
  v5 = 0x7FFFFFFF;
  if (chapterDataRef)
  {
    IndChapterTime = ChapterData_GetIndChapterTime();
    v9 = 0x7FFFFFFF;
    if ((property - 1) <= 3 && !(off_284086E08[property - 1])(chapterDataRef, IndChapterTime, 0, &v9) && v9 != 0x7FFFFFFF)
    {
      return v9 - 1;
    }
  }

  return v5;
}

- (unsigned)chapterIndexForGroupIndex:(unsigned int)index groupingProperty:(int)property
{
  v5 = [(MLITChapterTOC *)self _cachedCookieIndexMapForProperty:*&property createIfNecessary:1];
  if (v5 && *v5 > index)
  {
    return v5[index + 1] - 1;
  }

  return index;
}

- (unsigned)countOfGroupsForProperty:(int)property
{
  v5 = [(MLITChapterTOC *)self _cachedCookieIndexMapForProperty:*&property createIfNecessary:0];
  if (v5)
  {
    return *v5;
  }

  chapterDataRef = self->_chapterDataRef;
  if (!chapterDataRef)
  {
    return 0;
  }

  result = ChapterData_GetNumChapters();
  if (result)
  {
    IndChapterTime = ChapterData_GetIndChapterTime();
    v9 = 0x7FFFFFFF;
    if ((property - 1) > 3)
    {
      return 0;
    }

    if ((off_284086E08[property - 1])(chapterDataRef, IndChapterTime, 0, &v9))
    {
      return 0;
    }

    result = v9;
    if (v9 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return result;
}

- (unsigned)_cachedCookieIndexMapForProperty:(int)property createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = *&property;
  v7 = [objc_opt_class() _chapterDataCookieIndexMapForProperty:*&property ofChapterTOC:self];
  v8 = v7;
  if (!v7 || (chapterDataRef = self->_chapterDataRef) == 0)
  {
LABEL_16:
    if (v8)
    {
      return *v8;
    }

    else
    {
      return 0;
    }
  }

  result = *v7;
  if (*v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = !necessaryCopy;
  }

  if (!v11)
  {
    NumChapters = ChapterData_GetNumChapters();
    v13 = [(MLITChapterTOC *)self countOfGroupsForProperty:v5];
    result = malloc_type_calloc((NumChapters + 1), 4uLL, 0x100004052888210uLL);
    *v8 = result;
    *result = v13;
    if (NumChapters)
    {
      v14 = (v5 - 1);
      v15 = 1;
      v16 = 0x7FFFFFFF;
      v17 = 1;
      do
      {
        IndChapterTime = ChapterData_GetIndChapterTime();
        v20 = 0x7FFFFFFF;
        v19 = 0x7FFFFFFF;
        if (v14 <= 3)
        {
          if ((off_284086E08[v14])(chapterDataRef, IndChapterTime, 0, &v20))
          {
            v19 = 0x7FFFFFFF;
          }

          else
          {
            v19 = v20;
          }
        }

        if (v19 != v16)
        {
          (*v8)[v17++] = v15;
          v16 = v19;
        }

        ++v15;
        --NumChapters;
      }

      while (NumChapters);
      goto LABEL_16;
    }
  }

  return result;
}

- (unsigned)countOfChapters
{
  chapterDataRef = self->_chapterDataRef;
  if (chapterDataRef)
  {
    LODWORD(chapterDataRef) = ChapterData_GetNumChapters();
  }

  return chapterDataRef;
}

- (void)dealloc
{
  if (self->_chapterDataRef)
  {
    ChapterData_Release();
  }

  picCookieIndexMap = self->_picCookieIndexMap;
  if (picCookieIndexMap)
  {
    free(picCookieIndexMap);
  }

  urlCookieIndexMap = self->_urlCookieIndexMap;
  if (urlCookieIndexMap)
  {
    free(urlCookieIndexMap);
  }

  nameCookieIndexMap = self->_nameCookieIndexMap;
  if (nameCookieIndexMap)
  {
    free(nameCookieIndexMap);
  }

  v6.receiver = self;
  v6.super_class = MLITChapterTOC;
  [(MLITChapterTOC *)&v6 dealloc];
}

- (MLITChapterTOC)initWithChapterDataRef:(ChapterData *)ref totalTimeInMS:(unsigned int)s
{
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MLITChapterTOC.m" lineNumber:44 description:@"MLITChapterTOC is an abstract class.  You must allocate a concrete subclass."];
  }

  v13.receiver = self;
  v13.super_class = MLITChapterTOC;
  v9 = [(MLITChapterTOC *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_totalTimeInMS = s;
    if (ref)
    {
      v9->_chapterDataRef = ChapterData_Retain();
    }
  }

  return v10;
}

+ (void)enumerateChapterTimesInFlattenedChapterData:(id)data usingBlock:(id)block
{
  dataCopy = data;
  blockCopy = block;
  v7 = 0;
  [dataCopy length];
  [dataCopy bytes];
  ChapterData_CreateWithFlattenedData();
  ChapterData_Release();
}

+ (void)enumerateArtworkCacheIDsInFlattenedChapterData:(id)data usingBlock:(id)block
{
  v8 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  blockCopy = block;
  v7 = 0;
  [dataCopy length];
  [dataCopy bytes];
  ChapterData_CreateWithFlattenedData();
  ChapterData_Release();
}

+ (unsigned)_chapterDataCookieIndexMapForProperty:(int)property ofChapterTOC:(id)c
{
  cCopy = c;
  if (!cCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MLITChapterTOC.m" lineNumber:92 description:@"invalid parameter"];
  }

  if ((property - 1) > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = &cCopy[*off_2787635A8[property - 1]];
  }

  return v8;
}

@end