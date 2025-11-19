@interface CUIKUserActivityRemindersListCategory
- (BOOL)_isMatchForRemindersList:(id)a3;
- (CUIKUserActivityRemindersListCategory)initWithDictionary:(id)a3;
- (CUIKUserActivityRemindersListCategory)initWithRemindersList:(id)a3 forceLocal:(BOOL)a4;
- (id)dictionary;
- (id)remindersListFromStore:(id)a3;
- (void)updateActivity:(id)a3;
@end

@implementation CUIKUserActivityRemindersListCategory

- (CUIKUserActivityRemindersListCategory)initWithRemindersList:(id)a3 forceLocal:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 source];
  }

  v21.receiver = self;
  v21.super_class = CUIKUserActivityRemindersListCategory;
  v9 = [(CUIKUserActivityWithSource *)&v21 initWithSource:v8 type:1];
  if (!v4)
  {
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = [v7 title];
  title = v9->_title;
  v9->_title = v10;

  if (v9->_title)
  {
    v12 = [v7 unlocalizedTitle];
    if ([v12 isEqualToString:@"DEFAULT_TASK_CALENDAR_NAME"])
    {
      LOBYTE(v13) = 0;
    }

    else
    {
      v13 = [v12 isEqualToString:@"Reminders"] ^ 1;
    }

    v9->_predictable = v13;
    [(CUIKUserActivity *)v9 setActivityTitle:v9->_title];
    v14 = CUIKBundle();
    v15 = [v14 localizedStringForKey:@"Reminder List" value:&stru_1F4AA8958 table:0];
    [(CUIKUserActivity *)v9 setActivitySubtitle:v15];

    v16 = [v7 source];
    LODWORD(v15) = -[CUIKUserActivityWithSource _supportsConsistentExternalIDAcrossDevices:](v9, "_supportsConsistentExternalIDAcrossDevices:", [v16 sourceType]);

    if (v15)
    {
      v17 = [v7 externalID];
      externalID = v9->_externalID;
      v9->_externalID = v17;

      if (!v9->_externalID && !v4)
      {

        goto LABEL_15;
      }
    }

LABEL_17:
    v19 = v9;
    goto LABEL_18;
  }

LABEL_15:
  v19 = 0;
LABEL_18:

  return v19;
}

- (CUIKUserActivityRemindersListCategory)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CUIKUserActivityRemindersListCategory;
  v5 = [(CUIKUserActivityWithSource *)&v15 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_9;
  }

  v14 = 0;
  v6 = [objc_opt_class() _stringFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.title" error:&v14];
  title = v5->_title;
  v5->_title = v6;

  if ((v14 & 1) == 0)
  {
    if ([(CUIKUserActivityWithSource *)v5 _supportsConsistentExternalIDAcrossDevices])
    {
      v9 = [objc_opt_class() _stringFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.externalID" error:&v14];
      externalID = v5->_externalID;
      v5->_externalID = v9;

      if (v14)
      {
        goto LABEL_3;
      }
    }

    else if ([(CUIKUserActivityWithSource *)v5 _isLocalSource])
    {
      v11 = [objc_opt_class() _stringFromDictionary:v4 key:@"com.apple.calendarUIKit.userActivity.externalID" error:0];
      v12 = v5->_externalID;
      v5->_externalID = v11;
    }

LABEL_9:
    v8 = v5;
    goto LABEL_10;
  }

LABEL_3:
  v8 = 0;
LABEL_10:

  return v8;
}

- (id)dictionary
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v10.receiver = self;
  v10.super_class = CUIKUserActivityRemindersListCategory;
  v4 = [(CUIKUserActivityWithSource *)&v10 dictionary];
  v5 = [v3 initWithDictionary:v4];

  title = self->_title;
  v11 = @"com.apple.calendarUIKit.userActivity.title";
  v12[0] = title;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v5 addEntriesFromDictionary:v7];

  externalID = self->_externalID;
  if (externalID)
  {
    [v5 setObject:externalID forKeyedSubscript:@"com.apple.calendarUIKit.userActivity.externalID"];
  }

  return v5;
}

- (BOOL)_isMatchForRemindersList:(id)a3
{
  v4 = a3;
  v5 = [v4 source];
  v6 = [(CUIKUserActivityWithSource *)self isMatchForSource:v5];

  if (v6 && ([v4 title], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", self->_title), v7, v8) && (!-[CUIKUserActivityWithSource _supportsConsistentExternalIDAcrossDevices](self, "_supportsConsistentExternalIDAcrossDevices") || (objc_msgSend(v4, "externalID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", self->_externalID), v9, v10)))
  {
    if ([(CUIKUserActivityWithSource *)self _isLocalSource])
    {
      v11 = [v4 source];
      if (-[CUIKUserActivityWithSource _supportsConsistentExternalIDAcrossDevices:](self, "_supportsConsistentExternalIDAcrossDevices:", [v11 sourceType]) && -[NSString length](self->_externalID, "length"))
      {
        v12 = [v4 externalID];
        v13 = [v12 isEqualToString:self->_externalID];
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (id)remindersListFromStore:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v5 = [v4 calendarsForEntityType:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CUIKUserActivityRemindersListCategory_remindersListFromStore___block_invoke;
  v8[3] = &unk_1E839B018;
  v8[4] = self;
  v8[5] = &v9;
  [v5 enumerateObjectsUsingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __64__CUIKUserActivityRemindersListCategory_remindersListFromStore___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  if ([*(a1 + 32) _isMatchForRemindersList:?])
  {
    v7 = *(*(a1 + 40) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    if (v10)
    {
      *v8 = 0;

      *a4 = 1;
    }

    else
    {
      objc_storeStrong(v8, a2);
    }
  }
}

- (void)updateActivity:(id)a3
{
  v5.receiver = self;
  v5.super_class = CUIKUserActivityRemindersListCategory;
  v4 = a3;
  [(CUIKUserActivity *)&v5 updateActivity:v4];
  [v4 _setEligibleForPrediction:{self->_predictable, v5.receiver, v5.super_class}];
}

@end