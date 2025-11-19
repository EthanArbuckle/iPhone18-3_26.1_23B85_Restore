@interface CUIKAlarmsViewModel
+ (id)_noneAlertTitle;
+ (id)accessibilityIdentifierForIndex:(unint64_t)a3;
+ (id)labelTextForIndex:(unint64_t)a3;
+ (void)subscribeToDarwinNotifications;
+ (void)unsubscribeFromDarwinNotifications;
- (BOOL)_hasUIAlarmChangedFromUIAlarm:(id)a3 toUIAlarm:(id)a4;
- (BOOL)isAlarmEffectivelyDisabled:(id)a3;
- (BOOL)showDefaultAlarm:(id)a3;
- (CUIKAlarmsViewModel)init;
- (CUIKAlarmsViewModel)initWithCalendarItem:(id)a3;
- (NSMutableArray)uiAlarms;
- (id)_errorTitleForDisabledTTLAlarm;
- (id)_menuForAlarmAtIndex:(unint64_t)a3 placeholder:(BOOL)a4 actionHandler:(id)a5;
- (id)presetAlarmsIntervals;
- (void)_updateAlarms;
- (void)_updateLeaveNowFlags;
- (void)dealloc;
- (void)reloadTTLLocationAuthorization:(id)a3;
- (void)updateIfNeeded;
- (void)updatedUIAlarmFromUIAlarm:(id)a3 toUIAlarm:(id)a4 atIndex:(unint64_t)a5 completion:(id)a6;
@end

@implementation CUIKAlarmsViewModel

- (CUIKAlarmsViewModel)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CUIKAlarmsViewModel.m" lineNumber:54 description:@"Error: Must use designated initializer when initializing an CUIKAlarmsViewModel instance. Using init directly is not supported for the CUIKAlarmsViewModel since it guarantees that the CUIKAlarmsViewModel will be initialized with a nil calendarItem."];

  return [(CUIKAlarmsViewModel *)self initWithCalendarItem:0];
}

- (CUIKAlarmsViewModel)initWithCalendarItem:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CUIKAlarmsViewModel;
  v5 = [(CUIKAlarmsViewModel *)&v11 init];
  if (v5)
  {
    if (!v4)
    {
      v6 = +[CUIKLogSubsystem alarms];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CUIKAlarmsViewModel initWithCalendarItem:v6];
      }
    }

    [(CUIKAlarmsViewModel *)v5 setCalendarItem:v4];
    v7 = [MEMORY[0x1E695DF70] array];
    uiAlarms = v5->_uiAlarms;
    v5->_uiAlarms = v7;

    +[CUIKAlarmsViewModel subscribeToDarwinNotifications];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v5 selector:sel_reloadTTLLocationAuthorization_ name:@"CUIKAlarmsViewModelTTLLocationAuthorizationStatusNeedsReloadNotification" object:0];

    [(CUIKAlarmsViewModel *)v5 setNeedsUpdate];
  }

  return v5;
}

- (void)dealloc
{
  +[CUIKAlarmsViewModel unsubscribeFromDarwinNotifications];
  v3.receiver = self;
  v3.super_class = CUIKAlarmsViewModel;
  [(CUIKAlarmsViewModel *)&v3 dealloc];
}

+ (void)subscribeToDarwinNotifications
{
  os_unfair_lock_lock(&notificationLock);
  if (!livingModelCount++)
  {
    v3 = +[CUIKLogSubsystem alarms];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1CAB19000, v3, OS_LOG_TYPE_INFO, "Subscribing to TTL authorization status change notifications", v5, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, locationAuthorizationsChanged, *MEMORY[0x1E6992300], 0, 0);
  }

  os_unfair_lock_unlock(&notificationLock);
}

+ (void)unsubscribeFromDarwinNotifications
{
  os_unfair_lock_lock(&notificationLock);
  if (!--livingModelCount)
  {
    v2 = +[CUIKLogSubsystem alarms];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1CAB19000, v2, OS_LOG_TYPE_INFO, "Unsubscribing from TTL authorization status change notifications", v4, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, *MEMORY[0x1E6992300], 0);
  }

  os_unfair_lock_unlock(&notificationLock);
}

- (void)reloadTTLLocationAuthorization:(id)a3
{
  locationStatus = self->_locationStatus;
  [(CUIKAlarmsViewModel *)self _updateLeaveNowFlags];
  if (locationStatus != self->_locationStatus)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"CUIKAlarmsViewModelTTLLocationStatusChangedNotification" object:self];
  }
}

- (void)updatedUIAlarmFromUIAlarm:(id)a3 toUIAlarm:(id)a4 atIndex:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([(CUIKAlarmsViewModel *)self _hasUIAlarmChangedFromUIAlarm:v10 toUIAlarm:v11])
  {
    v13 = [(CUIKAlarmsViewModel *)self calendarItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(CUIKAlarmsViewModel *)self uiAlarms];
    v16 = [v13 alarms];
    if ([v15 count] <= a5)
    {
      if (!v11)
      {
LABEL_19:
        v21 = 0;
        v22 = 0;
        goto LABEL_46;
      }

      if ([v11 isLeaveNowAlarm])
      {
        v21 = 1;
        [v14 setTravelAdvisoryBehavior:1];
        v22 = [[CUIKUIAlarm alloc] initLeaveNowAlarm];
LABEL_46:
        v12[2](v12, 1, v22, v21);

        goto LABEL_47;
      }

      v23 = [v11 alarm];
      v24 = [v23 isAbsolute];

      if (v24)
      {
        v25 = MEMORY[0x1E6966950];
        v26 = [v11 alarm];
        v27 = v26;
        goto LABEL_22;
      }

      if (![v11 isDefaultAlarm])
      {
        v25 = MEMORY[0x1E6966950];
        v26 = [v11 alarm];
        v27 = v26;
LABEL_39:
        [v26 relativeOffset];
        v33 = [v25 alarmWithRelativeOffset:?];
        goto LABEL_40;
      }
    }

    else
    {
      if ([v16 count] > a5)
      {
        v62 = [v13 sortedAlarms];
        if (v10)
        {
          v17 = [v10 alarm];
          v18 = [(CUIKAlarmsViewModel *)self calendarItem];
          a5 = [v18 indexForAlarm:v17];
        }

        if (a5 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = [v10 alarm];
          v20 = +[CUIKLogSubsystem alarms];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [CUIKAlarmsViewModel updatedUIAlarmFromUIAlarm:v19 toUIAlarm:v20 atIndex:? completion:?];
          }

          v21 = 0;
          v22 = 0;
          goto LABEL_45;
        }

        if (!v11 || ([v11 isLeaveNowAlarm] & 1) != 0 || objc_msgSend(v11, "isDefaultAlarm"))
        {
          v30 = [v62 mutableCopy];
          [v30 removeObjectAtIndex:a5];
          if ([v11 isLeaveNowAlarm])
          {
            [v14 setTravelAdvisoryBehavior:1];
            v22 = [[CUIKUIAlarm alloc] initLeaveNowAlarm];
          }

          else if ([v11 isDefaultAlarm])
          {
            v34 = [v13 defaultAlarms];
            v35 = [v34 anyObject];

            if (v35)
            {
              [v30 addObject:v35];
            }

            v22 = [[CUIKUIAlarm alloc] initDefaultAlarm];
          }

          else
          {
            v22 = 0;
          }

          v36 = [v30 copy];
          [v13 setAlarms:v36];

          v21 = 0;
          goto LABEL_45;
        }

        v61 = [v62 objectAtIndexedSubscript:a5];
        if ([v61 isDefaultAlarm])
        {
          v60 = [v62 mutableCopy];
          v37 = [v11 alarm];
          v38 = [v37 isAbsolute];

          v39 = MEMORY[0x1E6966950];
          v40 = [v11 alarm];
          if (v38)
          {
            v41 = [v40 absoluteDate];
            v42 = v39;
            v43 = v41;
            v44 = [v42 alarmWithAbsoluteDate:v41];
          }

          else
          {
            [v40 relativeOffset];
            v44 = [v39 alarmWithRelativeOffset:?];
          }

          [v60 replaceObjectAtIndex:a5 withObject:v44];
          v22 = [[CUIKUIAlarm alloc] initWithAlarm:v44];
          v53 = [v60 copy];
          [v13 setAlarms:v53];

          v21 = 1;
          v50 = v61;
          goto LABEL_58;
        }

        v45 = [v11 alarm];
        v46 = [v45 isAbsolute];

        v47 = [v11 alarm];
        v48 = v47;
        if (v46)
        {
          v49 = [v47 absoluteDate];
          [v61 setAbsoluteDate:v49];

          v50 = v61;
          v51 = [CUIKUIAlarm alloc];
          v52 = v61;
        }

        else
        {
          [v47 relativeOffset];
          v55 = v54;
          v50 = v61;
          [v61 relativeOffset];
          v57 = v56;

          if (v55 == v57)
          {
            v21 = 0;
            v22 = 0;
            goto LABEL_58;
          }

          v58 = [v11 alarm];
          [v58 relativeOffset];
          [v61 setRelativeOffset:?];

          v50 = v61;
          v51 = [CUIKUIAlarm alloc];
          v52 = v61;
        }

        v22 = [(CUIKUIAlarm *)v51 initWithAlarm:v52];
        v21 = 1;
LABEL_58:

LABEL_45:
        goto LABEL_46;
      }

      if (!v11)
      {
        [v14 setTravelAdvisoryBehavior:2];
        v22 = 0;
LABEL_42:
        v21 = 1;
        goto LABEL_46;
      }

      if ([v11 isLeaveNowAlarm])
      {
        goto LABEL_19;
      }

      [v14 setTravelAdvisoryBehavior:2];
      if (![v11 isDefaultAlarm])
      {
        v31 = [v11 alarm];
        v32 = [v31 isAbsolute];

        v25 = MEMORY[0x1E6966950];
        v26 = [v11 alarm];
        v27 = v26;
        if (!v32)
        {
          goto LABEL_39;
        }

LABEL_22:
        v28 = [v26 absoluteDate];
        v29 = [v25 alarmWithAbsoluteDate:v28];

LABEL_41:
        [v13 addAlarm:v29];
        v22 = [[CUIKUIAlarm alloc] initWithAlarm:v29];

        goto LABEL_42;
      }
    }

    v27 = [v13 defaultAlarms];
    v33 = [v27 anyObject];
LABEL_40:
    v29 = v33;
    goto LABEL_41;
  }

  v12[2](v12, 0, 0, 0);
LABEL_47:
}

- (BOOL)_hasUIAlarmChangedFromUIAlarm:(id)a3 toUIAlarm:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v6 = v5;
    v8 = v7;
  }

  else
  {
    if (!v6)
    {
      LOBYTE(v9) = 0;
      goto LABEL_6;
    }

    v8 = 0;
  }

  v9 = [v6 isEqualToUIAlarm:v8] ^ 1;
LABEL_6:

  return v9;
}

- (void)updateIfNeeded
{
  if ([(CUIKAlarmsViewModel *)self needsUpdate])
  {
    [(CUIKAlarmsViewModel *)self _updateAlarms];
    [(CUIKAlarmsViewModel *)self _updateLeaveNowFlags];
  }

  [(CUIKAlarmsViewModel *)self setNeedsUpdate:0];
}

- (void)_updateAlarms
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_uiAlarms removeAllObjects];
  v3 = [(CUIKAlarmsViewModel *)self calendarItem];
  v4 = [v3 sortedAlarms];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        uiAlarms = self->_uiAlarms;
        v10 = [[CUIKUIAlarm alloc] initWithAlarm:*(*(&v14 + 1) + 8 * v8)];
        [(NSMutableArray *)uiAlarms addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([MEMORY[0x1E6966A30] isTravelAdvisorySupported])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v3;
      if ([v11 eligibleForTravelAdvisories] && objc_msgSend(v11, "travelAdvisoryBehaviorIsEffectivelyEnabled"))
      {
        v12 = self->_uiAlarms;
        v13 = [[CUIKUIAlarm alloc] initLeaveNowAlarm];
        [(NSMutableArray *)v12 addObject:v13];
      }
    }
  }
}

- (void)_updateLeaveNowFlags
{
  *&self->_canHaveLeaveNowAlarm = 0;
  self->_locationStatus = 0;
  v6 = [(CUIKAlarmsViewModel *)self calendarItem];
  if ([MEMORY[0x1E6966A30] isTravelAdvisorySupported])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v6;
      v4 = [v3 eligibleForTravelAdvisories];
      self->_canHaveLeaveNowAlarm = v4;
      if (v4)
      {
        LOBYTE(v4) = [v3 travelAdvisoryBehaviorIsEffectivelyEnabled];
      }

      self->_hasLeaveNowAlarm = v4;
    }

    v5 = [v6 eventStore];
    self->_locationStatus = [v5 timeToLeaveLocationAuthorizationStatus];
  }
}

- (NSMutableArray)uiAlarms
{
  [(CUIKAlarmsViewModel *)self updateIfNeeded];
  v3 = [(NSMutableArray *)self->_uiAlarms copy];

  return v3;
}

- (BOOL)showDefaultAlarm:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_uiAlarms;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 isDefaultAlarm];
        if (v9 != v4 && (v10 & 1) != 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_12;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (id)presetAlarmsIntervals
{
  v2 = [(CUIKAlarmsViewModel *)self calendarItem];
  v3 = [v2 isAllDay];

  if (v3 && !presetAlarmsIntervals_sAllDayIntervals)
  {
    presetAlarmsIntervals_sAllDayIntervals = &unk_1F4ABECC0;
  }

  v4 = presetAlarmsIntervals_sTimedIntervals;
  if (presetAlarmsIntervals_sTimedIntervals)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if ((v5 & 1) == 0)
  {
    presetAlarmsIntervals_sTimedIntervals = &unk_1F4ABECD8;

    v4 = &unk_1F4ABECD8;
  }

  if (v3)
  {
    v6 = presetAlarmsIntervals_sAllDayIntervals;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

+ (id)_noneAlertTitle
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"None alert - calendar event alarm table" value:@"None" table:0];

  return v3;
}

- (id)_menuForAlarmAtIndex:(unint64_t)a3 placeholder:(BOOL)a4 actionHandler:(id)a5
{
  v94 = a4;
  v123[1] = *MEMORY[0x1E69E9840];
  v92 = a5;
  v86 = +[CUIKPreferences sharedPreferences];
  v5 = [v86 immediateAlarmCreation];
  objc_initWeak(&location, self);
  v6 = self;
  if ([(NSMutableArray *)self->_uiAlarms count]<= a3)
  {
    v88 = 0;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v88 = [(NSMutableArray *)self->_uiAlarms objectAtIndexedSubscript:?];
    if (v5)
    {
LABEL_3:
      v7 = MEMORY[0x1E69DC628];
      v111[0] = MEMORY[0x1E69E9820];
      v111[1] = 3221225472;
      v111[2] = __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke;
      v111[3] = &unk_1E839A4D8;
      objc_copyWeak(v113, &location);
      v113[1] = a3;
      v112 = v92;
      v8 = [v7 actionWithTitle:@"Five seconds from now" image:0 identifier:0 handler:v111];
      v9 = MEMORY[0x1E69DCC60];
      v123[0] = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:1];
      v11 = [v9 menuWithTitle:&stru_1F4AA8958 image:0 identifier:0 options:1 children:v10];

      objc_destroyWeak(v113);
      goto LABEL_82;
    }
  }

  v85 = [(CUIKAlarmsViewModel *)self calendarItem];
  v84 = [MEMORY[0x1E695DF70] array];
  v90 = [v85 isAllDay];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v85 travelTime];
    v89 = v12 > 0.0;
  }

  else
  {
    v89 = 0;
  }

  v13 = [v85 defaultAlarm];
  v82 = v13;
  if (v13 && ([v13 isAbsolute] & 1) == 0)
  {
    [v82 relativeOffset];
    v14 = v15;
  }

  else
  {
    v14 = 9.22337204e18;
  }

  if (v94 && ![v88 isDefaultAlarm] || -[CUIKAlarmsViewModel showDefaultAlarm:](self, "showDefaultAlarm:", v88))
  {
    v16 = 0;
  }

  else
  {
    v17 = [v85 defaultAlarms];
    v18 = [v17 anyObject];
    v19 = v18 == 0;

    if (v19)
    {
      v16 = 0;
    }

    else
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = [MEMORY[0x1E6966950] cuik_defaultDesignator];
      v22 = CUIKStringForRelativeOffset(v90, v89, v14);
      v23 = [v20 localizedStringWithValidatedFormat:v21 validFormatSpecifiers:@"%@" error:0, v22];

      v24 = MEMORY[0x1E69DC628];
      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke_2;
      v108[3] = &unk_1E839A4D8;
      objc_copyWeak(v110, &location);
      v110[1] = a3;
      v109 = v92;
      v25 = [v24 actionWithTitle:v23 image:0 identifier:0 handler:v108];
      v16 = [v88 isDefaultAlarm];
      if (v16)
      {
        [v25 setState:1];
      }

      v122 = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
      CUIKAddInlineMenuItemArrayToArray(v84, v26);

      objc_destroyWeak(v110);
    }

    v6 = self;
  }

  if (v88)
  {
    v27 = 1;
  }

  else
  {
    v27 = v16;
  }

  if (!v94 || (v27 & 1) == 0)
  {
    v28 = [objc_opt_class() _noneAlertTitle];
    v29 = MEMORY[0x1E69DC628];
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke_3;
    v105[3] = &unk_1E839A4D8;
    objc_copyWeak(v107, &location);
    v107[1] = a3;
    v106 = v92;
    v30 = [v29 actionWithTitle:v28 image:0 identifier:0 handler:v105];
    v31 = v30;
    if (!v88)
    {
      [v30 setState:1];
      v16 = 1;
    }

    v121 = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
    CUIKAddInlineMenuItemArrayToArray(v84, v32);

    objc_destroyWeak(v107);
    v6 = self;
  }

  v33 = !v94;
  if ((v16 & 1) == 0)
  {
    v34 = !v94;
    if ((v33 & 1) == 0)
    {
      v34 = [v88 isLeaveNowAlarm];
    }

    if (!v34)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  if (v33)
  {
LABEL_36:
    if (v6->_canHaveLeaveNowAlarm && (!v6->_hasLeaveNowAlarm || [v88 isLeaveNowAlarm]))
    {
      v35 = CUIKBundle();
      v36 = [v35 localizedStringForKey:@"Time to Leave" value:&stru_1F4AA8958 table:0];

      v37 = MEMORY[0x1E69DC628];
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 3221225472;
      v102[2] = __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke_4;
      v102[3] = &unk_1E839A4D8;
      objc_copyWeak(v104, &location);
      v104[1] = a3;
      v103 = v92;
      v38 = [v37 actionWithTitle:v36 image:0 identifier:0 handler:v102];
      if ([v88 isLeaveNowAlarm])
      {
        [v38 setState:1];
        v16 = 1;
      }

      if ([(CUIKAlarmsViewModel *)self locationStatusMakesTTLAlarmDisabled])
      {
        v39 = objc_alloc(MEMORY[0x1E696AAB0]);
        v119 = *MEMORY[0x1E69DB650];
        v40 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v120 = v40;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
        v42 = [v39 initWithString:v36 attributes:v41];
        [v38 setAttributedTitle:v42];

        v43 = [(CUIKAlarmsViewModel *)self _errorTitleForDisabledTTLAlarm];
        v118 = v38;
        v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
        CUIKAddInlineMenuItemArrayToArrayWithTitle(v84, v44, v43);
      }

      else
      {
        v117 = v38;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
        CUIKAddInlineMenuItemArrayToArray(v84, v43);
      }

      objc_destroyWeak(v104);
      v6 = self;
    }
  }

LABEL_45:
  v83 = [(CUIKAlarmsViewModel *)v6 presetAlarmsIntervals];
  v91 = [MEMORY[0x1E695DF70] array];
  if (v88)
  {
    v45 = [v88 alarm];
    v46 = [v45 isAbsolute];

    if (v46)
    {
      v47 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v49 = [v88 alarm];
      [v49 relativeOffset];
      v51 = v50;

      v47 = v51;
    }

    v52 = [MEMORY[0x1E696AD98] numberWithInteger:v47];
    v48 = [v83 containsObject:v52];

    v6 = self;
  }

  else
  {
    v47 = 0x7FFFFFFFFFFFFFFFLL;
    v48 = 1;
  }

  if (v16 & v94)
  {
    v16 = 1;
  }

  else if (([v88 isLeaveNowAlarm] & 1) == 0 && ((objc_msgSend(v88, "isDefaultAlarm") | v48) & 1) == 0)
  {
    v53 = [v88 localizedDescriptionAllDay:v90];
    v54 = [MEMORY[0x1E69DC628] actionWithTitle:v53 image:0 identifier:0 handler:&__block_literal_global_12];
    [v54 setState:1];
    [v91 addObject:v54];

    v16 = 1;
    v6 = self;
  }

  if (v16 && v94)
  {
    v16 = 1;
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v55 = v83;
    v56 = [v55 countByEnumeratingWithState:&v98 objects:v116 count:16];
    if (v56)
    {
      v57 = *v99;
      while (2)
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v99 != v57)
          {
            objc_enumerationMutation(v55);
          }

          v59 = [*(*(&v98 + 1) + 8 * i) integerValue];
          v60 = v59;
          if (!v94 || v59 == v47)
          {
            v61 = CUIKStringForRelativeOffset(v90, v89, v59);
            v62 = MEMORY[0x1E69DC628];
            v95[0] = MEMORY[0x1E69E9820];
            v95[1] = 3221225472;
            v95[2] = __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke_6;
            v95[3] = &unk_1E839A520;
            objc_copyWeak(v97, &location);
            v97[1] = a3;
            v97[2] = v60;
            v96 = v92;
            v63 = [v62 actionWithTitle:v61 image:0 identifier:0 handler:v95];
            v64 = v63;
            if (!((v60 != v47) | v16 & 1))
            {
              v16 = 1;
              [v63 setState:1];
            }

            [v91 addObject:v64];

            objc_destroyWeak(v97);
            if (v94 & v16)
            {
              v16 = 1;
              goto LABEL_73;
            }
          }
        }

        v56 = [v55 countByEnumeratingWithState:&v98 objects:v116 count:16];
        if (v56)
        {
          continue;
        }

        break;
      }
    }

LABEL_73:

    v6 = self;
  }

  CUIKAddInlineMenuItemArrayToArray(v84, v91);
  if (((!v94 | v16) & 1) == 0)
  {
    v65 = +[CUIKLogSubsystem alarms];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
    {
      [CUIKAlarmsViewModel _menuForAlarmAtIndex:v88 placeholder:v65 actionHandler:?];
    }

    v66 = [objc_opt_class() _noneAlertTitle];
    v67 = [MEMORY[0x1E69DC628] actionWithTitle:v66 image:0 identifier:0 handler:&__block_literal_global_92];
    [v67 setState:1];
    v115 = v67;
    v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1];
    CUIKAddInlineMenuItemArrayToArray(v84, v68);

    v6 = self;
  }

  v69 = [(CUIKAlarmsViewModel *)v6 calendarItem];
  v70 = [v69 calendar];
  v71 = [v70 isIgnoringEventAlerts];

  if (v71)
  {
    v72 = [(CUIKAlarmsViewModel *)self calendarItem];
    v73 = [v72 calendar];
    v74 = CUIKDisplayedTitleForCalendar(v73);

    v75 = CUIKBundle();
    v76 = [v75 localizedStringForKey:@"Event Alerts" value:&stru_1F4AA8958 table:0];

    v77 = MEMORY[0x1E696AEC0];
    v78 = CUIKBundle();
    v79 = [v78 localizedStringForKey:@"Alerts for this calendar are disabled.\nTo allow this alert to fire value:enable ‘%@’ in the calendar settings for ‘%@’." table:{&stru_1F4AA8958, 0}];
    v80 = [v77 localizedStringWithFormat:v79, v76, v74];
  }

  else
  {
    v80 = &stru_1F4AA8958;
  }

  v11 = [MEMORY[0x1E69DCC60] menuWithTitle:v80 image:0 identifier:0 options:1 children:v84];

LABEL_82:
  objc_destroyWeak(&location);

  return v11;
}

void __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v10 = WeakRetained;
  if (v3 >= [WeakRetained[5] count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v10[5] objectAtIndexedSubscript:*(a1 + 48)];
  }

  v5 = [CUIKUIAlarm alloc];
  v6 = MEMORY[0x1E6966950];
  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
  v8 = [v6 alarmWithAbsoluteDate:v7];
  v9 = [(CUIKUIAlarm *)v5 initWithAlarm:v8];

  (*(*(a1 + 32) + 16))();
}

void __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v6 = WeakRetained;
  if (v3 >= [WeakRetained[5] count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v6[5] objectAtIndexedSubscript:*(a1 + 48)];
  }

  v5 = [[CUIKUIAlarm alloc] initDefaultAlarm];
  (*(*(a1 + 32) + 16))();
}

void __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v5 = WeakRetained;
  if (v3 >= [WeakRetained[5] count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v5[5] objectAtIndexedSubscript:*(a1 + 48)];
  }

  (*(*(a1 + 32) + 16))();
}

void __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v6 = WeakRetained;
  if (v3 >= [WeakRetained[5] count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v6[5] objectAtIndexedSubscript:*(a1 + 48)];
  }

  v5 = [[CUIKUIAlarm alloc] initLeaveNowAlarm];
  (*(*(a1 + 32) + 16))();
}

void __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v8 = WeakRetained;
  if (v3 >= [WeakRetained[5] count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v8[5] objectAtIndexedSubscript:*(a1 + 48)];
  }

  v5 = [CUIKUIAlarm alloc];
  v6 = [MEMORY[0x1E6966950] alarmWithRelativeOffset:*(a1 + 56)];
  v7 = [(CUIKUIAlarm *)v5 initWithAlarm:v6];

  (*(*(a1 + 32) + 16))();
}

+ (id)labelTextForIndex:(unint64_t)a3
{
  v4 = CUIKBundle();
  v5 = v4;
  if (a3)
  {
    v6 = @"Second Alert";
  }

  else
  {
    v6 = @"Alert";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F4AA8958 table:0];

  return v7;
}

+ (id)accessibilityIdentifierForIndex:(unint64_t)a3
{
  if (a3)
  {
    return @"second-alert-cell";
  }

  else
  {
    return @"alert-cell";
  }
}

- (BOOL)isAlarmEffectivelyDisabled:(id)a3
{
  v4 = a3;
  v5 = [(CUIKAlarmsViewModel *)self calendarItem];
  v6 = [v5 calendar];
  v7 = [v6 isIgnoringEventAlerts];

  if (v7)
  {
    v8 = 1;
  }

  else if ([v4 isLeaveNowAlarm])
  {
    v8 = [(CUIKAlarmsViewModel *)self locationStatusMakesTTLAlarmDisabled];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_errorTitleForDisabledTTLAlarm
{
  v2 = [(CUIKAlarmsViewModel *)self locationStatus]- 1;
  if (v2 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E839A540[v2];
    v4 = CUIKBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F4AA8958 table:0];
  }

  return v5;
}

- (void)updatedUIAlarmFromUIAlarm:(uint64_t)a1 toUIAlarm:(NSObject *)a2 atIndex:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[CUIKAlarmsViewModel updatedUIAlarmFromUIAlarm:toUIAlarm:atIndex:completion:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "Error: [%s] - alarm index could not be determined for the alarm to update: %@", &v2, 0x16u);
}

- (void)_menuForAlarmAtIndex:(uint64_t)a1 placeholder:(NSObject *)a2 actionHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_FAULT, "No actions while creating placeholder for alarm %@", &v2, 0xCu);
}

@end