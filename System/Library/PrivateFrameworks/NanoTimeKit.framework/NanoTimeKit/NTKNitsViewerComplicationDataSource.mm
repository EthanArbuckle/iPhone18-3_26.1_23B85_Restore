@interface NTKNitsViewerComplicationDataSource
+ (BOOL)acceptsComplicationType:(unint64_t)type forDevice:(id)device;
- (NTKNitsViewerComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_currentTimelineEntry;
- (id)alwaysOnTemplate;
- (id)currentSwitcherTemplate;
- (void)dealloc;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
@end

@implementation NTKNitsViewerComplicationDataSource

- (NTKNitsViewerComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = NTKNitsViewerComplicationDataSource;
  return [(CLKCComplicationDataSource *)&v6 initWithComplication:complication family:family forDevice:device];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKNitsViewerComplicationDataSource;
  [(NTKNitsViewerComplicationDataSource *)&v2 dealloc];
}

- (id)currentSwitcherTemplate
{
  _currentTimelineEntry = [(NTKNitsViewerComplicationDataSource *)self _currentTimelineEntry];
  complicationTemplate = [_currentTimelineEntry complicationTemplate];

  return complicationTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  _currentTimelineEntry = [(NTKNitsViewerComplicationDataSource *)self _currentTimelineEntry];
  (*(handler + 2))(handlerCopy, _currentTimelineEntry);
}

+ (BOOL)acceptsComplicationType:(unint64_t)type forDevice:(id)device
{
  if (type == 58)
  {
    return NTKInternalBuild(self, a2, 58, device);
  }

  else
  {
    return 0;
  }
}

- (id)alwaysOnTemplate
{
  v3 = +[NTKNitsViewerComplicationEntryModel tritiumModel];
  v4 = [v3 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];
  complicationTemplate = [v4 complicationTemplate];

  return complicationTemplate;
}

- (id)_currentTimelineEntry
{
  LODWORD(v2) = -1082130432;
  v4 = [NTKNitsViewerComplicationEntryModel modelWithNits:v2];
  v5 = [v4 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];

  return v5;
}

@end