@interface CNMetricsReporterSpy
- (CNMetricsReporterSpy)init;
- (NSArray)events;
- (void)clearEvents;
@end

@implementation CNMetricsReporterSpy

- (CNMetricsReporterSpy)init
{
  v7.receiver = self;
  v7.super_class = CNMetricsReporterSpy;
  v2 = [(CNMetricsReporterSpy *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    entries = v2->_entries;
    v2->_entries = v3;

    v5 = v2;
  }

  return v2;
}

- (NSArray)events
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_entries copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)clearEvents
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableArray *)obj->_entries removeAllObjects];
  objc_sync_exit(obj);
}

@end