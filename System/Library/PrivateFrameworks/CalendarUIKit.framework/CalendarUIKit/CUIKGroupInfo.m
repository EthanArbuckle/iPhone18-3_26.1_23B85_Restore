@interface CUIKGroupInfo
- (BOOL)showAddCalendarButton;
- (CUIKGroupInfo)init;
- (CUIKGroupInfo)initWithCustomGroupType:(unint64_t)a3;
- (CUIKGroupInfo)initWithSource:(id)a3;
- (NSSet)calendarSet;
- (NSSet)selectedCalendarSet;
- (id)calendarAtIndex:(unint64_t)a3;
- (id)copyCalendars;
- (id)description;
- (id)titleForBeginningOfSentence:(BOOL)a3;
- (int)sortOrder;
- (unint64_t)numSelectableCalendars;
- (unint64_t)numSelectedCalendars;
- (void)insertCalendarInfo:(id)a3;
- (void)removeCalendar:(id)a3;
- (void)selectAll;
- (void)selectNone;
- (void)setCustomTitle:(id)a3 forBeginningOfSentence:(id)a4;
@end

@implementation CUIKGroupInfo

- (CUIKGroupInfo)init
{
  v6.receiver = self;
  v6.super_class = CUIKGroupInfo;
  v2 = [(CUIKGroupInfo *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    calendars = v2->_calendars;
    v2->_calendars = v3;

    [(CUIKGroupInfo *)v2 setShowSelectAllButton:1];
  }

  return v2;
}

- (CUIKGroupInfo)initWithSource:(id)a3
{
  v5 = a3;
  v6 = [(CUIKGroupInfo *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, a3);
    v8 = CUIKDisplayedStoreTypeTitleForSource(v7->_source);
    typeTitle = v7->_typeTitle;
    v7->_typeTitle = v8;

    v10 = CUIKDisplayedTitleForSource(v7->_source, 0);
    title = v7->_title;
    v7->_title = v10;

    v12 = CUIKDisplayedTitleForSource(v7->_source, 1);
    titleForBeginningOfSentence = v7->_titleForBeginningOfSentence;
    v7->_titleForBeginningOfSentence = v12;
  }

  return v7;
}

- (CUIKGroupInfo)initWithCustomGroupType:(unint64_t)a3
{
  v4 = [(CUIKGroupInfo *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_customGroupType = a3;
    if (a3 == 1)
    {
      v6 = CUIKBundle();
      v7 = [v6 localizedStringForKey:@"'Other' group mid sentence title" value:@"Other" table:0];
      v8 = CUIKBundle();
      v9 = [v8 localizedStringForKey:@"'Other' group title" value:@"Other" table:0];
      [(CUIKGroupInfo *)v5 setCustomTitle:v7 forBeginningOfSentence:v9];

      [(CUIKGroupInfo *)v5 setShowSelectAllButton:0];
    }
  }

  return v5;
}

- (void)insertCalendarInfo:(id)a3
{
  v10 = a3;
  v4 = [v10 group];

  if (v4 != self)
  {
    v5 = [v10 group];

    if (v5)
    {
      v6 = [v10 group];
      [v6 removeCalendar:v10];
    }

    v7 = [(NSMutableArray *)self->_calendars count];
    v8 = [(NSMutableArray *)self->_calendars indexOfObject:v10 inSortedRange:0 options:v7 usingComparator:1024, &__block_literal_global_30];
    if (v7 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    [(NSMutableArray *)self->_calendars insertObject:v10 atIndex:v9];
  }

  [v10 setGroup:self];
}

uint64_t __36__CUIKGroupInfo_insertCalendarInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 calendar];
  if (v6)
  {
  }

  else
  {
    v7 = [v5 calendar];

    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v8 = [v4 calendar];

  if (v8)
  {
    v9 = [v5 calendar];

    if (v9)
    {
      v10 = [v4 calendar];
      v11 = [v5 calendar];
      v7 = CUIKCompareEKCalendars(v10, v11);
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (void)removeCalendar:(id)a3
{
  v5 = a3;
  v4 = [v5 group];

  if (v4 == self)
  {
    [(NSMutableArray *)self->_calendars removeObject:v5];
    [v5 setGroup:0];
  }
}

- (id)titleForBeginningOfSentence:(BOOL)a3
{
  customTitle = self->_customTitle;
  if (customTitle && self->_customTitleAtBeginningOfSentence)
  {
    if (a3)
    {
      customTitle = self->_customTitleAtBeginningOfSentence;
    }
  }

  else
  {
    v5 = 48;
    if (a3)
    {
      v5 = 56;
    }

    customTitle = *(&self->super.isa + v5);
  }

  v6 = customTitle;

  return v6;
}

- (void)setCustomTitle:(id)a3 forBeginningOfSentence:(id)a4
{
  v6 = a3;
  v7 = a4;
  customTitle = self->_customTitle;
  self->_customTitle = v6;
  v10 = v6;

  customTitleAtBeginningOfSentence = self->_customTitleAtBeginningOfSentence;
  self->_customTitleAtBeginningOfSentence = v7;
}

- (unint64_t)numSelectableCalendars
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(CUIKGroupInfo *)self numCalendars];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(CUIKGroupInfo *)self calendarInfos];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 -= [*(*(&v10 + 1) + 8 * v8++) filteredByFocus];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)numSelectedCalendars
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_calendars;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v4 += [*(*(&v8 + 1) + 8 * v6++) selected];
      }

      while (v3 != v6);
      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
    v3 = v4;
  }

  return v3;
}

- (id)calendarAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_calendars objectAtIndex:a3];
  v4 = [v3 calendar];

  return v4;
}

- (id)copyCalendars
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_calendars;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 calendar];

        if (v10)
        {
          v11 = [v9 calendar];
          [v3 addObject:v11];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSSet)calendarSet
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_calendars;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 calendar];

        if (v10)
        {
          v11 = [v9 calendar];
          [v3 addObject:v11];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSSet)selectedCalendarSet
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_calendars;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 selected])
        {
          v10 = [v9 calendar];

          if (v10)
          {
            v11 = [v9 calendar];
            [v3 addObject:v11];
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)selectAll
{
  v13 = *MEMORY[0x1E69E9840];
  self->_selected = 1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_calendars;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 isEnabled])
        {
          [v7 setSelected:1];
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)selectNone
{
  v12 = *MEMORY[0x1E69E9840];
  self->_selected = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_calendars;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setSelected:{0, v7}];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)showAddCalendarButton
{
  if (([(EKSource *)self->_source sourceType]- 4) < 3)
  {
    return 0;
  }

  v4 = [(EKSource *)self->_source constraints];
  v5 = [v4 allowsCalendarAddDeleteModify];

  return v5;
}

- (int)sortOrder
{
  customGroupType = self->_customGroupType;
  v4 = +[CUIKAccountsController sharedInstance];
  v5 = v4;
  if (customGroupType == 1)
  {
    v6 = [v4 sortOrderForSourceType:5];
  }

  else
  {
    v6 = [v4 sortOrderForSource:self->_source];
  }

  v7 = v6;

  return v7;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CUIKGroupInfo;
  v3 = [(CUIKGroupInfo *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" - calendars: %@", self->_calendars];

  return v4;
}

@end