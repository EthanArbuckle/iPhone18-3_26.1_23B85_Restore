@interface NTKNitsViewerComplicationDataSource
+ (BOOL)acceptsComplicationType:(unint64_t)a3 forDevice:(id)a4;
- (NTKNitsViewerComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_currentTimelineEntry;
- (id)alwaysOnTemplate;
- (id)currentSwitcherTemplate;
- (void)dealloc;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
@end

@implementation NTKNitsViewerComplicationDataSource

- (NTKNitsViewerComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v6.receiver = self;
  v6.super_class = NTKNitsViewerComplicationDataSource;
  return [(CLKCComplicationDataSource *)&v6 initWithComplication:a3 family:a4 forDevice:a5];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKNitsViewerComplicationDataSource;
  [(NTKNitsViewerComplicationDataSource *)&v2 dealloc];
}

- (id)currentSwitcherTemplate
{
  v2 = [(NTKNitsViewerComplicationDataSource *)self _currentTimelineEntry];
  v3 = [v2 complicationTemplate];

  return v3;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(NTKNitsViewerComplicationDataSource *)self _currentTimelineEntry];
  (*(a3 + 2))(v5, v6);
}

+ (BOOL)acceptsComplicationType:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 == 58)
  {
    return NTKInternalBuild(a1, a2, 58, a4);
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
  v5 = [v4 complicationTemplate];

  return v5;
}

- (id)_currentTimelineEntry
{
  LODWORD(v2) = -1082130432;
  v4 = [NTKNitsViewerComplicationEntryModel modelWithNits:v2];
  v5 = [v4 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];

  return v5;
}

@end