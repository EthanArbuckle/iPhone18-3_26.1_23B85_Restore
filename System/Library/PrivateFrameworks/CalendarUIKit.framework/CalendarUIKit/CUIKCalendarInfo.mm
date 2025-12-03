@interface CUIKCalendarInfo
- (BOOL)isPublished;
- (CUIKCalendarInfo)initWithCalendar:(id)calendar;
- (CUIKGroupInfo)group;
- (id)description;
- (id)stringForSharedCalendar;
- (void)_updateCustomGroupType;
- (void)addCalendar:(id)calendar;
- (void)setCalendar:(id)calendar;
@end

@implementation CUIKCalendarInfo

- (void)_updateCustomGroupType
{
  if (([(EKCalendar *)self->_calendar isSubscribedHolidayCalendar]& 1) == 0)
  {
    source = [(EKCalendar *)self->_calendar source];
    if ([source sourceType] != 5)
    {
      source2 = [(EKCalendar *)self->_calendar source];
      v4 = [source2 sourceType] == 6;

      goto LABEL_6;
    }
  }

  v4 = 1;
LABEL_6:
  self->_customGroupType = v4;
}

- (CUIKCalendarInfo)initWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  v11.receiver = self;
  v11.super_class = CUIKCalendarInfo;
  v6 = [(CUIKCalendarInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calendar, calendar);
    v8 = CUIKDisplayedTitleForCalendar(v7->_calendar);
    title = v7->_title;
    v7->_title = v8;

    v7->_isEnabled = 1;
    [(CUIKCalendarInfo *)v7 _updateCustomGroupType];
  }

  return v7;
}

- (void)setCalendar:(id)calendar
{
  calendarCopy = calendar;
  p_calendar = &self->_calendar;
  if (self->_calendar != calendarCopy)
  {
    v7 = calendarCopy;
    objc_storeStrong(p_calendar, calendar);
    p_calendar = [(CUIKCalendarInfo *)self _updateCustomGroupType];
    calendarCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_calendar, calendarCopy);
}

- (void)addCalendar:(id)calendar
{
  v14[1] = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  objectID = [calendarCopy objectID];
  databaseID = [objectID databaseID];
  objectID2 = [(EKCalendar *)self->_calendar objectID];
  databaseID2 = [objectID2 databaseID];

  if (databaseID >= databaseID2)
  {
    v10 = calendarCopy;
  }

  else
  {
    v10 = self->_calendar;
    objc_storeStrong(&self->_calendar, calendar);
  }

  otherCalendars = self->_otherCalendars;
  if (otherCalendars)
  {
    v12 = [(NSArray *)otherCalendars arrayByAddingObject:v10];
  }

  else
  {
    v14[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  v13 = self->_otherCalendars;
  self->_otherCalendars = v12;
}

- (BOOL)isPublished
{
  publishURL = [(EKCalendar *)self->_calendar publishURL];
  v3 = publishURL != 0;

  return v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CUIKCalendarInfo;
  v3 = [(CUIKCalendarInfo *)&v8 description];
  v4 = v3;
  if (self->_selected)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [v3 stringByAppendingFormat:@" - calendar: %@, selected: %@", self->_calendar, v5];

  return v6;
}

- (id)stringForSharedCalendar
{
  sharees = [(EKCalendar *)self->_calendar sharees];
  allObjects = [sharees allObjects];

  if (-[EKCalendar sharingStatus](self->_calendar, "sharingStatus") == 1 && [allObjects count] == 1 && (-[EKCalendar isPublished](self->_calendar, "isPublished") & 1) == 0)
  {
    v5 = [allObjects objectAtIndex:0];
    v6 = [CUIKAttendeeUtils displayStringForIdentity:v5 useAddressAsFallback:1 contactIdentifier:0];
    v7 = MEMORY[0x1E696AEC0];
    v8 = CUIKBundle();
    v9 = v8;
    v10 = @"Shared with %@";
    goto LABEL_19;
  }

  if (-[EKCalendar sharingStatus](self->_calendar, "sharingStatus") == 1 && [allObjects count] >= 2 && (-[EKCalendar isPublished](self->_calendar, "isPublished") & 1) == 0)
  {
    v5 = [allObjects objectAtIndex:0];
    v6 = [CUIKAttendeeUtils displayStringForIdentity:v5 useAddressAsFallback:1 contactIdentifier:0];
    v7 = MEMORY[0x1E696AEC0];
    v8 = CUIKBundle();
    v9 = v8;
    v10 = @"Shared with %@ and…";
    goto LABEL_19;
  }

  if (-[EKCalendar sharingStatus](self->_calendar, "sharingStatus") == 1 && [allObjects count] && -[EKCalendar isPublished](self->_calendar, "isPublished"))
  {
    v5 = [allObjects objectAtIndex:0];
    v6 = [CUIKAttendeeUtils displayStringForIdentity:v5 useAddressAsFallback:1 contactIdentifier:0];
    v7 = MEMORY[0x1E696AEC0];
    v8 = CUIKBundle();
    v9 = v8;
    v10 = @"Public and Shared with %@…";
LABEL_19:
    v16 = [v8 localizedStringForKey:v10 value:&stru_1F4AA8958 table:0];
    v11 = [v7 localizedStringWithFormat:v16, v6];

    goto LABEL_20;
  }

  if ([(EKCalendar *)self->_calendar isPublished])
  {
    v5 = CUIKBundle();
    v11 = [v5 localizedStringForKey:@"Public Calendar" value:&stru_1F4AA8958 table:0];
  }

  else
  {
    if ([(EKCalendar *)self->_calendar sharingStatus]!= 2 || ([(EKCalendar *)self->_calendar sharedOwnerName], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      v11 = 0;
      goto LABEL_21;
    }

    v13 = MEMORY[0x1E696AEC0];
    v5 = CUIKBundle();
    v14 = [v5 localizedStringForKey:@"Shared by %@" value:&stru_1F4AA8958 table:0];
    sharedOwnerName = [(EKCalendar *)self->_calendar sharedOwnerName];
    v11 = [v13 localizedStringWithFormat:v14, sharedOwnerName];
  }

LABEL_20:

LABEL_21:

  return v11;
}

- (CUIKGroupInfo)group
{
  WeakRetained = objc_loadWeakRetained(&self->_group);

  return WeakRetained;
}

@end