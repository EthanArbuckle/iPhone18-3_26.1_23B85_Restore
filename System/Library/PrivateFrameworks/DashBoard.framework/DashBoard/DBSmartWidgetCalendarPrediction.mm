@interface DBSmartWidgetCalendarPrediction
+ (NSDate)earliestStartDate;
+ (NSDate)latestStartDate;
+ (double)initialValidInterval;
+ (double)maxValue;
+ (double)minValue;
- (BOOL)allDay;
- (BOOL)hasSecondaryAction;
- (BOOL)isEqualToCalendarPrediction:(id)prediction;
- (BOOL)updateWithPrediction:(id)prediction;
- (BOOL)variousEndDates;
- (DBSmartWidgetCalendarPrediction)initWithEvent:(id)event;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSURL)eventURL;
- (NSURL)virtualConferenceURL;
- (SBIconImageInfo)_iconImageInfo;
- (double)initialValidInterval;
- (double)value;
- (id)_imageWithBadgeforBundleID:(id)d traitCollection:(id)collection;
- (id)_uuidFromString:(id)string;
- (id)defaultValidRanges;
- (id)layerWithTraitCollection:(id)collection;
- (id)managerConfigurationWithAction:(id)action;
- (id)predictedObjectDescription;
- (id)primaryActionBlock;
- (id)secondaryActionBlock;
- (id)subtitle;
- (id)title;
- (int64_t)tieBreakScore;
- (void)_launchCalendar:(id)calendar;
- (void)_launchTelephonyCall:(id)call;
- (void)_launchVirtualConference:(id)conference forBundleID:(id)d;
- (void)addEvent:(id)event;
- (void)setSoonestEvent:(BOOL)event;
- (void)updateRangeIfNeeded:(id)needed;
- (void)updateVirtualConferenceBundleIDIfNeeded;
@end

@implementation DBSmartWidgetCalendarPrediction

+ (NSDate)earliestStartDate
{
  v2 = [objc_opt_class() now];
  v3 = [v2 dateByAddingTimeInterval:-3600.0];

  return v3;
}

+ (NSDate)latestStartDate
{
  v2 = [objc_opt_class() now];
  v3 = [v2 dateByAddingTimeInterval:14400.0];

  return v3;
}

- (DBSmartWidgetCalendarPrediction)initWithEvent:(id)event
{
  v14[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = DBSmartWidgetCalendarPrediction;
  v5 = [(DBSmartWidgetPrediction *)&v13 init];
  if (v5)
  {
    v6 = +[DBCalendarIconImageProvider sharedInstance];
    imageProvider = v5->_imageProvider;
    v5->_imageProvider = v6;

    [(DBCalendarIconImageProvider *)v5->_imageProvider registerObserver:v5];
    v14[0] = eventCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    events = v5->_events;
    v5->_events = v8;

    eventIdentifier = [eventCopy eventIdentifier];
    v11 = [(DBSmartWidgetCalendarPrediction *)v5 _uuidFromString:eventIdentifier];
    [(DBSmartWidgetPrediction *)v5 setUniqueIdentifier:v11];
  }

  return v5;
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  events = [(DBSmartWidgetCalendarPrediction *)self events];
  v6 = [events mutableCopy];

  [(NSArray *)v6 addObject:eventCopy];
  events = self->_events;
  self->_events = v6;
}

- (void)setSoonestEvent:(BOOL)event
{
  if (self->_soonestEvent != event)
  {
    self->_soonestEvent = event;
    [(DBSmartWidgetPrediction *)self invalidateValidIntervals];
  }
}

- (NSDate)startDate
{
  events = [(DBSmartWidgetCalendarPrediction *)self events];
  firstObject = [events firstObject];
  startDate = [firstObject startDate];

  return startDate;
}

- (NSDate)endDate
{
  if ([(DBSmartWidgetCalendarPrediction *)self variousEndDates])
  {
    endDate = 0;
  }

  else
  {
    events = [(DBSmartWidgetCalendarPrediction *)self events];
    firstObject = [events firstObject];
    endDate = [firstObject endDate];
  }

  return endDate;
}

- (BOOL)allDay
{
  events = [(DBSmartWidgetCalendarPrediction *)self events];
  firstObject = [events firstObject];
  isAllDay = [firstObject isAllDay];

  return isAllDay;
}

- (BOOL)variousEndDates
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  events = [(DBSmartWidgetCalendarPrediction *)self events];
  firstObject = [events firstObject];
  endDate = [firstObject endDate];

  events2 = [(DBSmartWidgetCalendarPrediction *)self events];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__DBSmartWidgetCalendarPrediction_variousEndDates__block_invoke;
  v9[3] = &unk_278F031E8;
  v7 = endDate;
  v10 = v7;
  v11 = &v12;
  [events2 enumerateObjectsUsingBlock:v9];

  LOBYTE(events2) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return events2;
}

void __50__DBSmartWidgetCalendarPrediction_variousEndDates__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 endDate];
  v7 = [v6 isEqual:*(a1 + 32)];

  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (NSURL)eventURL
{
  events = [(DBSmartWidgetCalendarPrediction *)self events];
  v4 = [events count];

  if (v4 < 2)
  {
    events2 = [(DBSmartWidgetCalendarPrediction *)self events];
    firstObject = [events2 firstObject];
    externalURI = [firstObject externalURI];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CBEBC0]);
    v6 = MEMORY[0x277CCACA8];
    events2 = [(DBSmartWidgetCalendarPrediction *)self events];
    firstObject = [events2 firstObject];
    startDate = [firstObject startDate];
    [startDate timeIntervalSinceReferenceDate];
    v11 = [v6 stringWithFormat:@"calshow:%.0f", v10];
    externalURI = [v5 initWithString:v11];
  }

  return externalURI;
}

- (NSURL)virtualConferenceURL
{
  events = [(DBSmartWidgetCalendarPrediction *)self events];
  v4 = [events count];

  if (v4 <= 1)
  {
    events2 = [(DBSmartWidgetCalendarPrediction *)self events];
    firstObject = [events2 firstObject];
    virtualConference = [firstObject virtualConference];
    joinMethods = [virtualConference joinMethods];
    firstObject2 = [joinMethods firstObject];
    v11 = [firstObject2 URL];
    v12 = v11;
    if (v11)
    {
      conferenceURLForDisplay = v11;
    }

    else
    {
      events3 = [(DBSmartWidgetCalendarPrediction *)self events];
      firstObject3 = [events3 firstObject];
      conferenceURLForDisplay = [firstObject3 conferenceURLForDisplay];
    }

    absoluteString = [conferenceURLForDisplay absoluteString];
    v17 = [absoluteString length];

    if (v17)
    {
      v5 = conferenceURLForDisplay;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateVirtualConferenceBundleIDIfNeeded
{
  virtualConferenceURL = [(DBSmartWidgetCalendarPrediction *)self virtualConferenceURL];

  if (virtualConferenceURL)
  {
    virtualConferenceURL2 = [(DBSmartWidgetCalendarPrediction *)self virtualConferenceURL];
    db_isPhoneCallURL = [virtualConferenceURL2 db_isPhoneCallURL];

    if (db_isPhoneCallURL)
    {
      v6 = DBMobilePhoneBundleIdentifier;
    }

    else
    {
      virtualConferenceURL3 = [(DBSmartWidgetCalendarPrediction *)self virtualConferenceURL];
      db_isFaceTimeURL = [virtualConferenceURL3 db_isFaceTimeURL];

      if (!db_isFaceTimeURL)
      {
        v9 = MEMORY[0x277CC5A08];
        virtualConferenceURL4 = [(DBSmartWidgetCalendarPrediction *)self virtualConferenceURL];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __74__DBSmartWidgetCalendarPrediction_updateVirtualConferenceBundleIDIfNeeded__block_invoke;
        v11[3] = &unk_278F03210;
        v11[4] = self;
        [v9 applicationRecordForURL:virtualConferenceURL4 completionHandler:v11];

        return;
      }

      if (!_os_feature_enabled_impl())
      {
        return;
      }

      v6 = DBFaceTimeBundleIdentifier;
    }

    objc_storeStrong(&self->_virtualConferenceBundleID, *v6);

    [(DBSmartWidgetPrediction *)self predictionDidUpdate];
  }
}

void __74__DBSmartWidgetCalendarPrediction_updateVirtualConferenceBundleIDIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  v5 = [v4 length];

  if (v5)
  {
    v6 = +[DBApplicationController sharedInstance];
    v7 = [v3 bundleIdentifier];
    v8 = [v6 applicationWithBundleIdentifier:v7];

    v9 = [v8 appPolicy];
    if ([v9 isCarPlaySupported])
    {
      v10 = [v3 bundleIdentifier];
      v12 = *(a1 + 32);
      v11 = (a1 + 32);
      v13 = *(v12 + 128);
      *(v12 + 128) = v10;

      v14 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __74__DBSmartWidgetCalendarPrediction_updateVirtualConferenceBundleIDIfNeeded__block_invoke_cold_2(v11);
      }

      [*v11 predictionDidUpdate];
    }

    else
    {
      v15 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __74__DBSmartWidgetCalendarPrediction_updateVirtualConferenceBundleIDIfNeeded__block_invoke_cold_1(v3);
      }
    }
  }
}

- (BOOL)isEqualToCalendarPrediction:(id)prediction
{
  predictionCopy = prediction;
  isSoonestEvent = [(DBSmartWidgetCalendarPrediction *)self isSoonestEvent];
  if (isSoonestEvent == [predictionCopy isSoonestEvent] && (-[DBSmartWidgetCalendarPrediction startDate](self, "startDate"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(predictionCopy, "startDate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToDate:", v7), v7, v6, v8) && (-[DBSmartWidgetCalendarPrediction endDate](self, "endDate"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(predictionCopy, "endDate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToDate:", v10), v10, v9, v11) && (-[DBSmartWidgetCalendarPrediction title](self, "title"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(predictionCopy, "title"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToString:", v13), v13, v12, v14))
  {
    subtitle = [(DBSmartWidgetCalendarPrediction *)self subtitle];
    subtitle2 = [predictionCopy subtitle];
    v17 = [subtitle isEqualToString:subtitle2];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_uuidFromString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [stringCopy componentsSeparatedByString:@":"];
  lastObject = [v5 lastObject];
  v7 = [v4 initWithUUIDString:lastObject];

  if (!v7)
  {
    v11 = [stringCopy hash];
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:&v11 length:8];
    v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v8, "bytes")}];
    v9 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [DBSmartWidgetCalendarPrediction _uuidFromString:];
    }
  }

  return v7;
}

- (id)title
{
  events = [(DBSmartWidgetCalendarPrediction *)self events];
  v4 = [events count];

  if (v4 == 1)
  {
    events2 = [(DBSmartWidgetCalendarPrediction *)self events];
    firstObject = [events2 firstObject];
    [firstObject title];
  }

  else
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    events2 = [v7 localizedStringForKey:@"SMARTWIDGET_CALENDAR_EVENT_COUNT" value:&stru_285A57218 table:@"CarPlayApp"];

    v8 = MEMORY[0x277CCACA8];
    firstObject = [(DBSmartWidgetCalendarPrediction *)self events];
    [v8 localizedStringWithFormat:events2, objc_msgSend(firstObject, "count")];
  }
  v9 = ;

  return v9;
}

- (id)subtitle
{
  if ([(DBSmartWidgetCalendarPrediction *)self allDay])
  {
    startDate2 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v4 = [startDate2 localizedStringForKey:@"SMARTWIDGET_CALENDAR_ALLDAY" value:&stru_285A57218 table:@"CarPlayApp"];
  }

  else if ([(DBSmartWidgetCalendarPrediction *)self variousEndDates])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    startDate2 = [v5 localizedStringForKey:@"SMARTWIDGET_CALENDAR_EVENTS_STARTING" value:&stru_285A57218 table:@"CarPlayApp"];

    v6 = MEMORY[0x277CCACA8];
    startDate = [(DBSmartWidgetCalendarPrediction *)self startDate];
    v8 = [DBDateFormatter formattedTime:startDate];
    v4 = [v6 stringWithFormat:startDate2, v8];
  }

  else
  {
    startDate2 = [(DBSmartWidgetCalendarPrediction *)self startDate];
    endDate = [(DBSmartWidgetCalendarPrediction *)self endDate];
    v4 = [DBDateFormatter formattedRangeStart:startDate2 end:endDate];
  }

  return v4;
}

- (BOOL)hasSecondaryAction
{
  virtualConferenceBundleID = [(DBSmartWidgetCalendarPrediction *)self virtualConferenceBundleID];
  if (virtualConferenceBundleID)
  {
    virtualConferenceURL = [(DBSmartWidgetCalendarPrediction *)self virtualConferenceURL];
    v5 = virtualConferenceURL != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)managerConfigurationWithAction:(id)action
{
  actionCopy = action;
  v5 = [DBSmartStackManagerConfiguration alloc];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
  v7 = [v6 localizedStringForKey:@"SMARTSTACK_ACTIONSHEET_CALENDAR" value:&stru_285A57218 table:@"CarPlayApp"];
  title = [(DBSmartWidgetCalendarPrediction *)self title];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
  v10 = [v9 localizedStringForKey:@"SMARTSTACK_ACTIONSHEET_CLEAR" value:&stru_285A57218 table:@"CarPlayApp"];
  v11 = [(DBSmartStackManagerConfiguration *)v5 initWithAlertTitle:v7 alertSubtitle:title actionTitle:v10 action:actionCopy];

  return v11;
}

- (id)primaryActionBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__DBSmartWidgetCalendarPrediction_primaryActionBlock__block_invoke;
  v4[3] = &unk_278F02300;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __53__DBSmartWidgetCalendarPrediction_primaryActionBlock__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained eventURL];
  [WeakRetained _launchCalendar:v1];
}

- (id)secondaryActionBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__DBSmartWidgetCalendarPrediction_secondaryActionBlock__block_invoke;
  v4[3] = &unk_278F02300;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __55__DBSmartWidgetCalendarPrediction_secondaryActionBlock__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained virtualConferenceURL];

  if (!v2)
  {
    v6 = [WeakRetained eventURL];

    if (v6)
    {
      v5 = [WeakRetained eventURL];
      [WeakRetained _launchCalendar:v5];
    }

    else
    {
      v5 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __55__DBSmartWidgetCalendarPrediction_secondaryActionBlock__block_invoke_cold_1(v5, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    goto LABEL_9;
  }

  v3 = [WeakRetained virtualConferenceURL];
  v4 = [v3 db_isPhoneCallURL];

  if (v4)
  {
    v5 = [WeakRetained virtualConferenceURL];
    [WeakRetained _launchTelephonyCall:v5];
LABEL_9:

    goto LABEL_10;
  }

  v7 = MEMORY[0x277CC5A08];
  v8 = [WeakRetained virtualConferenceURL];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__DBSmartWidgetCalendarPrediction_secondaryActionBlock__block_invoke_2;
  v16[3] = &unk_278F03210;
  v16[4] = WeakRetained;
  [v7 applicationRecordForURL:v8 completionHandler:v16];

LABEL_10:
}

void __55__DBSmartWidgetCalendarPrediction_secondaryActionBlock__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  v5 = DBLogForCategory(9uLL);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __55__DBSmartWidgetCalendarPrediction_secondaryActionBlock__block_invoke_2_cold_1(v4, a1);
    }

    v7 = +[DBApplicationController sharedInstance];
    v8 = [v7 applicationWithBundleIdentifier:v4];

    v9 = [v8 appPolicy];
    if ([v4 isEqualToString:@"com.apple.facetime"])
    {
      v10 = _os_feature_enabled_impl();
      v11 = DBLogForCategory(9uLL);
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v39 = 0;
          _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_INFO, "FaceTime link detected.", v39, 2u);
        }

        v13 = MEMORY[0x277D6EE90];
        v14 = [*(a1 + 32) virtualConferenceURL];
        v15 = [v13 conversationLinkForURL:v14];

        v16 = objc_alloc(MEMORY[0x277D6EEF0]);
        v17 = [MEMORY[0x277CBEB98] set];
        v18 = [v16 initWithConversationLink:v15 otherInvitedHandles:v17 sendLetMeInRequest:1];

        if (v18)
        {
          [v18 setWantsStagingArea:0];
          [v18 setVideoEnabled:0];
          v19 = [MEMORY[0x277D6EDF8] sharedInstance];
          [v19 launchAppForJoinRequest:v18];
        }

        else
        {
          v37 = DBLogForCategory(9uLL);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            __55__DBSmartWidgetCalendarPrediction_secondaryActionBlock__block_invoke_2_cold_4();
          }

          v38 = *(a1 + 32);
          v19 = [v38 eventURL];
          [v38 _launchCalendar:v19];
        }

        goto LABEL_24;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __55__DBSmartWidgetCalendarPrediction_secondaryActionBlock__block_invoke_2_cold_3(v12, v29, v30, v31, v32, v33, v34, v35);
      }
    }

    else
    {
      if ([v9 isCarPlaySupported])
      {
        v28 = *(a1 + 32);
        v15 = [v28 virtualConferenceURL];
        [v28 _launchVirtualConference:v15 forBundleID:v4];
LABEL_24:

        goto LABEL_25;
      }

      v12 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __74__DBSmartWidgetCalendarPrediction_updateVirtualConferenceBundleIDIfNeeded__block_invoke_cold_1(v3);
      }
    }

    v36 = *(a1 + 32);
    v15 = [v36 eventURL];
    [v36 _launchCalendar:v15];
    goto LABEL_24;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __55__DBSmartWidgetCalendarPrediction_secondaryActionBlock__block_invoke_2_cold_5(v6, v20, v21, v22, v23, v24, v25, v26);
  }

  v27 = *(a1 + 32);
  v8 = [v27 eventURL];
  [v27 _launchCalendar:v8];
LABEL_25:
}

- (void)_launchCalendar:(id)calendar
{
  calendarCopy = calendar;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetCalendarPrediction _launchCalendar:calendarCopy];
  }

  v6 = +[DBApplicationController sharedInstance];
  calendarApplication = [v6 calendarApplication];

  v8 = objc_alloc_init(DBActivationSettings);
  [(DBActivationSettings *)v8 setUrl:calendarCopy];
  [(DBActivationSettings *)v8 setLaunchSource:5];
  v9 = [DBApplicationLaunchInfo launchInfoForApplication:calendarApplication withActivationSettings:v8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__DBSmartWidgetCalendarPrediction__launchCalendar___block_invoke;
  v11[3] = &unk_278F014B8;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __51__DBSmartWidgetCalendarPrediction__launchCalendar___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [DBEvent eventWithType:4 context:*(a1 + 40)];
  [v3 handleEvent:v2];
}

- (void)_launchVirtualConference:(id)conference forBundleID:(id)d
{
  conferenceCopy = conference;
  dCopy = d;
  v8 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetCalendarPrediction _launchVirtualConference:dCopy forBundleID:conferenceCopy];
  }

  v9 = +[DBApplicationController sharedInstance];
  v10 = [v9 applicationWithBundleIdentifier:dCopy];

  v11 = objc_alloc_init(DBActivationSettings);
  [(DBActivationSettings *)v11 setUrl:conferenceCopy];
  [(DBActivationSettings *)v11 setLaunchSource:5];
  v12 = [DBApplicationLaunchInfo launchInfoForApplication:v10 withActivationSettings:v11];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__DBSmartWidgetCalendarPrediction__launchVirtualConference_forBundleID___block_invoke;
  v14[3] = &unk_278F014B8;
  v14[4] = self;
  v15 = v12;
  v13 = v12;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __72__DBSmartWidgetCalendarPrediction__launchVirtualConference_forBundleID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [DBEvent eventWithType:4 context:*(a1 + 40)];
  [v3 handleEvent:v2];
}

- (void)_launchTelephonyCall:(id)call
{
  callCopy = call;
  v5 = [objc_alloc(MEMORY[0x277D6EED0]) initWithURL:callCopy];
  [v5 setOriginatingUIType:64];
  [v5 setShouldSuppressInCallUI:1];
  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(DBSmartWidgetCalendarPrediction *)callCopy _launchTelephonyCall:v5];
  }

  v7 = [v5 URL];
  [(DBSmartWidgetCalendarPrediction *)self _launchVirtualConference:v7 forBundleID:@"com.apple.InCallService"];
}

- (id)_imageWithBadgeforBundleID:(id)d traitCollection:(id)collection
{
  v6 = MEMORY[0x277D759A0];
  collectionCopy = collection;
  dCopy = d;
  _carScreen = [v6 _carScreen];
  [_carScreen scale];
  v11 = v10;

  _carScreen2 = [MEMORY[0x277D759A0] _carScreen];
  [_carScreen2 scale];
  v14 = v13;

  imageProvider = [(DBSmartWidgetCalendarPrediction *)self imageProvider];
  v16 = [imageProvider iconImageWithInfo:collectionCopy traitCollection:1 options:{60.0, 60.0, v11, 15.6}];

  v17 = SBHGetApplicationIconImageWithTraitCollection();

  v18 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{65.0, 65.0}];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__DBSmartWidgetCalendarPrediction__imageWithBadgeforBundleID_traitCollection___block_invoke;
  v23[3] = &unk_278F03238;
  v26 = vdupq_n_s64(0x404E000000000000uLL);
  v27 = v11;
  v24 = v17;
  v25 = v16;
  v28 = xmmword_24839BDB0;
  v29 = 0x4039000000000000;
  v30 = v14;
  v31 = 0x401A000000000000;
  v19 = v16;
  v20 = v17;
  v21 = [v18 imageWithActions:v23];

  return v21;
}

uint64_t __78__DBSmartWidgetCalendarPrediction__imageWithBadgeforBundleID_traitCollection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) drawInRect:{0.0, 0.0, *(a1 + 48), *(a1 + 56)}];
  v2 = *(a1 + 48) - *(a1 + 80) * 9.0 / 10.0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56) - *(a1 + 88) * 9.0 / 10.0;

  return [v3 drawInRect:{v2, v4}];
}

- (id)layerWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  imageProvider = [(DBSmartWidgetCalendarPrediction *)self imageProvider];
  [(DBSmartWidgetCalendarPrediction *)self _iconImageInfo];
  v6 = [imageProvider iconLayerWithInfo:collectionCopy traitCollection:1 options:?];

  return v6;
}

- (id)predictedObjectDescription
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  events = [(DBSmartWidgetCalendarPrediction *)self events];
  v5 = [events countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(events);
        }

        db_ShortDescription = [*(*(&v15 + 1) + 8 * i) db_ShortDescription];
        [v3 addObject:db_ShortDescription];
      }

      v6 = [events countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x277CCACA8];
  if ([(DBSmartWidgetCalendarPrediction *)self isSoonestEvent])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v10 stringWithFormat:@"isSoonestEvent=%@ (%@)", v11, v12];

  return v13;
}

- (BOOL)updateWithPrediction:(id)prediction
{
  predictionCopy = prediction;
  v11.receiver = self;
  v11.super_class = DBSmartWidgetCalendarPrediction;
  [(DBSmartWidgetPrediction *)&v11 updateWithPrediction:predictionCopy];
  objc_opt_class();
  v5 = predictionCopy;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(DBSmartWidgetCalendarPrediction *)self isEqualToCalendarPrediction:v6];
  if (!v7)
  {
    [(DBSmartWidgetPrediction *)self invalidateValidIntervals];
  }

  events = [v6 events];
  events = self->_events;
  self->_events = events;

  -[DBSmartWidgetCalendarPrediction setSoonestEvent:](self, "setSoonestEvent:", [v6 isSoonestEvent]);
  [(DBSmartWidgetPrediction *)self predictionDidUpdate];

  return !v7;
}

- (double)value
{
  events = [(DBSmartWidgetCalendarPrediction *)self events];
  firstObject = [events firstObject];
  startDate = [firstObject startDate];
  [startDate timeIntervalSinceReferenceDate];
  v7 = v6;
  earliestStartDate = [objc_opt_class() earliestStartDate];
  [earliestStartDate timeIntervalSinceReferenceDate];
  v10 = v9;

  if (v7 >= v10)
  {
    events2 = [(DBSmartWidgetCalendarPrediction *)self events];
    firstObject2 = [events2 firstObject];
    startDate2 = [firstObject2 startDate];
    [startDate2 timeIntervalSinceReferenceDate];
    v13 = v16;
  }

  else
  {
    events2 = [objc_opt_class() earliestStartDate];
    [events2 timeIntervalSinceReferenceDate];
    v13 = v12;
  }

  return v13;
}

- (int64_t)tieBreakScore
{
  latestStartDate = [objc_opt_class() latestStartDate];
  [latestStartDate timeIntervalSinceReferenceDate];
  v5 = v4;
  events = [(DBSmartWidgetCalendarPrediction *)self events];
  firstObject = [events firstObject];
  startDate = [firstObject startDate];
  [startDate timeIntervalSinceReferenceDate];
  v10 = (v5 - v9);

  return v10;
}

+ (double)maxValue
{
  earliestStartDate = [objc_opt_class() earliestStartDate];
  [earliestStartDate timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

+ (double)minValue
{
  latestStartDate = [objc_opt_class() latestStartDate];
  [latestStartDate timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

+ (double)initialValidInterval
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"SmartEngineCalendar_InitialValidInterval", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat);
  v3 = 480;
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppIntegerValue;
  }

  v4 = v3;
  if (v3 <= 0)
  {
    v5 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(DBSmartWidgetCalendarPrediction *)v5 initialValidInterval:v6];
    }

    return 30.0;
  }

  return v4;
}

- (double)initialValidInterval
{
  v2 = objc_opt_class();

  [v2 initialValidInterval];
  return result;
}

- (id)defaultValidRanges
{
  v34[1] = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"SmartEngineCalendar_BeforeStartDateValidInterval", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat);
  v4 = -300;
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppIntegerValue;
  }

  v5 = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(DBSmartWidgetCalendarPrediction *)v6 defaultValidRanges:v7];
    }

    v5 = -15.0;
  }

  keyExistsAndHasValidFormat = 0;
  v14 = CFPreferencesGetAppIntegerValue(@"SmartEngineCalendar_AfterStartDateValidInterval", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat);
  v15 = 180;
  if (keyExistsAndHasValidFormat)
  {
    v15 = v14;
  }

  v16 = v15;
  if (v15 <= 0)
  {
    v17 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(DBSmartWidgetCalendarPrediction *)v17 initialValidInterval:v18];
    }

    v16 = 15.0;
  }

  v25 = [DBDateRange alloc];
  startDate = [(DBSmartWidgetCalendarPrediction *)self startDate];
  v27 = [startDate dateByAddingTimeInterval:v5];
  startDate2 = [(DBSmartWidgetCalendarPrediction *)self startDate];
  v29 = [startDate2 dateByAddingTimeInterval:v16];
  v30 = [(DBDateRange *)v25 initWithStart:v27 end:v29];
  v34[0] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];

  return v31;
}

- (void)updateRangeIfNeeded:(id)needed
{
  v24 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  events = [(DBSmartWidgetCalendarPrediction *)self events];
  v6 = [events countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(events);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [neededCopy end];
        [v11 timeIntervalSinceReferenceDate];
        v13 = v12;
        endDate = [v10 endDate];
        [endDate timeIntervalSinceReferenceDate];
        v16 = v15;

        if (v13 >= v16)
        {
          endDate2 = [v10 endDate];
          v18 = [endDate2 dateByAddingTimeInterval:60.0];
          [neededCopy setEnd:v18];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [events countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (SBIconImageInfo)_iconImageInfo
{
  _carScreen = [MEMORY[0x277D759A0] _carScreen];
  [_carScreen scale];

  return result;
}

void __74__DBSmartWidgetCalendarPrediction_updateVirtualConferenceBundleIDIfNeeded__block_invoke_cold_1(void *a1)
{
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __74__DBSmartWidgetCalendarPrediction_updateVirtualConferenceBundleIDIfNeeded__block_invoke_cold_2(id *a1)
{
  v1 = [*a1 virtualConferenceBundleID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_uuidFromString:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_248146000, v0, v1, "UUID failed: input=%{public}@ generated=%{public}@");
}

void __55__DBSmartWidgetCalendarPrediction_secondaryActionBlock__block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 32) virtualConferenceURL];
  v8 = [v2 absoluteString];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __55__DBSmartWidgetCalendarPrediction_secondaryActionBlock__block_invoke_2_cold_4()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_248146000, v0, OS_LOG_TYPE_ERROR, "Nil join request for facetime call from conversation link provided: %@.", v1, 0xCu);
}

- (void)_launchCalendar:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 absoluteString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_launchVirtualConference:(uint64_t)a1 forBundleID:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 absoluteString];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_launchTelephonyCall:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [a1 absoluteString];
  v4 = [a2 URL];
  v5 = [v4 absoluteString];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

@end