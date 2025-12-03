@interface NTKCBuildNumberComplicationDataSource
+ (BOOL)acceptsComplicationType:(unint64_t)type forDevice:(id)device;
- (NTKCBuildNumberComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_currentTimelineEntry;
- (id)currentSwitcherTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
@end

@implementation NTKCBuildNumberComplicationDataSource

- (NTKCBuildNumberComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = NTKCBuildNumberComplicationDataSource;
  v9 = [(CLKCComplicationDataSource *)&v15 initWithComplication:complication family:family forDevice:deviceCopy];
  if (v9)
  {
    pdrDevice = [deviceCopy pdrDevice];
    v11 = [pdrDevice valueForProperty:*MEMORY[0x277D37BF8]];
    companionBuild = v9->companionBuild;
    v9->companionBuild = v11;

    v13 = v9;
  }

  return v9;
}

- (id)_currentTimelineEntry
{
  v3 = [NTKCBuildNumberComplicationEntryModel modelWithBuildNum:self->companionBuild];
  v4 = [v3 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];

  return v4;
}

- (id)currentSwitcherTemplate
{
  _currentTimelineEntry = [(NTKCBuildNumberComplicationDataSource *)self _currentTimelineEntry];
  complicationTemplate = [_currentTimelineEntry complicationTemplate];

  return complicationTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  _currentTimelineEntry = [(NTKCBuildNumberComplicationDataSource *)self _currentTimelineEntry];
  (*(handler + 2))(handlerCopy, _currentTimelineEntry);
}

+ (BOOL)acceptsComplicationType:(unint64_t)type forDevice:(id)device
{
  if (type == 53)
  {
    return NTKInternalBuild(self, a2, 53, device);
  }

  else
  {
    return 0;
  }
}

@end