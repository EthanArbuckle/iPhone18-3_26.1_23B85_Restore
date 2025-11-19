@interface NTKPeopleComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
- (NTKPeopleComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_loadTimelineEntry;
- (id)currentSwitcherTemplate;
- (id)lockedTemplate;
- (void)_didReceiveContactsCachceChangedNotification;
- (void)_invalidateIfNeeded;
- (void)_loadTimelineEntry;
- (void)_queue_reloadTimelineEntry;
- (void)_setupNotifications;
- (void)_tearDownNotifications;
- (void)dealloc;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5;
- (void)resume;
@end

@implementation NTKPeopleComplicationDataSource

- (NTKPeopleComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v9 = a3;
  v21.receiver = self;
  v21.super_class = NTKPeopleComplicationDataSource;
  v10 = [(CLKCComplicationDataSource *)&v21 initWithComplication:v9 family:a4 forDevice:a5];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v12 = dispatch_queue_create("com.apple.NanoTimeKit.NTKPeopleComplicationDataSource", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    objc_storeStrong(&v10->_complication, a3);
    if (NTKIsDaemonOrFaceSnapshotService())
    {
      v14 = [(NTKPeopleComplicationDataSource *)v10 _loadTimelineEntry];
      switcherEntry = v10->_switcherEntry;
      v10->_switcherEntry = v14;
    }

    else
    {
      v16 = [NTKPeopleComplicationEntry alloc];
      switcherEntry = [v9 fullName];
      v17 = [v9 abbreviation];
      v18 = [(NTKPeopleComplicationEntry *)v16 initWithFullName:switcherEntry abbreviation:v17 profileImage:0];
      v19 = v10->_switcherEntry;
      v10->_switcherEntry = v18;
    }

    v10->_isPaused = 0;
    v10->_needsInvalidation = 1;
    [(NTKPeopleComplicationDataSource *)v10 _setupNotifications];
  }

  return v10;
}

- (void)dealloc
{
  [(NTKPeopleComplicationDataSource *)self _tearDownNotifications];
  v3.receiver = self;
  v3.super_class = NTKPeopleComplicationDataSource;
  [(NTKPeopleComplicationDataSource *)&v3 dealloc];
}

- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5
{
  v9 = a5;
  v6 = [(NTKPeopleComplication *)self->_complication storeBackedContactID];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"contact://show?id=", v6];
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  v9[2](v9, v8);
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  timelineEntry = self->_timelineEntry;
  if (timelineEntry)
  {
    v6 = [(NTKTimelineEntryModel *)timelineEntry entryForComplicationFamily:[(CLKCComplicationDataSource *)self family]];
    v4[2](v4, v6);
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__NTKPeopleComplicationDataSource_getCurrentTimelineEntryWithHandler___block_invoke;
    block[3] = &unk_27877DB10;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (id)lockedTemplate
{
  v11 = *MEMORY[0x277D85DE8];
  if (NTKIsDaemonOrFaceSnapshotService())
  {
    v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(NTKPeopleComplication *)self->_complication contactID];
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "People complication: asked for lockedEntry in daemon for id: %@", &v9, 0xCu);
    }
  }

  v5 = +[NTKPeopleComplicationEntry lockedEntry];
  v6 = [v5 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];
  v7 = [v6 complicationTemplate];

  return v7;
}

- (id)currentSwitcherTemplate
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  timelineEntry = self->_timelineEntry;
  if (!timelineEntry)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__NTKPeopleComplicationDataSource_currentSwitcherTemplate__block_invoke;
    block[3] = &unk_27877DB10;
    block[4] = self;
    dispatch_async(queue, block);
    timelineEntry = self->_switcherEntry;
  }

  v5 = [(NTKTimelineEntryModel *)timelineEntry entryForComplicationFamily:[(CLKCComplicationDataSource *)self family]];
  v6 = [v5 complicationTemplate];

  return v6;
}

- (void)resume
{
  self->_isPaused = 0;
  v3 = +[NTKPeopleComplicationContactsCache sharedCache];
  [v3 setupNotificationsIfNecessary];

  [(NTKPeopleComplicationDataSource *)self _invalidateIfNeeded];
}

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  LOBYTE(v4) = 1;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 8 && *MEMORY[0x277CBB668] != a3)
  {
    v4 = 0x1495u >> a3;
    if (a3 > 0xC)
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

- (void)_invalidateIfNeeded
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_needsInvalidation)
  {
    v3 = [(CLKCComplicationDataSource *)self delegate];
    [v3 invalidateEntries];

    v4 = [(CLKCComplicationDataSource *)self delegate];
    [v4 invalidateSwitcherTemplate];

    self->_needsInvalidation = 0;
  }
}

- (void)_queue_reloadTimelineEntry
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NTKPeopleComplicationDataSource *)self _loadTimelineEntry];
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __61__NTKPeopleComplicationDataSource__queue_reloadTimelineEntry__block_invoke;
    v5[3] = &unk_27877E438;
    v5[4] = self;
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

uint64_t __61__NTKPeopleComplicationDataSource__queue_reloadTimelineEntry__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
  *(*(a1 + 32) + 57) = 1;
  v2 = *(a1 + 32);

  return [v2 _invalidateIfNeeded];
}

- (id)_loadTimelineEntry
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = +[NTKPeopleComplicationContactsCache sharedCache];
  v4 = [(NTKPeopleComplication *)self->_complication storeBackedContactID];
  v5 = [v3 contactForId:v4];
  if (v5)
  {
    v6 = [v3 fullNameForContact:v5];
    v7 = [v3 abbreviatedNameForContact:v5];
    if (v6)
    {
      if ([v5 isKeyAvailable:*MEMORY[0x277CBD158]] && (objc_msgSend(v5, "thumbnailImageData"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
      {
        v9 = objc_alloc(MEMORY[0x277D755B8]);
        v10 = [v5 thumbnailImageData];
        v11 = [v9 initWithData:v10];

        v12 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = @"No";
          if (!v11)
          {
            v13 = @"Yes";
          }

          v18 = 138412546;
          v19 = v4;
          v20 = 2112;
          v21 = v13;
          _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "People complication: is _roundedProfileImageFromImage for id: %@ nil? %@", &v18, 0x16u);
        }
      }

      else
      {
        v12 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(NTKPeopleComplicationDataSource *)v4 _loadTimelineEntry];
        }

        v11 = 0;
      }

      v15 = [NTKPeopleComplicationEntry alloc];
      if (v7)
      {
        v16 = v7;
      }

      else
      {
        v16 = &stru_284110E98;
      }

      v14 = [(NTKPeopleComplicationEntry *)v15 initWithFullName:v6 abbreviation:v16 profileImage:v11];
    }

    else
    {
      v11 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(NTKPeopleComplicationDataSource *)v11 _loadTimelineEntry];
      }

      v14 = 0;
    }
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NTKPeopleComplicationDataSource *)&self->_complication _loadTimelineEntry];
    }

    v14 = 0;
  }

  return v14;
}

- (void)_setupNotifications
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "%@ _setupNotifications,addObserver", &v7, 0xCu);
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__didReceiveContactsCachceChangedNotification name:@"NTKPeopleComplicationContactsCacheDidChangeNotification" object:0];
}

- (void)_tearDownNotifications
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "%@ tearDownNotification,removeObserver", &v7, 0xCu);
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];
}

- (void)_didReceiveContactsCachceChangedNotification
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "%@ _didReceiveContactsCachceChangedNotification", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__NTKPeopleComplicationDataSource__didReceiveContactsCachceChangedNotification__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_loadTimelineEntry
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*a1 fullName];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "People Complication: Failed to load contact [%@] with id: %@", &v6, 0x16u);
}

@end