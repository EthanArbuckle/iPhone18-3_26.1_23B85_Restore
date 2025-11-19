@interface NTKBuildNumberComplicationDataSource
+ (BOOL)acceptsComplicationType:(unint64_t)a3 forDevice:(id)a4;
- (NTKBuildNumberComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_currentTimelineEntry;
- (id)currentSwitcherTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
@end

@implementation NTKBuildNumberComplicationDataSource

- (NTKBuildNumberComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v9.receiver = self;
  v9.super_class = NTKBuildNumberComplicationDataSource;
  v5 = [(CLKCComplicationDataSource *)&v9 initWithComplication:a3 family:a4 forDevice:a5];
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
  v2 = [(NTKBuildNumberComplicationDataSource *)self _currentTimelineEntry];
  v3 = [v2 complicationTemplate];

  return v3;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(NTKBuildNumberComplicationDataSource *)self _currentTimelineEntry];
  (*(a3 + 2))(v5, v6);
}

+ (BOOL)acceptsComplicationType:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 == 52)
  {
    return NTKInternalBuild(a1, a2, 52, a4);
  }

  else
  {
    return 0;
  }
}

@end