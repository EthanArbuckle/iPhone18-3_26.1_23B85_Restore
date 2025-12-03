@interface NPDCardSetupReminderNotificationScheduler
- (BOOL)_hasReminderWithName:(id)name;
- (NPDCardSetupReminderNotificationScheduler)init;
- (NPDCardSetupReminderNotificationSchedulerDelegate)delegate;
- (void)_handleSetupReminderForCompanionPaymentPassWithUniqueID:(id)d;
- (void)_handleVerificationReminderForWatchPaymentPassWithUniqueID:(id)d;
- (void)_removeReminderWithName:(id)name;
- (void)_scheduleReminderWithName:(id)name forDate:(id)date;
- (void)dealloc;
- (void)noteCompanionPaymentPassActivatedWithUniqueID:(id)d readerIdentifier:(id)identifier;
- (void)noteCompanionPaymentPassAddedWithUniqueID:(id)d readerIdentifier:(id)identifier;
- (void)noteCompanionPaymentPassRemovedWithUniqueID:(id)d;
- (void)noteOfferDisplayedForCompanionPaymentPassWithUniqueID:(id)d;
- (void)noteWatchPaymentPassNeedsVerificationWithUniqueID:(id)d;
- (void)noteWatchPaymentPassRemovedWithUniqueID:(id)d;
- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria;
@end

@implementation NPDCardSetupReminderNotificationScheduler

- (NPDCardSetupReminderNotificationScheduler)init
{
  v4.receiver = self;
  v4.super_class = NPDCardSetupReminderNotificationScheduler;
  v2 = [(NPDCardSetupReminderNotificationScheduler *)&v4 init];
  if (v2)
  {
    PDScheduledActivityClientRegister();
  }

  return v2;
}

- (void)dealloc
{
  PDScheduledActivityClientRemove();
  v3.receiver = self;
  v3.super_class = NPDCardSetupReminderNotificationScheduler;
  [(NPDCardSetupReminderNotificationScheduler *)&v3 dealloc];
}

- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria
{
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"companion-"])
  {
    v5 = [identifierCopy substringFromIndex:{objc_msgSend(@"companion-", "length")}];

    [(NPDCardSetupReminderNotificationScheduler *)self _handleSetupReminderForCompanionPaymentPassWithUniqueID:v5];
LABEL_8:
    v7 = v5;
    goto LABEL_9;
  }

  if ([identifierCopy hasPrefix:@"watch-"])
  {
    v6 = @"watch-";
LABEL_7:
    v5 = [identifierCopy substringFromIndex:{-[__CFString length](v6, "length")}];

    [(NPDCardSetupReminderNotificationScheduler *)self _handleVerificationReminderForWatchPaymentPassWithUniqueID:v5];
    goto LABEL_8;
  }

  if ([identifierCopy hasPrefix:@"2nd-watch-"])
  {
    v6 = @"2nd-watch-";
    goto LABEL_7;
  }

  v7 = identifierCopy;
LABEL_9:
}

- (void)noteCompanionPaymentPassAddedWithUniqueID:(id)d readerIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = [(NPDCardSetupReminderNotificationScheduler *)self _reminderNameForCompanionPaymentPassWithUniqueID:dCopy];
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v25 = dCopy;
      v26 = 2112;
      v27 = identifierCopy;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass added with unique ID %@ readerIdentifier %@. Checking for reminder %@", buf, 0x20u);
    }
  }

  delegate = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
  v13 = [delegate hasWatchPaymentPassWithUniqueID:dCopy];

  if (identifierCopy)
  {
    delegate2 = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
    v15 = [delegate2 hasWatchPaymentPassWithReaderIdentifier:identifierCopy];
  }

  else
  {
    v15 = 0;
  }

  if ((v13 | v15))
  {
    v16 = pk_Payment_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = pk_Payment_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v8;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Notice: Matching watch pass found; no need to schedule add reminder %@", buf, 0xCu);
      }
    }
  }

  else
  {
    objc_initWeak(buf, self);
    delegate3 = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000021BC;
    v20[3] = &unk_100070D68;
    objc_copyWeak(&v23, buf);
    v21 = v8;
    v22 = dCopy;
    [delegate3 doesWatchSupportPassLikeCompanionPassWithUniqueID:v22 withCompletion:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

- (void)noteCompanionPaymentPassActivatedWithUniqueID:(id)d readerIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = [(NPDCardSetupReminderNotificationScheduler *)self _reminderNameForCompanionPaymentPassWithUniqueID:dCopy];
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Companion payment pass activated with unique ID %@", buf, 0xCu);
    }
  }

  if ([(NPDCardSetupReminderNotificationScheduler *)self _hasReminderWithName:v8])
  {
    delegate = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
    v13 = [delegate hasWatchPaymentPassWithUniqueID:dCopy];

    if (identifierCopy)
    {
      delegate2 = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
      v15 = [delegate2 hasWatchPaymentPassWithReaderIdentifier:identifierCopy];
    }

    else
    {
      v15 = 0;
    }

    if ((v13 | v15))
    {
      [(NPDCardSetupReminderNotificationScheduler *)self _removeReminderWithName:v8];
    }

    else
    {
      objc_initWeak(buf, self);
      delegate3 = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100002530;
      v17[3] = &unk_100070D68;
      objc_copyWeak(&v20, buf);
      v18 = v8;
      v19 = dCopy;
      [delegate3 doesWatchSupportPassLikeCompanionPassWithUniqueID:v19 withCompletion:v17];

      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }
  }
}

- (void)noteCompanionPaymentPassRemovedWithUniqueID:(id)d
{
  dCopy = d;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Companion payment pass removed with unique ID %@", &v9, 0xCu);
    }
  }

  [(NPDCardSetupReminderNotificationScheduler *)self _removeReminderWithName:dCopy];
  delegate = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
  [delegate removeReminderNotificationForPassWithUniqueID:dCopy];
}

- (void)noteOfferDisplayedForCompanionPaymentPassWithUniqueID:(id)d
{
  dCopy = d;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Watch offer displayed for companion pass with unique ID %@", &v10, 0xCu);
    }
  }

  v8 = [(NPDCardSetupReminderNotificationScheduler *)self _reminderNameForCompanionPaymentPassWithUniqueID:dCopy];
  [(NPDCardSetupReminderNotificationScheduler *)self _removeReminderWithName:v8];
  delegate = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
  [delegate removeReminderNotificationForPassWithUniqueID:dCopy];
}

- (void)noteWatchPaymentPassNeedsVerificationWithUniqueID:(id)d
{
  dCopy = d;
  v5 = [(NPDCardSetupReminderNotificationScheduler *)self _firstReminderNameForWatchPaymentPassWithUniqueID:dCopy];
  v6 = [(NPDCardSetupReminderNotificationScheduler *)self _secondReminderNameForWatchPaymentPassWithUniqueID:dCopy];

  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Watch payment pass verification reminders scheduled: %@ and %@", &v14, 0x16u);
    }
  }

  v10 = [NSDate dateWithTimeIntervalSinceNow:3600.0];
  v11 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
  if (PKShortenRemindersEnabled())
  {
    v12 = [NSDate dateWithTimeIntervalSinceNow:60.0];

    v13 = [NSDate dateWithTimeIntervalSinceNow:300.0];

    v10 = v12;
    v11 = v13;
  }

  [(NPDCardSetupReminderNotificationScheduler *)self _scheduleReminderWithName:v5 forDate:v10];
  [(NPDCardSetupReminderNotificationScheduler *)self _scheduleReminderWithName:v6 forDate:v11];
}

- (void)noteWatchPaymentPassRemovedWithUniqueID:(id)d
{
  dCopy = d;
  v7 = [(NPDCardSetupReminderNotificationScheduler *)self _firstReminderNameForWatchPaymentPassWithUniqueID:dCopy];
  v5 = [(NPDCardSetupReminderNotificationScheduler *)self _secondReminderNameForWatchPaymentPassWithUniqueID:dCopy];
  [(NPDCardSetupReminderNotificationScheduler *)self _removeReminderWithName:v7];
  [(NPDCardSetupReminderNotificationScheduler *)self _removeReminderWithName:v5];
  delegate = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
  [delegate removeReminderNotificationForPassWithUniqueID:dCopy];
}

- (void)_handleSetupReminderForCompanionPaymentPassWithUniqueID:(id)d
{
  dCopy = d;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Handling setup reminder for companion payment pass with unique ID %@", buf, 0xCu);
    }
  }

  delegate = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
  v9 = [delegate hasCompanionPaymentPassWithUniqueID:dCopy];

  if (v9)
  {
    delegate2 = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
    v11 = [delegate2 hasWatchPaymentPassWithUniqueID:dCopy];

    delegate3 = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
    v13 = [delegate3 readerIdentifierForCompanionPaymentPassWithUniqueID:dCopy];

    if (v13)
    {
      delegate4 = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
      v15 = [delegate4 hasWatchPaymentPassWithReaderIdentifier:v13];
    }

    else
    {
      v15 = 0;
    }

    if (((v11 | v15) & 1) == 0)
    {
      objc_initWeak(buf, self);
      delegate5 = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100002DC4;
      v19[3] = &unk_100070D90;
      objc_copyWeak(&v21, buf);
      v20 = dCopy;
      [delegate5 doesWatchSupportPassLikeCompanionPassWithUniqueID:v20 withCompletion:v19];

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }

LABEL_14:

    goto LABEL_15;
  }

  v16 = pk_Payment_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Unable to find payment pass with unique ID %@ on the companion", buf, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)_handleVerificationReminderForWatchPaymentPassWithUniqueID:(id)d
{
  dCopy = d;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Handling verification reminder for watch payment pass with unique ID %@", &v11, 0xCu);
    }
  }

  delegate = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
  v9 = [delegate hasWatchPaymentPassRequiringVerificationWithUniqueID:dCopy];

  if (v9)
  {
    delegate2 = [(NPDCardSetupReminderNotificationScheduler *)self delegate];
    [delegate2 postVerifyReminderNotificationForPassWithUniqueID:dCopy];
  }
}

- (BOOL)_hasReminderWithName:(id)name
{
  nameCopy = name;
  v4 = PDScheduledActivityExists();
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "no";
      if (v4)
      {
        v8 = "yes";
      }

      v10 = 138412546;
      v11 = nameCopy;
      v12 = 2080;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Do we have a reminder with name %@? %s", &v10, 0x16u);
    }
  }

  return v4;
}

- (void)_removeReminderWithName:(id)name
{
  nameCopy = name;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = nameCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Removing setup/verification reminder with name %@", &v8, 0xCu);
    }
  }

  if ([(NPDCardSetupReminderNotificationScheduler *)self _hasReminderWithName:nameCopy])
  {
    PDScheduledActivityRemove();
  }
}

- (void)_scheduleReminderWithName:(id)name forDate:(id)date
{
  nameCopy = name;
  dateCopy = date;
  [(NPDCardSetupReminderNotificationScheduler *)self _removeReminderWithName:nameCopy];
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = nameCopy;
      v14 = 2112;
      v15 = dateCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Scheduling setup/verification reminder with name %@ for date %@", &v12, 0x16u);
    }
  }

  v11 = [PDScheduledActivityCriteria priorityActivityCriteriaWithStartDate:dateCopy];
  PDScheduledActivityRegister();
}

- (NPDCardSetupReminderNotificationSchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end