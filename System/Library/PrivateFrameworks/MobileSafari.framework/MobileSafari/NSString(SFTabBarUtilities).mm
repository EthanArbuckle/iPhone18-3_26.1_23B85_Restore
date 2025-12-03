@interface NSString(SFTabBarUtilities)
- (id)truncatedTitleWithFont:()SFTabBarUtilities desiredWidth:truncatedSize:sortedTabBarItemTitles:;
@end

@implementation NSString(SFTabBarUtilities)

- (id)truncatedTitleWithFont:()SFTabBarUtilities desiredWidth:truncatedSize:sortedTabBarItemTitles:
{
  v10 = a4;
  v11 = a6;
  [self _legacy_sizeWithFont:v10];
  if (a5)
  {
    v14 = *MEMORY[0x1E695F060];
    *a5 = v12;
    *(a5 + 8) = v13;
    v15 = a5 + 8;
  }

  else
  {
    v15 = 8;
    v14 = v12;
  }

  if (v12 <= a2)
  {
    goto LABEL_21;
  }

  selfCopy = self;
  v17 = v11;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v18 = [v17 indexOfObject:selfCopy inSortedRange:0 options:objc_msgSend(v17 usingComparator:{"count"), 1024, &__block_literal_global_50}];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [selfCopy length];
  }

  else
  {
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __maximumTruncationIndexForTitle_block_invoke_2;
    v38 = &unk_1E721E918;
    v40 = &v41;
    v39 = selfCopy;
    v20 = _Block_copy(&v35);
    v21 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v18, objc_msgSend(v17, "count", v35, v36, v37, v38) - v18}];
    [v17 enumerateObjectsAtIndexes:v21 options:0 usingBlock:v20];

    v22 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v18}];
    [v17 enumerateObjectsAtIndexes:v22 options:2 usingBlock:v20];

    v19 = v42[3];
  }

  _Block_object_dispose(&v41, 8);

  if (v19)
  {
    selfCopy2 = [selfCopy mutableCopy];
    v24 = 0;
    while (1)
    {
      v25 = v14;
      if (a5)
      {
        v25 = *a5;
      }

      if (v25 <= a2 || v19 <= v24)
      {
        break;
      }

      v27 = deleteOneWord(selfCopy2, v19 - v24, 0);
      if (!v27)
      {
        break;
      }

      v24 += v27;
      [selfCopy2 _legacy_sizeWithFont:v10];
      if (a5)
      {
        *a5 = v28;
        *v15 = v29;
      }

      else
      {
        v14 = v28;
      }
    }

    if (!truncatedTitleWithFont_desiredWidth_truncatedSize_sortedTabBarItemTitles__nonAlphanumericCharacters)
    {
      alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
      invertedSet = [alphanumericCharacterSet invertedSet];
      v32 = truncatedTitleWithFont_desiredWidth_truncatedSize_sortedTabBarItemTitles__nonAlphanumericCharacters;
      truncatedTitleWithFont_desiredWidth_truncatedSize_sortedTabBarItemTitles__nonAlphanumericCharacters = invertedSet;
    }

    if (v24)
    {
      do
      {
        v33 = [selfCopy2 length];
      }

      while (deleteOneWord(selfCopy2, v33, truncatedTitleWithFont_desiredWidth_truncatedSize_sortedTabBarItemTitles__nonAlphanumericCharacters));
    }
  }

  else
  {
LABEL_21:
    selfCopy2 = self;
  }

  return selfCopy2;
}

@end