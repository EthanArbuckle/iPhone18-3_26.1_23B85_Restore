@interface ICFolderCustomNoteSortType
+ (ICFolderCustomNoteSortType)querySortType;
+ (NSArray)sortTypeOrderValues;
+ (NSString)currentDefaultMenuItemString;
+ (id)actionItemTitleForOrder:(int64_t)order;
+ (id)folderNoteSortTypeFromValue:(id)value;
+ (id)folderNoteSortTypeWithOrder:(int64_t)order direction:(int64_t)direction;
+ (id)segmentItemTitleForOrder:(int64_t)order;
+ (id)stringNameForDirection:(int64_t)direction order:(int64_t)order;
+ (int64_t)customOrderForCurrentNoteListSortType;
+ (int64_t)customOrderForGlobalSortType:(int64_t)type;
+ (void)setQuerySortType:(id)type;
- (BOOL)isDefault;
- (BOOL)isEqual:(id)equal;
- (NSNumber)valueRepresentation;
- (NSString)summaryViewTitleDescription;
- (id)currentActionItemTitle;
- (id)debugStringNameForOrder:(int64_t)order;
- (id)description;
- (id)folderNoteSortTypeByChangingDirection;
- (id)folderNoteSortTypeByChangingOrder:(int64_t)order;
- (int64_t)resolvedCustomSortTypeOrder;
@end

@implementation ICFolderCustomNoteSortType

- (int64_t)resolvedCustomSortTypeOrder
{
  result = [(ICFolderCustomNoteSortType *)self order];
  if (!result)
  {

    return +[ICFolderCustomNoteSortType customOrderForCurrentNoteListSortType];
  }

  return result;
}

+ (id)folderNoteSortTypeWithOrder:(int64_t)order direction:(int64_t)direction
{
  orderCopy = order;
  if (order >= 4)
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICFolderCustomNoteSortType folderNoteSortTypeWithOrder:direction:]", 1, 0, @"Incorrect value for folder note sort order %d, using default", order);
    orderCopy = 0;
  }

  if (direction >= 2)
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICFolderCustomNoteSortType folderNoteSortTypeWithOrder:direction:]", 1, 0, @"Incorrect value for folder note sort direction %d, using ascending", order);
    direction = 0;
  }

  v7 = objc_alloc_init(ICFolderCustomNoteSortType);
  [(ICFolderCustomNoteSortType *)v7 setOrder:orderCopy];
  [(ICFolderCustomNoteSortType *)v7 setDirection:direction];

  return v7;
}

- (id)folderNoteSortTypeByChangingOrder:(int64_t)order
{
  v5 = objc_opt_class();
  direction = [(ICFolderCustomNoteSortType *)self direction];

  return [v5 folderNoteSortTypeWithOrder:order direction:direction];
}

- (id)folderNoteSortTypeByChangingDirection
{
  order = [(ICFolderCustomNoteSortType *)self order];
  if (!order)
  {
    order = [objc_opt_class() customOrderForGlobalSortType:{+[ICNoteListSortUtilities currentNoteListSortType](ICNoteListSortUtilities, "currentNoteListSortType")}];
  }

  v4 = [(ICFolderCustomNoteSortType *)self direction]== 0;
  v5 = objc_opt_class();

  return [v5 folderNoteSortTypeWithOrder:order direction:v4];
}

+ (id)folderNoteSortTypeFromValue:(id)value
{
  integerValue = [value integerValue];
  v5 = integerValue;
  if (integerValue > 0x1F)
  {
    goto LABEL_7;
  }

  if (((1 << integerValue) & 0xC00) != 0)
  {
    v6 = 1;
    goto LABEL_11;
  }

  if (((1 << integerValue) & 0x300000) != 0)
  {
    v6 = 2;
    goto LABEL_11;
  }

  if (((1 << integerValue) & 0xC0000000) == 0)
  {
LABEL_7:
    if (!integerValue)
    {
      v6 = 0;
      goto LABEL_16;
    }

    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICFolderCustomNoteSortType folderNoteSortTypeFromValue:]", 1, 0, @"Invalid value for cusotm sort type, using default");
    v6 = 0;
    goto LABEL_11;
  }

  v6 = 3;
LABEL_11:
  if (v5 > 0x1F)
  {
    goto LABEL_19;
  }

  if (((1 << v5) & 0x40100401) != 0)
  {
LABEL_13:
    v5 = 0;
    goto LABEL_16;
  }

  if (((1 << v5) & 0x80200800) == 0)
  {
LABEL_19:
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICFolderCustomNoteSortType folderNoteSortTypeFromValue:]", 1, 0, @"Invalid value for cusotm sort type, using default");
    goto LABEL_13;
  }

  v5 = 1;
LABEL_16:

  return [self folderNoteSortTypeWithOrder:v6 direction:v5];
}

- (NSNumber)valueRepresentation
{
  order = [(ICFolderCustomNoteSortType *)self order];
  direction = [(ICFolderCustomNoteSortType *)self direction];
  v5 = 30;
  if (direction)
  {
    v5 = 31;
  }

  v6 = 20;
  if (direction)
  {
    v6 = 21;
  }

  v7 = 10;
  if (direction)
  {
    v7 = 11;
  }

  if (order != 1)
  {
    v7 = 0;
  }

  if (order != 2)
  {
    v6 = v7;
  }

  if (order == 3)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = MEMORY[0x1E696AD98];

  return [v9 numberWithInteger:v8];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ICFolderCustomNoteSortType *)self debugStringNameForOrder:[(ICFolderCustomNoteSortType *)self order]];
  v5 = [objc_opt_class() stringNameForDirection:-[ICFolderCustomNoteSortType direction](self order:{"direction"), -[ICFolderCustomNoteSortType order](self, "order")}];
  v6 = [v3 stringWithFormat:@"SortType: %@, %@", v4, v5];

  return v6;
}

- (id)debugStringNameForOrder:(int64_t)order
{
  if (order > 3)
  {
    return 0;
  }

  else
  {
    return off_1E8484B00[order];
  }
}

- (BOOL)isDefault
{
  noteSortTypeDefaultAscending = [objc_opt_class() noteSortTypeDefaultAscending];
  LOBYTE(self) = [(ICFolderCustomNoteSortType *)self isEqual:noteSortTypeDefaultAscending];

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = ICDynamicCast(v5, equalCopy);

  if (v6 && (v7 = [v6 order], v7 == -[ICFolderCustomNoteSortType order](self, "order")))
  {
    direction = [v6 direction];
    v9 = direction == [(ICFolderCustomNoteSortType *)self direction];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (NSString)currentDefaultMenuItemString
{
  v2 = +[ICNoteListSortUtilities currentNoteListSortType];
  switch(v2)
  {
    case 0:
      v3 = @"Default (Date Edited)";
      goto LABEL_7;
    case 1:
      v3 = @"Default (Date Created)";
      goto LABEL_7;
    case 2:
      v3 = @"Default (Title)";
LABEL_7:
      v4 = __ICLocalizedFrameworkString_impl(v3, v3, 0, 1);
      goto LABEL_9;
  }

  v4 = &stru_1F4FCDA88;
LABEL_9:

  return v4;
}

+ (int64_t)customOrderForCurrentNoteListSortType
{
  v2 = +[ICNoteListSortUtilities currentNoteListSortType];

  return [ICFolderCustomNoteSortType customOrderForGlobalSortType:v2];
}

+ (int64_t)customOrderForGlobalSortType:(int64_t)type
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

+ (NSArray)sortTypeOrderValues
{
  if (sortTypeOrderValues_onceToken != -1)
  {
    +[ICFolderCustomNoteSortType sortTypeOrderValues];
  }

  v3 = sortTypeOrderValues_sortTypeOrderValues;

  return v3;
}

void __49__ICFolderCustomNoteSortType_sortTypeOrderValues__block_invoke()
{
  v0 = sortTypeOrderValues_sortTypeOrderValues;
  sortTypeOrderValues_sortTypeOrderValues = &unk_1F4FD7260;
}

+ (id)stringNameForDirection:(int64_t)direction order:(int64_t)order
{
  if (!order)
  {
    order = [objc_opt_class() customOrderForGlobalSortType:{+[ICNoteListSortUtilities currentNoteListSortType](ICNoteListSortUtilities, "currentNoteListSortType")}];
  }

  if (order == 3)
  {
    if (direction)
    {
      v5 = @"Descending";
    }

    else
    {
      v5 = @"Ascending";
    }
  }

  else if (direction)
  {
    v5 = @"Oldest First";
  }

  else
  {
    v5 = @"Newest First";
  }

  v6 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);

  return v6;
}

+ (id)actionItemTitleForOrder:(int64_t)order
{
  if (order <= 1)
  {
    if (!order)
    {
      self = [self currentDefaultMenuItemString];
      goto LABEL_11;
    }

    if (order != 1)
    {
      goto LABEL_11;
    }

    v3 = @"Date Edited";
    goto LABEL_10;
  }

  if (order == 2)
  {
    v3 = @"Date Created";
LABEL_10:
    self = __ICLocalizedFrameworkString_impl(v3, v3, 0, 1);
    goto LABEL_11;
  }

  if (order == 3)
  {
    self = __ICLocalizedFrameworkStringWithDefaultValue_impl(@"TITLE_SORT_BY", @"Title", @"Localizable", 1);
  }

LABEL_11:

  return self;
}

+ (ICFolderCustomNoteSortType)querySortType
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"QuerySortType"];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
    v5 = [ICFolderCustomNoteSortType folderNoteSortTypeFromValue:v4];
  }

  else
  {
    v5 = +[ICFolderCustomNoteSortType noteSortTypeDefaultAscending];
  }

  return v5;
}

+ (void)setQuerySortType:(id)type
{
  valueRepresentation = [type valueRepresentation];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setObject:valueRepresentation forKey:@"QuerySortType"];
}

- (NSString)summaryViewTitleDescription
{
  order = [(ICFolderCustomNoteSortType *)self order];
  switch(order)
  {
    case 1:
      v3 = @"Sorted by Date Edited";
      goto LABEL_7;
    case 2:
      v3 = @"Sorted by Date Created";
      goto LABEL_7;
    case 3:
      v3 = @"Sorted by Title";
LABEL_7:
      v4 = __ICLocalizedFrameworkString_impl(v3, v3, 0, 1);
      goto LABEL_9;
  }

  v4 = &stru_1F4FCDA88;
LABEL_9:

  return v4;
}

- (id)currentActionItemTitle
{
  v3 = +[ICNoteListSortUtilities currentNoteListSortType];
  order = [(ICFolderCustomNoteSortType *)self order];
  v5 = &stru_1F4FCDA88;
  if (order > 1)
  {
    if (order == 2)
    {
      v6 = @"Sort by Date Created";
    }

    else
    {
      if (order != 3)
      {
        goto LABEL_14;
      }

      v6 = @"Sort by Title";
    }
  }

  else if (order)
  {
    if (order != 1)
    {
      goto LABEL_14;
    }

    v6 = @"Sort by Date Edited";
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v6 = @"Sort by Date Created (Default)";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_14;
      }

      v6 = @"Sort by Title (Default)";
    }
  }

  else
  {
    v6 = @"Sort by Date Edited (Default)";
  }

  v5 = __ICLocalizedFrameworkString_impl(v6, v6, 0, 1);
LABEL_14:

  return v5;
}

+ (id)segmentItemTitleForOrder:(int64_t)order
{
  v3 = &stru_1F4FCDA88;
  if (order <= 1)
  {
    if (!order)
    {
      v4 = @"Default";
      v5 = @"Default";
LABEL_11:
      v3 = __ICLocalizedFrameworkString_impl(v4, v5, 0, 1);
      goto LABEL_12;
    }

    if (order != 1)
    {
      goto LABEL_12;
    }

    v4 = @"Edited";
LABEL_10:
    v5 = v4;
    goto LABEL_11;
  }

  if (order == 2)
  {
    v4 = @"Created";
    goto LABEL_10;
  }

  if (order == 3)
  {
    v3 = __ICLocalizedFrameworkStringWithDefaultValue_impl(@"TITLE_SORT_BY", @"Title", @"Localizable", 1);
  }

LABEL_12:

  return v3;
}

@end