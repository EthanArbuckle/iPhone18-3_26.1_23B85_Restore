@interface NTKBuildNumberComplicationDataSource
+ (BOOL)acceptsComplicationType:(unint64_t)type forDevice:(id)device;
- (NTKBuildNumberComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_currentTimelineEntry;
- (id)currentSwitcherTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
@end

@implementation NTKBuildNumberComplicationDataSource

- (NTKBuildNumberComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v9.receiver = self;
  v9.super_class = NTKBuildNumberComplicationDataSource;
  v5 = [(CLKCComplicationDataSource *)&v9 initWithComplication:complication family:family forDevice:device];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (id)_currentTimelineEntry
{
  v3 = NTKBuildVersion();
  v4 = [NTKBuildNumberComplicationEntryModel modelWithBuildNum:v3];

  v5 = [v4 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];

  return v5;
}

- (id)currentSwitcherTemplate
{
  _currentTimelineEntry = [(NTKBuildNumberComplicationDataSource *)self _currentTimelineEntry];
  complicationTemplate = [_currentTimelineEntry complicationTemplate];

  return complicationTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  _currentTimelineEntry = [(NTKBuildNumberComplicationDataSource *)self _currentTimelineEntry];
  (*(handler + 2))(handlerCopy, _currentTimelineEntry);
}

+ (BOOL)acceptsComplicationType:(unint64_t)type forDevice:(id)device
{
  if (type == 52)
  {
    return NTKInternalBuild(self, a2, 52, device);
  }

  else
  {
    return 0;
  }
}

@end