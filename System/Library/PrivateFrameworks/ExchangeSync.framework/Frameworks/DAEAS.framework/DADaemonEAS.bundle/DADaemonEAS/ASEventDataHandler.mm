@interface ASEventDataHandler
- (BOOL)saveContainer;
- (BOOL)wipeServerIds;
- (id)copyOfAllLocalObjectsInContainer;
- (id)getTombstoneEndTimeForEvent:(id)event;
- (void)copyLocalObjectFromId:(int)id;
- (void)drainContainer;
- (void)openDB;
@end

@implementation ASEventDataHandler

- (void)copyLocalObjectFromId:(int)id
{
  v4 = +[ASLocalDBHelper sharedInstance];
  accountID = [(ASEventDataHandler *)self accountID];
  [v4 calDatabaseForAccountID:accountID];
  v6 = CalDatabaseCopyCalendarItemWithRowID();

  return v6;
}

- (BOOL)saveContainer
{
  v3 = +[ASLocalDBHelper sharedInstance];
  accountID = [(ASEventDataHandler *)self accountID];
  v5 = [v3 calSaveDatabaseForAccountID:accountID];

  return v5;
}

- (id)copyOfAllLocalObjectsInContainer
{
  v2 = *&self->super.ESDataHandler_opaque[OBJC_IVAR___ESDataHandler__container];
  v3 = CalCalendarCopyEvents();
  if (v3)
  {
    v4 = objc_opt_new();
    if ([v3 count])
    {
      v5 = 0;
      v6 = kCalDateInvalid;
      do
      {
        v7 = [v3 objectAtIndexedSubscript:v5];

        CalEventGetOriginalStartDate();
        if (v8 == v6)
        {
          [v4 addObject:v7];
        }

        ++v5;
      }

      while (v5 < [v3 count]);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)wipeServerIds
{
  if (![(ASEventDataHandler *)self _containerHasItems])
  {
    return 0;
  }

  v3 = *&self->super.ESDataHandler_opaque[OBJC_IVAR___ESDataHandler__container];
  v4 = CalCalendarCopyEvents();
  v5 = 0;
  if ([v4 count])
  {
    v6 = 0;
    do
    {
      [v4 objectAtIndexedSubscript:v6];

      v7 = CalCalendarItemCopyExternalID();
      if (v7)
      {
        v8 = v7;
        CalCalendarItemSetExternalID();
        CFRelease(v8);
        v5 = 1;
      }

      ++v6;
    }

    while (v6 < [v4 count]);
  }

  return v5;
}

- (void)drainContainer
{
  v3 = +[ASLocalDBHelper sharedInstance];
  accountID = [(ASEventDataHandler *)self accountID];
  [v3 calDatabaseForAccountID:accountID];

  if ([(ASEventDataHandler *)self _containerHasItems])
  {
    v5 = OBJC_IVAR___ESDataHandler__container;
    v6 = *&self->super.ESDataHandler_opaque[OBJC_IVAR___ESDataHandler__container];
    cf = CalCalendarCopyTitle();
    v7 = *&self->super.ESDataHandler_opaque[v5];
    HIDWORD(v27) = CalCalendarIsReadOnly();
    v8 = *&self->super.ESDataHandler_opaque[v5];
    LODWORD(v27) = CalCalendarIsHidden();
    v9 = *&self->super.ESDataHandler_opaque[v5];
    v10 = CalCalendarCopyType();
    v11 = *&self->super.ESDataHandler_opaque[v5];
    ColorString = CalCalendarGetColorString();
    v13 = ColorString;
    if (ColorString)
    {
      CFRetain(ColorString);
    }

    v14 = *&self->super.ESDataHandler_opaque[v5];
    v15 = CalCalendarCopyExternalID();
    v16 = *&self->super.ESDataHandler_opaque[v5];
    v17 = CalCalendarCopyExternalIdentificationTag();
    v18 = *&self->super.ESDataHandler_opaque[v5];
    v19 = CalCalendarCopyExternalModificationTag();
    v20 = *&self->super.ESDataHandler_opaque[v5];
    v21 = CalCalendarCopyExternalRepresentation();
    v22 = *&self->super.ESDataHandler_opaque[v5];
    v23 = CalCalendarCopyStore();
    v24 = *&self->super.ESDataHandler_opaque[v5];
    CalRemoveCalendar();
    [(ASEventDataHandler *)self _newCalendarEntityType];
    CalendarForEntityType = CalDatabaseCreateCalendarForEntityType();
    CalCalendarSetTitle();
    CalCalendarSetReadOnly();
    CalCalendarSetHidden();
    CalCalendarSetType();
    if (v13)
    {
      CalCalendarSetColorString();
      CFRelease(v13);
    }

    CalCalendarSetExternalID();
    CalCalendarSetExternalIdentificationTag();
    CalCalendarSetExternalModificationTag();
    CalCalendarSetExternalRepresentation();
    CalStoreAddCalendar();
    if (cf)
    {
      CFRelease(cf);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    CFRelease(CalendarForEntityType);
    CFRelease(v23);
    cfa = +[ASLocalDBHelper sharedInstance];
    accountID2 = [(ASEventDataHandler *)self accountID];
    [cfa calSaveDatabaseForAccountID:accountID2];
  }
}

- (id)getTombstoneEndTimeForEvent:(id)event
{
  [event calEvent];
  CalCalendarItemGetRowID();
  v4 = +[ASLocalDBHelper sharedInstance];
  accountID = [(ASEventDataHandler *)self accountID];
  [v4 calDatabaseForAccountID:accountID];

  v6 = *&self->super.ESDataHandler_opaque[OBJC_IVAR___ESDataHandler__container];
  CalDatabaseCopyRecurrenceChangesInCalendar();

  return 0;
}

- (void)openDB
{
  v5 = +[ASLocalDBHelper sharedInstance];
  accountID = [(ASEventDataHandler *)self accountID];
  changeTrackingID = [(ASEventDataHandler *)self changeTrackingID];
  [v5 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];
}

@end