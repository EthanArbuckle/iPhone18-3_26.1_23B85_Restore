@interface NTKCGreenfieldPlaceholderComplicationDataSource
- (Class)richComplicationDisplayViewClassForDevice:(id)a3;
- (NTKCGreenfieldPlaceholderComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_currentTimelineEntry;
- (id)currentSwitcherTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)pause;
- (void)resume;
@end

@implementation NTKCGreenfieldPlaceholderComplicationDataSource

- (NTKCGreenfieldPlaceholderComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17.receiver = self;
    v17.super_class = NTKCGreenfieldPlaceholderComplicationDataSource;
    v11 = [(CLKCComplicationDataSource *)&v17 initWithComplication:v9 family:a4 forDevice:v10];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_placeholderComplication, a3);
      v13 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "NTKCGreenfieldPlaceholderComplicationDataSource: Created for complication: %@", buf, 0xCu);
      }
    }

    self = v12;
    v14 = self;
  }

  else
  {
    v15 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [NTKCGreenfieldPlaceholderComplicationDataSource initWithComplication:v9 family:v15 forDevice:?];
    }

    v14 = 0;
  }

  return v14;
}

- (void)pause
{
  v2.receiver = self;
  v2.super_class = NTKCGreenfieldPlaceholderComplicationDataSource;
  [(CLKCComplicationDataSource *)&v2 pause];
}

- (void)resume
{
  v2.receiver = self;
  v2.super_class = NTKCGreenfieldPlaceholderComplicationDataSource;
  [(CLKCComplicationDataSource *)&v2 resume];
}

- (Class)richComplicationDisplayViewClassForDevice:(id)a3
{
  v4 = a3;
  v5 = [(CLKCComplicationDataSource *)self complication];
  if ([v5 complicationType] == 48)
  {
    goto LABEL_4;
  }

  v6 = [(CLKCComplicationDataSource *)self complication];
  if ([v6 complicationType] == 55)
  {

    goto LABEL_4;
  }

  v9 = [(CLKCComplicationDataSource *)self complication];
  v10 = [v9 complicationType];

  if (v10 != 31)
  {
    v11 = [(CLKCComplicationDataSource *)self complication];
    v12 = [NTKLocalTimelineComplicationController complicationDataSourceClassForComplication:v11 family:[(CLKCComplicationDataSource *)self family] device:v4];

    v13 = [v12 alloc];
    v14 = [(CLKCComplicationDataSource *)self complication];
    v15 = [(CLKCComplicationDataSource *)self family];
    v16 = [(CLKCComplicationDataSource *)self context];
    v5 = [v13 initWithComplication:v14 family:v15 forDevice:v4 context:v16];

    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 richComplicationDisplayViewClassForDevice:v4];
      goto LABEL_5;
    }

LABEL_4:
    v7 = 0;
LABEL_5:

    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)currentSwitcherTemplate
{
  v2 = [(NTKCGreenfieldPlaceholderComplicationDataSource *)self _currentTimelineEntry];
  v3 = [v2 complicationTemplate];

  return v3;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(NTKCGreenfieldPlaceholderComplicationDataSource *)self _currentTimelineEntry];
  (*(a3 + 2))(v5, v6);
}

- (id)_currentTimelineEntry
{
  cachedTimelineEntry = self->_cachedTimelineEntry;
  if (cachedTimelineEntry)
  {
    v3 = cachedTimelineEntry;
  }

  else
  {
    v5 = [(NTKGreenfieldPlaceholderComplication *)self->_placeholderComplication appStoreItemId];

    if (v5)
    {
      v6 = [(NTKGreenfieldPlaceholderComplication *)self->_placeholderComplication appName];
      LODWORD(v7) = 1.0;
      v8 = [NTKGreenfieldPlaceholderTimelineEntryModel entryModelWithAppIcon:0 appName:v6 installationProgress:v7];
    }

    else
    {
      v8 = +[NTKGreenfieldPlaceholderTimelineEntryModel entryModelWithNullState];
    }

    v9 = [v8 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];
    v10 = self->_cachedTimelineEntry;
    self->_cachedTimelineEntry = v9;

    v3 = self->_cachedTimelineEntry;
  }

  return v3;
}

- (void)initWithComplication:(uint64_t)a1 family:(NSObject *)a2 forDevice:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "NTKCGreenfieldPlaceholderComplicationDataSource: invalid complication type: %@", &v2, 0xCu);
}

@end