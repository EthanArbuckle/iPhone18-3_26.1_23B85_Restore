@interface ICNoteListSortUtilities
+ (id)dateForCurrentSortTypeAccessibilityStringForNote:(id)a3 folderNoteSortType:(id)a4;
+ (id)dateForCurrentSortTypeForNote:(id)a3 folderNoteSortType:(id)a4;
+ (id)descriptionForNoteListSortType:(int64_t)a3;
+ (id)sortDescriptorsForCurrentTypeIncludingPinnedNotes:(BOOL)a3;
+ (id)sortDescriptorsForCurrentTypeIncludingPinnedNotes:(BOOL)a3 folderNoteSortType:(id)a4;
+ (id)sortDescriptorsForPinnedNotes;
+ (id)sortDescriptorsForType:(int64_t)a3 ascending:(BOOL)a4;
+ (int64_t)currentNoteListSortType;
+ (int64_t)folderSortOrderForNoteListSortType:(int64_t)a3;
+ (int64_t)sortTypeForFolderNoteOrder:(int64_t)a3;
+ (int64_t)sortTypeForTag:(int64_t)a3;
+ (int64_t)tagForSortType:(int64_t)a3;
+ (void)clearCache;
+ (void)setCurrentNoteListSortType:(int64_t)a3;
+ (void)setCurrentNoteListSortTypeByTag:(int64_t)a3;
@end

@implementation ICNoteListSortUtilities

+ (int64_t)currentNoteListSortType
{
  v2 = cachedNoteListSortType;
  if (cachedNoteListSortType || (v3 = objc_opt_class(), [ICSettingsUtilities objectForKey:@"kICSettingsNoteListSortTypeKey"], v4 = objc_claimAutoreleasedReturnValue(), ICDynamicCast(v3, v4), v5 = objc_claimAutoreleasedReturnValue(), v6 = cachedNoteListSortType, cachedNoteListSortType = v5, v6, v4, (v2 = cachedNoteListSortType) != 0))
  {
    result = [v2 integerValue];
    if (result < 3)
    {
      return result;
    }

    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICNoteListSortUtilities currentNoteListSortType]", 1, 0, @"Unexpected Note List Sort Type");
  }

  else
  {
    cachedNoteListSortType = &unk_1F4FD7158;
  }

  return 0;
}

+ (id)sortDescriptorsForPinnedNotes
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"isPinned" ascending:0];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (void)clearCache
{
  v2 = cachedNoteListSortType;
  cachedNoteListSortType = 0;
}

+ (void)setCurrentNoteListSortType:(int64_t)a3
{
  if ([a1 currentNoteListSortType] != a3)
  {
    if (a3 >= 3)
    {

      +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICNoteListSortUtilities setCurrentNoteListSortType:]", 1, 0, @"Unexpected Note List Sort Type");
    }

    else
    {
      v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v5 = cachedNoteListSortType;
      cachedNoteListSortType = v4;

      v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      [ICSettingsUtilities setObject:v6 forKey:@"kICSettingsNoteListSortTypeKey"];

      v7 = +[ICWidget sharedWidget];
      [v7 reloadTimelinesWithReason:@"Default note list sort type has changed"];
    }
  }
}

+ (id)sortDescriptorsForType:(int64_t)a3 ascending:(BOOL)a4
{
  v4 = a4;
  v13[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:a4 selector:sel_localizedStandardCompare_];
      v12[0] = v5;
      v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"modificationDate" ascending:v4 ^ 1];
      v12[1] = v6;
      v7 = v12;
    }

    else if (a3 == 1)
    {
      v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:!a4];
      v13[0] = v5;
      v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:v4 selector:sel_localizedStandardCompare_];
      v13[1] = v6;
      v7 = v13;
    }

    else
    {
      +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICNoteListSortUtilities sortDescriptorsForType:ascending:]", 1, 0, @"Unexpected sort type for sort descriptors");
      v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"modificationDate" ascending:v4 ^ 1];
      v10[0] = v5;
      v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:v4 selector:sel_localizedStandardCompare_];
      v10[1] = v6;
      v7 = v10;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"modificationDate" ascending:!a4];
    v11[0] = v5;
    v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:v4 selector:sel_localizedStandardCompare_];
    v11[1] = v6;
    v7 = v11;
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v8;
}

+ (id)sortDescriptorsForCurrentTypeIncludingPinnedNotes:(BOOL)a3
{
  v3 = a3;
  v5 = [a1 sortDescriptorsForType:{objc_msgSend(a1, "currentNoteListSortType")}];
  if (v3)
  {
    v6 = [a1 sortDescriptorsForPinnedNotes];
    v7 = [v6 arrayByAddingObjectsFromArray:v5];

    v5 = v7;
  }

  return v5;
}

+ (id)sortDescriptorsForCurrentTypeIncludingPinnedNotes:(BOOL)a3 folderNoteSortType:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([v6 order])
  {
    v7 = [a1 sortDescriptorsForType:objc_msgSend(a1 ascending:{"sortTypeForFolderNoteOrder:", objc_msgSend(v6, "order")), objc_msgSend(v6, "direction") == 0}];
    if (v4)
    {
      v8 = [a1 sortDescriptorsForPinnedNotes];
      v9 = [v8 ic_arrayByAddingObjectsFromNonNilArray:v7];

      v7 = v9;
    }
  }

  else
  {
    v7 = [a1 sortDescriptorsForCurrentTypeIncludingPinnedNotes:v4];
  }

  return v7;
}

+ (int64_t)sortTypeForFolderNoteOrder:(int64_t)a3
{
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        return 2;
      }

      goto LABEL_8;
    }

    return 1;
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        return 0;
      }

LABEL_8:
      +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICNoteListSortUtilities sortTypeForFolderNoteOrder:]", 1, 0, @"invalid note list sort type folder note order, defaulting to date modified", v3, v4);
      return 0;
    }

    return [a1 currentNoteListSortType];
  }
}

+ (id)descriptionForNoteListSortType:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      v3 = @"SORT_BY_TITLE_TITLE";
      v4 = @"Title";
      goto LABEL_7;
    case 1:
      v3 = @"SORT_BY_DATE_CREATED_TITLE";
      v4 = @"Date Created";
      goto LABEL_7;
    case 0:
      v3 = @"SORT_BY_DATE_EDITED_TITLE";
      v4 = @"Date Edited";
LABEL_7:
      v5 = __ICLocalizedFrameworkStringWithDefaultValue_impl(v3, v4, 0, 1);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

+ (void)setCurrentNoteListSortTypeByTag:(int64_t)a3
{
  v4 = [a1 sortTypeForTag:a3];

  [a1 setCurrentNoteListSortType:v4];
}

+ (int64_t)sortTypeForTag:(int64_t)a3
{
  result = a3 - 200;
  if ((a3 - 200) >= 3)
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICNoteListSortUtilities sortTypeForTag:]", 1, 0, @"Unexpected tag for sort type", v3, v4);
    return 0;
  }

  return result;
}

+ (int64_t)tagForSortType:(int64_t)a3
{
  if (a3 < 3)
  {
    return a3 | 0xC8;
  }

  +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICNoteListSortUtilities tagForSortType:]", 1, 0, @"Unexpected sort type for tag.", v3, v4);
  return 0;
}

+ (int64_t)folderSortOrderForNoteListSortType:(int64_t)a3
{
  v3 = 1;
  if (a3 == 1)
  {
    v3 = 2;
  }

  if (a3 == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

+ (id)dateForCurrentSortTypeForNote:(id)a3 folderNoteSortType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_5;
  }

  v9 = [v7 order];
  if (v9 < 2 || v9 == 3)
  {
    goto LABEL_9;
  }

  if (v9 != 2)
  {
LABEL_5:
    v10 = [a1 currentNoteListSortType];
    if (v10 && v10 != 2)
    {
      if (v10 != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_9:
    v11 = [v6 modificationDate];
    goto LABEL_10;
  }

LABEL_8:
  v11 = [v6 creationDate];
LABEL_10:
  a1 = v11;
LABEL_11:

  return a1;
}

+ (id)dateForCurrentSortTypeAccessibilityStringForNote:(id)a3 folderNoteSortType:(id)a4
{
  v5 = [a1 dateForCurrentSortTypeForNote:a3 folderNoteSortType:a4];
  if (v5)
  {
    v6 = [a1 currentNoteListSortType];
    v7 = MEMORY[0x1E696AEC0];
    if (v6 == 1)
    {
      v8 = @"created %@";
    }

    else
    {
      v8 = @"modified %@";
    }

    v10 = __ICLocalizedFrameworkString_impl(v8, v8, 0, 1);
    v11 = [v5 ic_briefFormattedDateForAccessibility];
    v9 = [v7 localizedStringWithFormat:v10, v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end