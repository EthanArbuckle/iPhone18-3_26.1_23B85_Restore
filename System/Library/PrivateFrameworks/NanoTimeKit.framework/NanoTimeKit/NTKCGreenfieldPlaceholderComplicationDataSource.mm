@interface NTKCGreenfieldPlaceholderComplicationDataSource
- (Class)richComplicationDisplayViewClassForDevice:(id)device;
- (NTKCGreenfieldPlaceholderComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_currentTimelineEntry;
- (id)currentSwitcherTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)pause;
- (void)resume;
@end

@implementation NTKCGreenfieldPlaceholderComplicationDataSource

- (NTKCGreenfieldPlaceholderComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v20 = *MEMORY[0x277D85DE8];
  complicationCopy = complication;
  deviceCopy = device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17.receiver = self;
    v17.super_class = NTKCGreenfieldPlaceholderComplicationDataSource;
    v11 = [(CLKCComplicationDataSource *)&v17 initWithComplication:complicationCopy family:family forDevice:deviceCopy];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_placeholderComplication, complication);
      v13 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = complicationCopy;
        _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "NTKCGreenfieldPlaceholderComplicationDataSource: Created for complication: %@", buf, 0xCu);
      }
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    v15 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [NTKCGreenfieldPlaceholderComplicationDataSource initWithComplication:complicationCopy family:v15 forDevice:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
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

- (Class)richComplicationDisplayViewClassForDevice:(id)device
{
  deviceCopy = device;
  complication = [(CLKCComplicationDataSource *)self complication];
  if ([complication complicationType] == 48)
  {
    goto LABEL_4;
  }

  complication2 = [(CLKCComplicationDataSource *)self complication];
  if ([complication2 complicationType] == 55)
  {

    goto LABEL_4;
  }

  complication3 = [(CLKCComplicationDataSource *)self complication];
  complicationType = [complication3 complicationType];

  if (complicationType != 31)
  {
    complication4 = [(CLKCComplicationDataSource *)self complication];
    v12 = [NTKLocalTimelineComplicationController complicationDataSourceClassForComplication:complication4 family:[(CLKCComplicationDataSource *)self family] device:deviceCopy];

    v13 = [v12 alloc];
    complication5 = [(CLKCComplicationDataSource *)self complication];
    family = [(CLKCComplicationDataSource *)self family];
    context = [(CLKCComplicationDataSource *)self context];
    complication = [v13 initWithComplication:complication5 family:family forDevice:deviceCopy context:context];

    if (objc_opt_respondsToSelector())
    {
      v7 = [complication richComplicationDisplayViewClassForDevice:deviceCopy];
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
  _currentTimelineEntry = [(NTKCGreenfieldPlaceholderComplicationDataSource *)self _currentTimelineEntry];
  complicationTemplate = [_currentTimelineEntry complicationTemplate];

  return complicationTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  _currentTimelineEntry = [(NTKCGreenfieldPlaceholderComplicationDataSource *)self _currentTimelineEntry];
  (*(handler + 2))(handlerCopy, _currentTimelineEntry);
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
    appStoreItemId = [(NTKGreenfieldPlaceholderComplication *)self->_placeholderComplication appStoreItemId];

    if (appStoreItemId)
    {
      appName = [(NTKGreenfieldPlaceholderComplication *)self->_placeholderComplication appName];
      LODWORD(v7) = 1.0;
      v8 = [NTKGreenfieldPlaceholderTimelineEntryModel entryModelWithAppIcon:0 appName:appName installationProgress:v7];
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