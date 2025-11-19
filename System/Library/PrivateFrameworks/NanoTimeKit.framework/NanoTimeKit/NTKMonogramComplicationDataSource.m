@interface NTKMonogramComplicationDataSource
- (Class)richComplicationDisplayViewClassForDevice:(id)a3;
- (NTKMonogramComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_currentTimelineEntry;
- (id)currentSwitcherTemplate;
- (void)_handleMonogramTextReload;
- (void)_reloadMonogramText;
- (void)dealloc;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)pause;
- (void)resume;
- (void)startListeningForMonogramNotifications;
- (void)stopListeningForMonogramNotifications;
@end

@implementation NTKMonogramComplicationDataSource

- (NTKMonogramComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKMonogramComplicationDataSource;
  v5 = [(CLKCComplicationDataSource *)&v8 initWithComplication:a3 family:a4 forDevice:a5];
  v6 = v5;
  if (v5)
  {
    [(NTKMonogramComplicationDataSource *)v5 startListeningForMonogramNotifications];
  }

  return v6;
}

- (void)resume
{
  v3.receiver = self;
  v3.super_class = NTKMonogramComplicationDataSource;
  [(CLKCComplicationDataSource *)&v3 resume];
  [(NTKMonogramComplicationDataSource *)self startListeningForMonogramNotifications];
}

- (void)pause
{
  v3.receiver = self;
  v3.super_class = NTKMonogramComplicationDataSource;
  [(CLKCComplicationDataSource *)&v3 pause];
  [(NTKMonogramComplicationDataSource *)self stopListeningForMonogramNotifications];
}

- (void)startListeningForMonogramNotifications
{
  if (!self->_listeningForMonogramNotifications)
  {
    self->_listeningForMonogramNotifications = 1;
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel__handleMonogramTextReload name:@"NTKCustomMonogramChangedNotification" object:0];
    [v3 addObserver:self selector:sel__handleMonogramTextReload name:@"NTKFaceDefaultsChangedNotification" object:0];
    [v3 addObserver:self selector:sel__handleMonogramTextReload name:*MEMORY[0x277CBE620] object:0];
    [v3 addObserver:self selector:sel__handleMonogramTextReload name:*MEMORY[0x277CBB690] object:0];
  }

  [(NTKMonogramComplicationDataSource *)self _reloadMonogramText];
}

- (void)stopListeningForMonogramNotifications
{
  self->_listeningForMonogramNotifications = 0;
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"NTKCustomMonogramChangedNotification" object:0];
  [v3 removeObserver:self name:@"NTKFaceDefaultsChangedNotification" object:0];
  [v3 removeObserver:self name:*MEMORY[0x277CBE620] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277CBB690] object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NTKMonogramComplicationDataSource;
  [(NTKMonogramComplicationDataSource *)&v4 dealloc];
}

- (id)currentSwitcherTemplate
{
  if (!self->_monogramText)
  {
    [(NTKMonogramComplicationDataSource *)self _reloadMonogramText];
  }

  v3 = [(NTKMonogramComplicationDataSource *)self _currentTimelineEntry];
  v4 = [v3 complicationTemplate];

  return v4;
}

- (id)_currentTimelineEntry
{
  if (!self->_currentEntry)
  {
    v3 = objc_opt_new();
    currentEntry = self->_currentEntry;
    self->_currentEntry = v3;
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  [(NTKTimelineEntryModel *)self->_currentEntry setEntryDate:v5];

  [(NTKMonogramTimelineEntryModel *)self->_currentEntry setMonogram:self->_monogramText];
  v6 = self->_currentEntry;
  v7 = [(CLKCComplicationDataSource *)self family];

  return [(NTKTimelineEntryModel *)v6 entryForComplicationFamily:v7];
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(NTKMonogramComplicationDataSource *)self _currentTimelineEntry];
  (*(a3 + 2))(v5, v6);
}

- (Class)richComplicationDisplayViewClassForDevice:(id)a3
{
  v3 = [(CLKCComplicationDataSource *)self family];
  if (v3 == 10 || v3 == 9)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleMonogramTextReload
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NTKMonogramComplicationDataSource__handleMonogramTextReload__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_reloadMonogramText
{
  v3 = +[NTKMonogram monogram];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_284110E98;
  }

  v7 = v5;

  if (![(NSString *)self->_monogramText isEqualToString:v7])
  {
    objc_storeStrong(&self->_monogramText, v5);
    v6 = [(CLKCComplicationDataSource *)self delegate];
    [v6 invalidateEntries];
  }
}

@end