@interface NTKLuxViewerComplicationDataSource
+ (BOOL)acceptsComplicationType:(unint64_t)type forDevice:(id)device;
- (NTKLuxViewerComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_currentTimelineEntry;
- (id)alwaysOnTemplate;
- (id)currentSwitcherTemplate;
- (void)dealloc;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
@end

@implementation NTKLuxViewerComplicationDataSource

- (NTKLuxViewerComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = NTKLuxViewerComplicationDataSource;
  return [(CLKCComplicationDataSource *)&v6 initWithComplication:complication family:family forDevice:device];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKLuxViewerComplicationDataSource;
  [(NTKLuxViewerComplicationDataSource *)&v2 dealloc];
}

- (id)currentSwitcherTemplate
{
  _currentTimelineEntry = [(NTKLuxViewerComplicationDataSource *)self _currentTimelineEntry];
  complicationTemplate = [_currentTimelineEntry complicationTemplate];

  return complicationTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  _currentTimelineEntry = [(NTKLuxViewerComplicationDataSource *)self _currentTimelineEntry];
  (*(handler + 2))(handlerCopy, _currentTimelineEntry);
}

+ (BOOL)acceptsComplicationType:(unint64_t)type forDevice:(id)device
{
  if (type == 50)
  {
    return NTKInternalBuild(self, a2, 50, device);
  }

  else
  {
    return 0;
  }
}

- (id)alwaysOnTemplate
{
  v3 = +[NTKLuxViewerComplicationEntryModel tritiumModel];
  v4 = [v3 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];
  complicationTemplate = [v4 complicationTemplate];

  return complicationTemplate;
}

- (id)_currentTimelineEntry
{
  LODWORD(v2) = -1082130432;
  v4 = [NTKLuxViewerComplicationEntryModel modelWithLux:v2];
  v5 = [v4 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];

  return v5;
}

@end