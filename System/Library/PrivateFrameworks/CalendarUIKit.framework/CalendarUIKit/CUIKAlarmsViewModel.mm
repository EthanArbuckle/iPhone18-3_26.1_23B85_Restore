@interface CUIKAlarmsViewModel
+ (id)_noneAlertTitle;
+ (id)accessibilityIdentifierForIndex:(unint64_t)index;
+ (id)labelTextForIndex:(unint64_t)index;
+ (void)subscribeToDarwinNotifications;
+ (void)unsubscribeFromDarwinNotifications;
- (BOOL)_hasUIAlarmChangedFromUIAlarm:(id)alarm toUIAlarm:(id)iAlarm;
- (BOOL)isAlarmEffectivelyDisabled:(id)disabled;
- (BOOL)showDefaultAlarm:(id)alarm;
- (CUIKAlarmsViewModel)init;
- (CUIKAlarmsViewModel)initWithCalendarItem:(id)item;
- (NSMutableArray)uiAlarms;
- (id)_errorTitleForDisabledTTLAlarm;
- (id)_menuForAlarmAtIndex:(unint64_t)index placeholder:(BOOL)placeholder actionHandler:(id)handler;
- (id)presetAlarmsIntervals;
- (void)_updateAlarms;
- (void)_updateLeaveNowFlags;
- (void)dealloc;
- (void)reloadTTLLocationAuthorization:(id)authorization;
- (void)updateIfNeeded;
- (void)updatedUIAlarmFromUIAlarm:(id)alarm toUIAlarm:(id)iAlarm atIndex:(unint64_t)index completion:(id)completion;
@end

@implementation CUIKAlarmsViewModel

- (CUIKAlarmsViewModel)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CUIKAlarmsViewModel.m" lineNumber:54 description:@"Error: Must use designated initializer when initializing an CUIKAlarmsViewModel instance. Using init directly is not supported for the CUIKAlarmsViewModel since it guarantees that the CUIKAlarmsViewModel will be initialized with a nil calendarItem."];

  return [(CUIKAlarmsViewModel *)self initWithCalendarItem:0];
}

- (CUIKAlarmsViewModel)initWithCalendarItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = CUIKAlarmsViewModel;
  v5 = [(CUIKAlarmsViewModel *)&v11 init];
  if (v5)
  {
    if (!itemCopy)
    {
      v6 = +[CUIKLogSubsystem alarms];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CUIKAlarmsViewModel initWithCalendarItem:v6];
      }
    }

    [(CUIKAlarmsViewModel *)v5 setCalendarItem:itemCopy];
    array = [MEMORY[0x1E695DF70] array];
    uiAlarms = v5->_uiAlarms;
    v5->_uiAlarms = array;

    +[CUIKAlarmsViewModel subscribeToDarwinNotifications];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_reloadTTLLocationAuthorization_ name:@"CUIKAlarmsViewModelTTLLocationAuthorizationStatusNeedsReloadNotification" object:0];

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

- (void)reloadTTLLocationAuthorization:(id)authorization
{
  locationStatus = self->_locationStatus;
  [(CUIKAlarmsViewModel *)self _updateLeaveNowFlags];
  if (locationStatus != self->_locationStatus)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CUIKAlarmsViewModelTTLLocationStatusChangedNotification" object:self];
  }
}

- (void)updatedUIAlarmFromUIAlarm:(id)alarm toUIAlarm:(id)iAlarm atIndex:(unint64_t)index completion:(id)completion
{
  alarmCopy = alarm;
  iAlarmCopy = iAlarm;
  completionCopy = completion;
  if ([(CUIKAlarmsViewModel *)self _hasUIAlarmChangedFromUIAlarm:alarmCopy toUIAlarm:iAlarmCopy])
  {
    calendarItem = [(CUIKAlarmsViewModel *)self calendarItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = calendarItem;
    }

    else
    {
      v14 = 0;
    }

    uiAlarms = [(CUIKAlarmsViewModel *)self uiAlarms];
    alarms = [calendarItem alarms];
    if ([uiAlarms count] <= index)
    {
      if (!iAlarmCopy)
      {
LABEL_19:
        v21 = 0;
        initLeaveNowAlarm = 0;
        goto LABEL_46;
      }

      if ([iAlarmCopy isLeaveNowAlarm])
      {
        v21 = 1;
        [v14 setTravelAdvisoryBehavior:1];
        initLeaveNowAlarm = [[CUIKUIAlarm alloc] initLeaveNowAlarm];
LABEL_46:
        completionCopy[2](completionCopy, 1, initLeaveNowAlarm, v21);

        goto LABEL_47;
      }

      alarm = [iAlarmCopy alarm];
      isAbsolute = [alarm isAbsolute];

      if (isAbsolute)
      {
        v25 = MEMORY[0x1E6966950];
        alarm2 = [iAlarmCopy alarm];
        defaultAlarms2 = alarm2;
        goto LABEL_22;
      }

      if (![iAlarmCopy isDefaultAlarm])
      {
        v25 = MEMORY[0x1E6966950];
        alarm2 = [iAlarmCopy alarm];
        defaultAlarms2 = alarm2;
LABEL_39:
        [alarm2 relativeOffset];
        anyObject2 = [v25 alarmWithRelativeOffset:?];
        goto LABEL_40;
      }
    }

    else
    {
      if ([alarms count] > index)
      {
        sortedAlarms = [calendarItem sortedAlarms];
        if (alarmCopy)
        {
          alarm3 = [alarmCopy alarm];
          calendarItem2 = [(CUIKAlarmsViewModel *)self calendarItem];
          index = [calendarItem2 indexForAlarm:alarm3];
        }

        if (index == 0x7FFFFFFFFFFFFFFFLL)
        {
          alarm4 = [alarmCopy alarm];
          v20 = +[CUIKLogSubsystem alarms];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [CUIKAlarmsViewModel updatedUIAlarmFromUIAlarm:alarm4 toUIAlarm:v20 atIndex:? completion:?];
          }

          v21 = 0;
          initLeaveNowAlarm = 0;
          goto LABEL_45;
        }

        if (!iAlarmCopy || ([iAlarmCopy isLeaveNowAlarm] & 1) != 0 || objc_msgSend(iAlarmCopy, "isDefaultAlarm"))
        {
          v30 = [sortedAlarms mutableCopy];
          [v30 removeObjectAtIndex:index];
          if ([iAlarmCopy isLeaveNowAlarm])
          {
            [v14 setTravelAdvisoryBehavior:1];
            initLeaveNowAlarm = [[CUIKUIAlarm alloc] initLeaveNowAlarm];
          }

          else if ([iAlarmCopy isDefaultAlarm])
          {
            defaultAlarms = [calendarItem defaultAlarms];
            anyObject = [defaultAlarms anyObject];

            if (anyObject)
            {
              [v30 addObject:anyObject];
            }

            initLeaveNowAlarm = [[CUIKUIAlarm alloc] initDefaultAlarm];
          }

          else
          {
            initLeaveNowAlarm = 0;
          }

          v36 = [v30 copy];
          [calendarItem setAlarms:v36];

          v21 = 0;
          goto LABEL_45;
        }

        v61 = [sortedAlarms objectAtIndexedSubscript:index];
        if ([v61 isDefaultAlarm])
        {
          v60 = [sortedAlarms mutableCopy];
          alarm5 = [iAlarmCopy alarm];
          isAbsolute2 = [alarm5 isAbsolute];

          v39 = MEMORY[0x1E6966950];
          alarm6 = [iAlarmCopy alarm];
          if (isAbsolute2)
          {
            absoluteDate = [alarm6 absoluteDate];
            v42 = v39;
            v43 = absoluteDate;
            v44 = [v42 alarmWithAbsoluteDate:absoluteDate];
          }

          else
          {
            [alarm6 relativeOffset];
            v44 = [v39 alarmWithRelativeOffset:?];
          }

          [v60 replaceObjectAtIndex:index withObject:v44];
          initLeaveNowAlarm = [[CUIKUIAlarm alloc] initWithAlarm:v44];
          v53 = [v60 copy];
          [calendarItem setAlarms:v53];

          v21 = 1;
          v50 = v61;
          goto LABEL_58;
        }

        alarm7 = [iAlarmCopy alarm];
        isAbsolute3 = [alarm7 isAbsolute];

        alarm8 = [iAlarmCopy alarm];
        v48 = alarm8;
        if (isAbsolute3)
        {
          absoluteDate2 = [alarm8 absoluteDate];
          [v61 setAbsoluteDate:absoluteDate2];

          v50 = v61;
          v51 = [CUIKUIAlarm alloc];
          v52 = v61;
        }

        else
        {
          [alarm8 relativeOffset];
          v55 = v54;
          v50 = v61;
          [v61 relativeOffset];
          v57 = v56;

          if (v55 == v57)
          {
            v21 = 0;
            initLeaveNowAlarm = 0;
            goto LABEL_58;
          }

          alarm9 = [iAlarmCopy alarm];
          [alarm9 relativeOffset];
          [v61 setRelativeOffset:?];

          v50 = v61;
          v51 = [CUIKUIAlarm alloc];
          v52 = v61;
        }

        initLeaveNowAlarm = [(CUIKUIAlarm *)v51 initWithAlarm:v52];
        v21 = 1;
LABEL_58:

LABEL_45:
        goto LABEL_46;
      }

      if (!iAlarmCopy)
      {
        [v14 setTravelAdvisoryBehavior:2];
        initLeaveNowAlarm = 0;
LABEL_42:
        v21 = 1;
        goto LABEL_46;
      }

      if ([iAlarmCopy isLeaveNowAlarm])
      {
        goto LABEL_19;
      }

      [v14 setTravelAdvisoryBehavior:2];
      if (![iAlarmCopy isDefaultAlarm])
      {
        alarm10 = [iAlarmCopy alarm];
        isAbsolute4 = [alarm10 isAbsolute];

        v25 = MEMORY[0x1E6966950];
        alarm2 = [iAlarmCopy alarm];
        defaultAlarms2 = alarm2;
        if (!isAbsolute4)
        {
          goto LABEL_39;
        }

LABEL_22:
        absoluteDate3 = [alarm2 absoluteDate];
        v29 = [v25 alarmWithAbsoluteDate:absoluteDate3];

LABEL_41:
        [calendarItem addAlarm:v29];
        initLeaveNowAlarm = [[CUIKUIAlarm alloc] initWithAlarm:v29];

        goto LABEL_42;
      }
    }

    defaultAlarms2 = [calendarItem defaultAlarms];
    anyObject2 = [defaultAlarms2 anyObject];
LABEL_40:
    v29 = anyObject2;
    goto LABEL_41;
  }

  completionCopy[2](completionCopy, 0, 0, 0);
LABEL_47:
}

- (BOOL)_hasUIAlarmChangedFromUIAlarm:(id)alarm toUIAlarm:(id)iAlarm
{
  alarmCopy = alarm;
  iAlarmCopy = iAlarm;
  v7 = iAlarmCopy;
  if (alarmCopy)
  {
    iAlarmCopy = alarmCopy;
    v8 = v7;
  }

  else
  {
    if (!iAlarmCopy)
    {
      LOBYTE(v9) = 0;
      goto LABEL_6;
    }

    v8 = 0;
  }

  v9 = [iAlarmCopy isEqualToUIAlarm:v8] ^ 1;
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
  calendarItem = [(CUIKAlarmsViewModel *)self calendarItem];
  sortedAlarms = [calendarItem sortedAlarms];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [sortedAlarms countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(sortedAlarms);
        }

        uiAlarms = self->_uiAlarms;
        v10 = [[CUIKUIAlarm alloc] initWithAlarm:*(*(&v14 + 1) + 8 * v8)];
        [(NSMutableArray *)uiAlarms addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [sortedAlarms countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([MEMORY[0x1E6966A30] isTravelAdvisorySupported])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = calendarItem;
      if ([v11 eligibleForTravelAdvisories] && objc_msgSend(v11, "travelAdvisoryBehaviorIsEffectivelyEnabled"))
      {
        v12 = self->_uiAlarms;
        initLeaveNowAlarm = [[CUIKUIAlarm alloc] initLeaveNowAlarm];
        [(NSMutableArray *)v12 addObject:initLeaveNowAlarm];
      }
    }
  }
}

- (void)_updateLeaveNowFlags
{
  *&self->_canHaveLeaveNowAlarm = 0;
  self->_locationStatus = 0;
  calendarItem = [(CUIKAlarmsViewModel *)self calendarItem];
  if ([MEMORY[0x1E6966A30] isTravelAdvisorySupported])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = calendarItem;
      eligibleForTravelAdvisories = [v3 eligibleForTravelAdvisories];
      self->_canHaveLeaveNowAlarm = eligibleForTravelAdvisories;
      if (eligibleForTravelAdvisories)
      {
        LOBYTE(eligibleForTravelAdvisories) = [v3 travelAdvisoryBehaviorIsEffectivelyEnabled];
      }

      self->_hasLeaveNowAlarm = eligibleForTravelAdvisories;
    }

    eventStore = [calendarItem eventStore];
    self->_locationStatus = [eventStore timeToLeaveLocationAuthorizationStatus];
  }
}

- (NSMutableArray)uiAlarms
{
  [(CUIKAlarmsViewModel *)self updateIfNeeded];
  v3 = [(NSMutableArray *)self->_uiAlarms copy];

  return v3;
}

- (BOOL)showDefaultAlarm:(id)alarm
{
  v17 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
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
        isDefaultAlarm = [v9 isDefaultAlarm];
        if (v9 != alarmCopy && (isDefaultAlarm & 1) != 0)
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
  calendarItem = [(CUIKAlarmsViewModel *)self calendarItem];
  isAllDay = [calendarItem isAllDay];

  if (isAllDay && !presetAlarmsIntervals_sAllDayIntervals)
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
    v5 = isAllDay;
  }

  if ((v5 & 1) == 0)
  {
    presetAlarmsIntervals_sTimedIntervals = &unk_1F4ABECD8;

    v4 = &unk_1F4ABECD8;
  }

  if (isAllDay)
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

- (id)_menuForAlarmAtIndex:(unint64_t)index placeholder:(BOOL)placeholder actionHandler:(id)handler
{
  placeholderCopy = placeholder;
  v123[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v86 = +[CUIKPreferences sharedPreferences];
  immediateAlarmCreation = [v86 immediateAlarmCreation];
  objc_initWeak(&location, self);
  selfCopy8 = self;
  if ([(NSMutableArray *)self->_uiAlarms count]<= index)
  {
    v88 = 0;
    if (immediateAlarmCreation)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v88 = [(NSMutableArray *)self->_uiAlarms objectAtIndexedSubscript:?];
    if (immediateAlarmCreation)
    {
LABEL_3:
      v7 = MEMORY[0x1E69DC628];
      v111[0] = MEMORY[0x1E69E9820];
      v111[1] = 3221225472;
      v111[2] = __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke;
      v111[3] = &unk_1E839A4D8;
      objc_copyWeak(v113, &location);
      v113[1] = index;
      v112 = handlerCopy;
      v8 = [v7 actionWithTitle:@"Five seconds from now" image:0 identifier:0 handler:v111];
      v9 = MEMORY[0x1E69DCC60];
      v123[0] = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:1];
      v11 = [v9 menuWithTitle:&stru_1F4AA8958 image:0 identifier:0 options:1 children:v10];

      objc_destroyWeak(v113);
      goto LABEL_82;
    }
  }

  calendarItem = [(CUIKAlarmsViewModel *)self calendarItem];
  array = [MEMORY[0x1E695DF70] array];
  isAllDay = [calendarItem isAllDay];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [calendarItem travelTime];
    v89 = v12 > 0.0;
  }

  else
  {
    v89 = 0;
  }

  defaultAlarm = [calendarItem defaultAlarm];
  v82 = defaultAlarm;
  if (defaultAlarm && ([defaultAlarm isAbsolute] & 1) == 0)
  {
    [v82 relativeOffset];
    v14 = v15;
  }

  else
  {
    v14 = 9.22337204e18;
  }

  if (placeholderCopy && ![v88 isDefaultAlarm] || -[CUIKAlarmsViewModel showDefaultAlarm:](self, "showDefaultAlarm:", v88))
  {
    isDefaultAlarm = 0;
  }

  else
  {
    defaultAlarms = [calendarItem defaultAlarms];
    anyObject = [defaultAlarms anyObject];
    v19 = anyObject == 0;

    if (v19)
    {
      isDefaultAlarm = 0;
    }

    else
    {
      v20 = MEMORY[0x1E696AEC0];
      cuik_defaultDesignator = [MEMORY[0x1E6966950] cuik_defaultDesignator];
      v22 = CUIKStringForRelativeOffset(isAllDay, v89, v14);
      v23 = [v20 localizedStringWithValidatedFormat:cuik_defaultDesignator validFormatSpecifiers:@"%@" error:0, v22];

      v24 = MEMORY[0x1E69DC628];
      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke_2;
      v108[3] = &unk_1E839A4D8;
      objc_copyWeak(v110, &location);
      v110[1] = index;
      v109 = handlerCopy;
      v25 = [v24 actionWithTitle:v23 image:0 identifier:0 handler:v108];
      isDefaultAlarm = [v88 isDefaultAlarm];
      if (isDefaultAlarm)
      {
        [v25 setState:1];
      }

      v122 = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
      CUIKAddInlineMenuItemArrayToArray(array, v26);

      objc_destroyWeak(v110);
    }

    selfCopy8 = self;
  }

  if (v88)
  {
    v27 = 1;
  }

  else
  {
    v27 = isDefaultAlarm;
  }

  if (!placeholderCopy || (v27 & 1) == 0)
  {
    _noneAlertTitle = [objc_opt_class() _noneAlertTitle];
    v29 = MEMORY[0x1E69DC628];
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke_3;
    v105[3] = &unk_1E839A4D8;
    objc_copyWeak(v107, &location);
    v107[1] = index;
    v106 = handlerCopy;
    v30 = [v29 actionWithTitle:_noneAlertTitle image:0 identifier:0 handler:v105];
    v31 = v30;
    if (!v88)
    {
      [v30 setState:1];
      isDefaultAlarm = 1;
    }

    v121 = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
    CUIKAddInlineMenuItemArrayToArray(array, v32);

    objc_destroyWeak(v107);
    selfCopy8 = self;
  }

  v33 = !placeholderCopy;
  if ((isDefaultAlarm & 1) == 0)
  {
    isLeaveNowAlarm = !placeholderCopy;
    if ((v33 & 1) == 0)
    {
      isLeaveNowAlarm = [v88 isLeaveNowAlarm];
    }

    if (!isLeaveNowAlarm)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  if (v33)
  {
LABEL_36:
    if (selfCopy8->_canHaveLeaveNowAlarm && (!selfCopy8->_hasLeaveNowAlarm || [v88 isLeaveNowAlarm]))
    {
      v35 = CUIKBundle();
      v36 = [v35 localizedStringForKey:@"Time to Leave" value:&stru_1F4AA8958 table:0];

      v37 = MEMORY[0x1E69DC628];
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 3221225472;
      v102[2] = __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke_4;
      v102[3] = &unk_1E839A4D8;
      objc_copyWeak(v104, &location);
      v104[1] = index;
      v103 = handlerCopy;
      v38 = [v37 actionWithTitle:v36 image:0 identifier:0 handler:v102];
      if ([v88 isLeaveNowAlarm])
      {
        [v38 setState:1];
        isDefaultAlarm = 1;
      }

      if ([(CUIKAlarmsViewModel *)self locationStatusMakesTTLAlarmDisabled])
      {
        v39 = objc_alloc(MEMORY[0x1E696AAB0]);
        v119 = *MEMORY[0x1E69DB650];
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v120 = secondaryLabelColor;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
        v42 = [v39 initWithString:v36 attributes:v41];
        [v38 setAttributedTitle:v42];

        _errorTitleForDisabledTTLAlarm = [(CUIKAlarmsViewModel *)self _errorTitleForDisabledTTLAlarm];
        v118 = v38;
        v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
        CUIKAddInlineMenuItemArrayToArrayWithTitle(array, v44, _errorTitleForDisabledTTLAlarm);
      }

      else
      {
        v117 = v38;
        _errorTitleForDisabledTTLAlarm = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
        CUIKAddInlineMenuItemArrayToArray(array, _errorTitleForDisabledTTLAlarm);
      }

      objc_destroyWeak(v104);
      selfCopy8 = self;
    }
  }

LABEL_45:
  presetAlarmsIntervals = [(CUIKAlarmsViewModel *)selfCopy8 presetAlarmsIntervals];
  array2 = [MEMORY[0x1E695DF70] array];
  if (v88)
  {
    alarm = [v88 alarm];
    isAbsolute = [alarm isAbsolute];

    if (isAbsolute)
    {
      v47 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      alarm2 = [v88 alarm];
      [alarm2 relativeOffset];
      v51 = v50;

      v47 = v51;
    }

    v52 = [MEMORY[0x1E696AD98] numberWithInteger:v47];
    v48 = [presetAlarmsIntervals containsObject:v52];

    selfCopy8 = self;
  }

  else
  {
    v47 = 0x7FFFFFFFFFFFFFFFLL;
    v48 = 1;
  }

  if (isDefaultAlarm & placeholderCopy)
  {
    isDefaultAlarm = 1;
  }

  else if (([v88 isLeaveNowAlarm] & 1) == 0 && ((objc_msgSend(v88, "isDefaultAlarm") | v48) & 1) == 0)
  {
    v53 = [v88 localizedDescriptionAllDay:isAllDay];
    v54 = [MEMORY[0x1E69DC628] actionWithTitle:v53 image:0 identifier:0 handler:&__block_literal_global_12];
    [v54 setState:1];
    [array2 addObject:v54];

    isDefaultAlarm = 1;
    selfCopy8 = self;
  }

  if (isDefaultAlarm && placeholderCopy)
  {
    isDefaultAlarm = 1;
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v55 = presetAlarmsIntervals;
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

          integerValue = [*(*(&v98 + 1) + 8 * i) integerValue];
          v60 = integerValue;
          if (!placeholderCopy || integerValue == v47)
          {
            v61 = CUIKStringForRelativeOffset(isAllDay, v89, integerValue);
            v62 = MEMORY[0x1E69DC628];
            v95[0] = MEMORY[0x1E69E9820];
            v95[1] = 3221225472;
            v95[2] = __70__CUIKAlarmsViewModel__menuForAlarmAtIndex_placeholder_actionHandler___block_invoke_6;
            v95[3] = &unk_1E839A520;
            objc_copyWeak(v97, &location);
            v97[1] = index;
            v97[2] = v60;
            v96 = handlerCopy;
            v63 = [v62 actionWithTitle:v61 image:0 identifier:0 handler:v95];
            v64 = v63;
            if (!((v60 != v47) | isDefaultAlarm & 1))
            {
              isDefaultAlarm = 1;
              [v63 setState:1];
            }

            [array2 addObject:v64];

            objc_destroyWeak(v97);
            if (placeholderCopy & isDefaultAlarm)
            {
              isDefaultAlarm = 1;
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

    selfCopy8 = self;
  }

  CUIKAddInlineMenuItemArrayToArray(array, array2);
  if (((!placeholderCopy | isDefaultAlarm) & 1) == 0)
  {
    v65 = +[CUIKLogSubsystem alarms];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
    {
      [CUIKAlarmsViewModel _menuForAlarmAtIndex:v88 placeholder:v65 actionHandler:?];
    }

    _noneAlertTitle2 = [objc_opt_class() _noneAlertTitle];
    v67 = [MEMORY[0x1E69DC628] actionWithTitle:_noneAlertTitle2 image:0 identifier:0 handler:&__block_literal_global_92];
    [v67 setState:1];
    v115 = v67;
    v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1];
    CUIKAddInlineMenuItemArrayToArray(array, v68);

    selfCopy8 = self;
  }

  calendarItem2 = [(CUIKAlarmsViewModel *)selfCopy8 calendarItem];
  calendar = [calendarItem2 calendar];
  isIgnoringEventAlerts = [calendar isIgnoringEventAlerts];

  if (isIgnoringEventAlerts)
  {
    calendarItem3 = [(CUIKAlarmsViewModel *)self calendarItem];
    calendar2 = [calendarItem3 calendar];
    v74 = CUIKDisplayedTitleForCalendar(calendar2);

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

  v11 = [MEMORY[0x1E69DCC60] menuWithTitle:v80 image:0 identifier:0 options:1 children:array];

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

+ (id)labelTextForIndex:(unint64_t)index
{
  v4 = CUIKBundle();
  v5 = v4;
  if (index)
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

+ (id)accessibilityIdentifierForIndex:(unint64_t)index
{
  if (index)
  {
    return @"second-alert-cell";
  }

  else
  {
    return @"alert-cell";
  }
}

- (BOOL)isAlarmEffectivelyDisabled:(id)disabled
{
  disabledCopy = disabled;
  calendarItem = [(CUIKAlarmsViewModel *)self calendarItem];
  calendar = [calendarItem calendar];
  isIgnoringEventAlerts = [calendar isIgnoringEventAlerts];

  if (isIgnoringEventAlerts)
  {
    locationStatusMakesTTLAlarmDisabled = 1;
  }

  else if ([disabledCopy isLeaveNowAlarm])
  {
    locationStatusMakesTTLAlarmDisabled = [(CUIKAlarmsViewModel *)self locationStatusMakesTTLAlarmDisabled];
  }

  else
  {
    locationStatusMakesTTLAlarmDisabled = 0;
  }

  return locationStatusMakesTTLAlarmDisabled;
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