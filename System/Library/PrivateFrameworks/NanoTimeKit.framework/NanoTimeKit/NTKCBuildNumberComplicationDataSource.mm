@interface NTKCBuildNumberComplicationDataSource
+ (BOOL)acceptsComplicationType:(unint64_t)a3 forDevice:(id)a4;
- (NTKCBuildNumberComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_currentTimelineEntry;
- (id)currentSwitcherTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
@end

@implementation NTKCBuildNumberComplicationDataSource

- (NTKCBuildNumberComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = NTKCBuildNumberComplicationDataSource;
  v9 = [(CLKCComplicationDataSource *)&v15 initWithComplication:a3 family:a4 forDevice:v8];
  if (v9)
  {
    v10 = [v8 pdrDevice];
    v11 = [v10 valueForProperty:*MEMORY[0x277D37BF8]];
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
  v2 = [(NTKCBuildNumberComplicationDataSource *)self _currentTimelineEntry];
  v3 = [v2 complicationTemplate];

  return v3;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(NTKCBuildNumberComplicationDataSource *)self _currentTimelineEntry];
  (*(a3 + 2))(v5, v6);
}

+ (BOOL)acceptsComplicationType:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 == 53)
  {
    return NTKInternalBuild(a1, a2, 53, a4);
  }

  else
  {
    return 0;
  }
}

@end