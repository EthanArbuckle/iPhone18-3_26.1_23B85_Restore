@interface CUIKDeleteCalendarsDecisionManager
+ (id)_cancelButtonText;
+ (id)_deleteAndDontNotifyButtonText;
+ (id)_deleteAndNotifyButtonText;
+ (id)_deleteButtonText;
+ (id)_removeButtonText;
+ (id)_shouldDeleteCalendarContainingMeetingsWithTitle:(id)a3 isDualType:(BOOL)a4 hasInvitations:(BOOL)a5;
+ (id)_shouldDeleteSharedToMeCalendarWithTitle:(id)a3;
+ (id)_shouldDeleteSubscribedCalendarWithTitle:(id)a3 canBeJunk:(BOOL)a4;
+ (id)_thisCalendarCantBeDeletedPlural:(BOOL)a3;
+ (id)_unsubscribeAndReportJunkButtonText;
+ (id)_unsubscribeButtonText;
+ (id)_yesNoConfirmationWithPrompt:(id)a3 dialog:(id)a4 yesText:(id)a5;
- (BOOL)_validateDeletableWithError:(id *)a3;
- (BOOL)selectConfirmationOptionAtIndex:(int64_t)a3;
- (CUIKDeleteCalendarsDecisionManager)initWithCalendars:(id)a3;
- (unint64_t)commitDecision;
- (void)_addConfirmation:(id)a3;
- (void)_process;
- (void)_rejectDeleteCalendarFromUnwriteableAccountPlural:(BOOL)a3;
- (void)_rejectRemainingCalendarCannotBeDefaultSchedulingCalendarPlural:(BOOL)a3;
- (void)perform;
@end

@implementation CUIKDeleteCalendarsDecisionManager

- (CUIKDeleteCalendarsDecisionManager)initWithCalendars:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CUIKDeleteCalendarsDecisionManager;
  v6 = [(CUIKDeleteCalendarsDecisionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calendars, a3);
    [(CUIKDeleteCalendarsDecisionManager *)v7 _process];
  }

  return v7;
}

- (BOOL)selectConfirmationOptionAtIndex:(int64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableArray *)self->_confirmations firstObject];
  if (!v5)
  {
    goto LABEL_12;
  }

  [(NSMutableArray *)self->_confirmations removeObjectAtIndex:0];
  v6 = [v5 type];
  if (!v6)
  {
    v7 = 1;
LABEL_8:
    self->_canceled = v7 == a3;
    goto LABEL_9;
  }

  if (v6 == 1)
  {
    if (a3 == 1)
    {
      self->_reportSpam = 1;
    }

    v7 = 2;
    goto LABEL_8;
  }

LABEL_9:
  v8 = [(CUIKDeleteCalendarsDecisionManager *)self nextConfirmation];
  if (v8 || self->_canceled)
  {
  }

  else if (self->_reportSpam)
  {
    v22 = v5;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = self->_calendars;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          if ([v16 isSubscribed] && (objc_msgSend(v16, "isHolidayCalendar") & 1) == 0)
          {
            v17 = [MEMORY[0x1E6992F00] defaultProvider];
            v18 = [v16 subcalAccountID];
            v19 = [v17 accountWithIdentifier:v18];

            v20 = [v19 parentAccount];
            LOBYTE(v18) = [v20 calIsiCloudCalDAVAccount];

            if ((v18 & 1) == 0)
            {
              v21 = [v16 subcalURL];
              [CUIKSubscribedCalendarUtilities reportLocalSubscribedCalendarAsJunkWithoutRemoval:v21];
            }

            [v16 setIsSubscribedCalendarJunk:1];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    v5 = v22;
  }

LABEL_12:
  canceled = self->_canceled;

  return !canceled;
}

- (void)perform
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "Failed to delete calendars: %{public}@", &v4, 0xCu);
}

- (unint64_t)commitDecision
{
  if (self->_canceled)
  {
    return 4;
  }

  v3 = [(CUIKDeleteCalendarsDecisionManager *)self nextConfirmation];
  v2 = v3 == 0;

  return v2;
}

- (void)_process
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_calendars count];
  v35 = 0;
  v4 = [(CUIKDeleteCalendarsDecisionManager *)self _validateDeletableWithError:&v35];
  v5 = v35;
  v6 = v5;
  if (!v4)
  {
    if ([v5 code] == 51)
    {
      [(CUIKDeleteCalendarsDecisionManager *)self _rejectRemainingCalendarCannotBeDefaultSchedulingCalendarPlural:v3 > 1];
      goto LABEL_32;
    }

    if ([v6 code] == 52)
    {
      [(CUIKDeleteCalendarsDecisionManager *)self _rejectDeleteCalendarFromUnwriteableAccountPlural:v3 > 1];
      goto LABEL_32;
    }

    if ([v6 code] == 53)
    {
      self->_rejectionReason = 3;
      v25 = [objc_opt_class() _thisCalendarCantBeDeletedPlural:v3 > 1];
      rejectionTitle = self->_rejectionTitle;
      self->_rejectionTitle = v25;

      goto LABEL_32;
    }
  }

  v27 = v3;
  v28 = self;
  v29 = v6;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = self->_calendars;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v30 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v7);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        if ([v17 isSubscribed])
        {
          v10 |= [v17 isHolidayCalendar] ^ 1;
          v14 = 1;
        }

        else
        {
          v18 = [v17 deletionWarningsMask];
          if ((v18 & 0x10) != 0)
          {
            v30 = 1;
          }

          else
          {
            v11 |= (v18 & 2) >> 1;
            if ((v18 & 2) != 0)
            {
              v12 = (v18 & 8) != 0;
            }

            v13 |= (v18 >> 2) & 1;
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  else
  {
    LOBYTE(v10) = 0;
    v30 = 0;
    v11 = 0;
    v12 = 0;
    LOBYTE(v13) = 0;
    v14 = 0;
  }

  if (v27 > 1)
  {
    v19 = 0;
    v20 = v28;
    v6 = v29;
    if ((v14 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v20 = v28;
  v21 = [(NSArray *)v28->_calendars firstObject];
  v19 = [v21 title];

  v6 = v29;
  if (v14)
  {
LABEL_26:
    v22 = [objc_opt_class() _shouldDeleteSubscribedCalendarWithTitle:v19 canBeJunk:v10 & 1];
    [(CUIKDeleteCalendarsDecisionManager *)v20 _addConfirmation:v22];
  }

LABEL_27:
  if (v30)
  {
    v23 = [objc_opt_class() _shouldDeleteSharedToMeCalendarWithTitle:v19];
    [(CUIKDeleteCalendarsDecisionManager *)v20 _addConfirmation:v23];
  }

  if (v11)
  {
    v24 = [objc_opt_class() _shouldDeleteCalendarContainingMeetingsWithTitle:v19 isDualType:v12 hasInvitations:v13 & 1];
    [(CUIKDeleteCalendarsDecisionManager *)v20 _addConfirmation:v24];
  }

LABEL_32:
}

- (void)_addConfirmation:(id)a3
{
  v4 = a3;
  confirmations = self->_confirmations;
  v8 = v4;
  if (!confirmations)
  {
    v6 = objc_opt_new();
    v7 = self->_confirmations;
    self->_confirmations = v6;

    v4 = v8;
    confirmations = self->_confirmations;
  }

  [(NSMutableArray *)confirmations addObject:v4];
}

- (BOOL)_validateDeletableWithError:(id *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [(NSArray *)self->_calendars firstObject];
  v6 = [v5 eventStore];
  v7 = [v6 _allCalendars];
  v8 = [v7 mutableCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = self->_calendars;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 removeObject:*(*(&v25 + 1) + 8 * i)];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v11);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_calendars;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    while (2)
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (![*(*(&v21 + 1) + 8 * j) _validateDeletableWithAllKnownCalendars:v8 error:{a3, v21}])
        {
          v19 = 0;
          goto LABEL_18;
        }
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_18:

  return v19;
}

+ (id)_cancelButtonText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"CUIKDeleteCalendarsDecisionManager_Cancel" value:@"Cancel" table:0];

  return v3;
}

+ (id)_deleteButtonText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"CUIKDeleteCalendarsDecisionManager_Delete" value:@"Delete" table:0];

  return v3;
}

+ (id)_removeButtonText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"CUIKDeleteCalendarsDecisionManager_Remove" value:@"Remove" table:0];

  return v3;
}

+ (id)_deleteAndNotifyButtonText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"CUIKDeleteCalendarsDecisionManager_DeleteAndNotify" value:@"Delete and Notify" table:0];

  return v3;
}

+ (id)_deleteAndDontNotifyButtonText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"CUIKDeleteCalendarsDecisionManager_DeleteAndDontNotify" value:@"Delete and Don’t Notify" table:0];

  return v3;
}

+ (id)_unsubscribeButtonText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"CUIKDeleteCalendarsDecisionManager_Unsubscribe" value:@"Unsubscribe" table:0];

  return v3;
}

+ (id)_unsubscribeAndReportJunkButtonText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"CUIKDeleteCalendarsDecisionManager_UnsubscribeAndReportJunk" value:@"Unsubscribe and Report Junk" table:0];

  return v3;
}

+ (id)_thisCalendarCantBeDeletedPlural:(BOOL)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = v4;
  if (v3)
  {
    v6 = @"A selected calendar can't be deleted.";
  }

  else
  {
    v6 = @"This calendar can’t be deleted.";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F4AA8958 table:0];

  return v7;
}

- (void)_rejectRemainingCalendarCannotBeDefaultSchedulingCalendarPlural:(BOOL)a3
{
  v3 = a3;
  v5 = CUIKBundle();
  v6 = [v5 localizedStringForKey:@"If you perform this deletion value:then the only remaining calendar will become the default calendar from the server because it is used for incoming events table:{and the remaining calendar doesn’t support that. If you would like to delete this calendar, you must first make another calendar.", &stru_1F4AA8958, 0}];

  self->_rejectionReason = 1;
  v7 = [objc_opt_class() _thisCalendarCantBeDeletedPlural:v3];
  rejectionTitle = self->_rejectionTitle;
  self->_rejectionTitle = v7;

  rejectionDetails = self->_rejectionDetails;
  self->_rejectionDetails = v6;
}

- (void)_rejectDeleteCalendarFromUnwriteableAccountPlural:(BOOL)a3
{
  v3 = a3;
  v5 = CUIKBundle();
  v6 = [v5 localizedStringForKey:@"You can’t delete calendars from an account with read-only privileges." value:&stru_1F4AA8958 table:0];

  self->_rejectionReason = 2;
  v7 = [objc_opt_class() _thisCalendarCantBeDeletedPlural:v3];
  rejectionTitle = self->_rejectionTitle;
  self->_rejectionTitle = v7;

  rejectionDetails = self->_rejectionDetails;
  self->_rejectionDetails = v6;
}

+ (id)_yesNoConfirmationWithPrompt:(id)a3 dialog:(id)a4 yesText:(id)a5
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [CUIKDeleteCalendarsConfirmationInfo alloc];
  v16[0] = v8;
  v12 = [a1 _cancelButtonText];
  v16[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

  v14 = [(CUIKDeleteCalendarsConfirmationInfo *)v11 initWithType:0 prompt:v10 dialog:v9 options:v13];

  return v14;
}

+ (id)_shouldDeleteSubscribedCalendarWithTitle:(id)a3 canBeJunk:(BOOL)a4
{
  v4 = a4;
  v20[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = CUIKBundle();
  v8 = v7;
  if (v6)
  {
    v9 = [v7 localizedStringForKey:@"Are you sure you want to unsubscribe from the calendar “%@”?" value:&stru_1F4AA8958 table:0];

    v10 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v9, v6];
    v8 = v9;
  }

  else
  {
    v10 = [v7 localizedStringForKey:@"You are unsubscribing from a subscribed calendar." value:&stru_1F4AA8958 table:0];
  }

  v11 = CUIKBundle();
  v12 = [v11 localizedStringForKey:@"If you unsubscribe from this calendar value:all events associated with the calendar will also be deleted." table:{&stru_1F4AA8958, 0}];

  if (v4)
  {
    v13 = [CUIKDeleteCalendarsConfirmationInfo alloc];
    v14 = [a1 _unsubscribeButtonText];
    v20[0] = v14;
    v15 = [a1 _unsubscribeAndReportJunkButtonText];
    v20[1] = v15;
    v16 = [a1 _cancelButtonText];
    v20[2] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v18 = [(CUIKDeleteCalendarsConfirmationInfo *)v13 initWithType:1 prompt:v10 dialog:v12 options:v17];
  }

  else
  {
    v14 = [a1 _unsubscribeButtonText];
    v18 = [a1 _yesNoConfirmationWithPrompt:v10 dialog:v12 yesText:v14];
  }

  return v18;
}

+ (id)_shouldDeleteSharedToMeCalendarWithTitle:(id)a3
{
  v4 = a3;
  v5 = CUIKBundle();
  v6 = v5;
  if (v4)
  {
    v7 = [v5 localizedStringForKey:@"Are you sure you want to remove the calendar “%@”?" value:&stru_1F4AA8958 table:0];

    v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v7, v4];
    v6 = v7;
  }

  else
  {
    v8 = [v5 localizedStringForKey:@"You are removing a shared calendar." value:&stru_1F4AA8958 table:0];
  }

  v9 = CUIKBundle();
  v10 = [v9 localizedStringForKey:@"If you remove this calendar value:your view of the calendar will be removed. Events associated with the calendar will not be deleted for other users." table:{&stru_1F4AA8958, 0}];

  v11 = [a1 _removeButtonText];
  v12 = [a1 _yesNoConfirmationWithPrompt:v8 dialog:v10 yesText:v11];

  return v12;
}

+ (id)_shouldDeleteCalendarContainingMeetingsWithTitle:(id)a3 isDualType:(BOOL)a4 hasInvitations:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = CUIKBundle();
  v10 = v9;
  if (v5)
  {
    if (v8)
    {
      v11 = [v9 localizedStringForKey:@"Are you sure you want to delete the calendar “%@” which contains invitations and meetings?" value:&stru_1F4AA8958 table:0];

      v12 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v11, v8];
      v10 = v11;
    }

    else
    {
      v12 = [v9 localizedStringForKey:@"You are deleting a calendar that contains invitations and meetings." value:&stru_1F4AA8958 table:0];
    }

    v14 = @"Deleting this calendar will delete all events on the calendar. Invitees of events you proposed will be notified that events have been canceled, and organizers of events you’ve accepted will be notified that you’ve declined the events. You can’t undo this action.";
    v15 = @"Deleting this calendar will delete all events on the calendar. All reminders in the calendar will persist in Reminders. Invitees of events you proposed will be notified that events have been canceled, and organizers of events you’ve accepted will be notified that you’ve declined the events. You can’t undo this action.";
  }

  else
  {
    if (v8)
    {
      v13 = [v9 localizedStringForKey:@"Are you sure you want to delete the calendar “%@”?" value:&stru_1F4AA8958 table:0];

      v12 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v13, v8];
      v10 = v13;
    }

    else
    {
      v12 = [v9 localizedStringForKey:@"You are deleting a calendar that contains events." value:&stru_1F4AA8958 table:0];
    }

    v14 = @"If you delete this calendar, all events associated with the calendar will also be deleted.";
    v15 = @"If you delete this calendar, all events associated with the calendar will also be deleted. All reminders in the calendar will persist in Reminders.";
  }

  if (v6)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  v17 = CUIKBundle();
  v18 = [v17 localizedStringForKey:v16 value:&stru_1F4AA8958 table:0];

  v19 = [a1 _deleteButtonText];
  v20 = [a1 _yesNoConfirmationWithPrompt:v12 dialog:v18 yesText:v19];

  return v20;
}

@end