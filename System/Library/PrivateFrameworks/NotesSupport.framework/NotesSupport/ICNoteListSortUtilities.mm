@interface ICNoteListSortUtilities
+ (id)dateForCurrentSortTypeAccessibilityStringForNote:(id)note folderNoteSortType:(id)type;
+ (id)dateForCurrentSortTypeForNote:(id)note folderNoteSortType:(id)type;
+ (id)descriptionForNoteListSortType:(int64_t)type;
+ (id)sortDescriptorsForCurrentTypeIncludingPinnedNotes:(BOOL)notes;
+ (id)sortDescriptorsForCurrentTypeIncludingPinnedNotes:(BOOL)notes folderNoteSortType:(id)type;
+ (id)sortDescriptorsForPinnedNotes;
+ (id)sortDescriptorsForType:(int64_t)type ascending:(BOOL)ascending;
+ (int64_t)currentNoteListSortType;
+ (int64_t)folderSortOrderForNoteListSortType:(int64_t)type;
+ (int64_t)sortTypeForFolderNoteOrder:(int64_t)order;
+ (int64_t)sortTypeForTag:(int64_t)tag;
+ (int64_t)tagForSortType:(int64_t)type;
+ (void)clearCache;
+ (void)setCurrentNoteListSortType:(int64_t)type;
+ (void)setCurrentNoteListSortTypeByTag:(int64_t)tag;
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

+ (void)setCurrentNoteListSortType:(int64_t)type
{
  if ([self currentNoteListSortType] != type)
  {
    if (type >= 3)
    {

      +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICNoteListSortUtilities setCurrentNoteListSortType:]", 1, 0, @"Unexpected Note List Sort Type");
    }

    else
    {
      v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
      v5 = cachedNoteListSortType;
      cachedNoteListSortType = v4;

      v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
      [ICSettingsUtilities setObject:v6 forKey:@"kICSettingsNoteListSortTypeKey"];

      v7 = +[ICWidget sharedWidget];
      [v7 reloadTimelinesWithReason:@"Default note list sort type has changed"];
    }
  }
}

+ (id)sortDescriptorsForType:(int64_t)type ascending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v13[2] = *MEMORY[0x1E69E9840];
  if (type)
  {
    if (type == 2)
    {
      v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:ascending selector:sel_localizedStandardCompare_];
      v12[0] = v5;
      v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"modificationDate" ascending:ascendingCopy ^ 1];
      v12[1] = v6;
      v7 = v12;
    }

    else if (type == 1)
    {
      v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:!ascending];
      v13[0] = v5;
      v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:ascendingCopy selector:sel_localizedStandardCompare_];
      v13[1] = v6;
      v7 = v13;
    }

    else
    {
      +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICNoteListSortUtilities sortDescriptorsForType:ascending:]", 1, 0, @"Unexpected sort type for sort descriptors");
      v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"modificationDate" ascending:ascendingCopy ^ 1];
      v10[0] = v5;
      v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:ascendingCopy selector:sel_localizedStandardCompare_];
      v10[1] = v6;
      v7 = v10;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"modificationDate" ascending:!ascending];
    v11[0] = v5;
    v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:ascendingCopy selector:sel_localizedStandardCompare_];
    v11[1] = v6;
    v7 = v11;
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v8;
}

+ (id)sortDescriptorsForCurrentTypeIncludingPinnedNotes:(BOOL)notes
{
  notesCopy = notes;
  v5 = [self sortDescriptorsForType:{objc_msgSend(self, "currentNoteListSortType")}];
  if (notesCopy)
  {
    sortDescriptorsForPinnedNotes = [self sortDescriptorsForPinnedNotes];
    v7 = [sortDescriptorsForPinnedNotes arrayByAddingObjectsFromArray:v5];

    v5 = v7;
  }

  return v5;
}

+ (id)sortDescriptorsForCurrentTypeIncludingPinnedNotes:(BOOL)notes folderNoteSortType:(id)type
{
  notesCopy = notes;
  typeCopy = type;
  if ([typeCopy order])
  {
    v7 = [self sortDescriptorsForType:objc_msgSend(self ascending:{"sortTypeForFolderNoteOrder:", objc_msgSend(typeCopy, "order")), objc_msgSend(typeCopy, "direction") == 0}];
    if (notesCopy)
    {
      sortDescriptorsForPinnedNotes = [self sortDescriptorsForPinnedNotes];
      v9 = [sortDescriptorsForPinnedNotes ic_arrayByAddingObjectsFromNonNilArray:v7];

      v7 = v9;
    }
  }

  else
  {
    v7 = [self sortDescriptorsForCurrentTypeIncludingPinnedNotes:notesCopy];
  }

  return v7;
}

+ (int64_t)sortTypeForFolderNoteOrder:(int64_t)order
{
  if (order > 1)
  {
    if (order != 2)
    {
      if (order == 3)
      {
        return 2;
      }

      goto LABEL_8;
    }

    return 1;
  }

  else
  {
    if (order)
    {
      if (order == 1)
      {
        return 0;
      }

LABEL_8:
      +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICNoteListSortUtilities sortTypeForFolderNoteOrder:]", 1, 0, @"invalid note list sort type folder note order, defaulting to date modified", v3, v4);
      return 0;
    }

    return [self currentNoteListSortType];
  }
}

+ (id)descriptionForNoteListSortType:(int64_t)type
{
  switch(type)
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

+ (void)setCurrentNoteListSortTypeByTag:(int64_t)tag
{
  v4 = [self sortTypeForTag:tag];

  [self setCurrentNoteListSortType:v4];
}

+ (int64_t)sortTypeForTag:(int64_t)tag
{
  result = tag - 200;
  if ((tag - 200) >= 3)
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICNoteListSortUtilities sortTypeForTag:]", 1, 0, @"Unexpected tag for sort type", v3, v4);
    return 0;
  }

  return result;
}

+ (int64_t)tagForSortType:(int64_t)type
{
  if (type < 3)
  {
    return type | 0xC8;
  }

  +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICNoteListSortUtilities tagForSortType:]", 1, 0, @"Unexpected sort type for tag.", v3, v4);
  return 0;
}

+ (int64_t)folderSortOrderForNoteListSortType:(int64_t)type
{
  v3 = 1;
  if (type == 1)
  {
    v3 = 2;
  }

  if (type == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

+ (id)dateForCurrentSortTypeForNote:(id)note folderNoteSortType:(id)type
{
  noteCopy = note;
  typeCopy = type;
  v8 = typeCopy;
  if (!typeCopy)
  {
    goto LABEL_5;
  }

  order = [typeCopy order];
  if (order < 2 || order == 3)
  {
    goto LABEL_9;
  }

  if (order != 2)
  {
LABEL_5:
    currentNoteListSortType = [self currentNoteListSortType];
    if (currentNoteListSortType && currentNoteListSortType != 2)
    {
      if (currentNoteListSortType != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_9:
    modificationDate = [noteCopy modificationDate];
    goto LABEL_10;
  }

LABEL_8:
  modificationDate = [noteCopy creationDate];
LABEL_10:
  self = modificationDate;
LABEL_11:

  return self;
}

+ (id)dateForCurrentSortTypeAccessibilityStringForNote:(id)note folderNoteSortType:(id)type
{
  v5 = [self dateForCurrentSortTypeForNote:note folderNoteSortType:type];
  if (v5)
  {
    currentNoteListSortType = [self currentNoteListSortType];
    v7 = MEMORY[0x1E696AEC0];
    if (currentNoteListSortType == 1)
    {
      v8 = @"created %@";
    }

    else
    {
      v8 = @"modified %@";
    }

    v10 = __ICLocalizedFrameworkString_impl(v8, v8, 0, 1);
    ic_briefFormattedDateForAccessibility = [v5 ic_briefFormattedDateForAccessibility];
    v9 = [v7 localizedStringWithFormat:v10, ic_briefFormattedDateForAccessibility];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end