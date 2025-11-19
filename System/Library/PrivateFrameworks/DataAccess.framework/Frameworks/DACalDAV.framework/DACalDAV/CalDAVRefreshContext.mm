@interface CalDAVRefreshContext
+ (id)defaultContext;
- (void)addCalendarSyncFailure:(id)a3;
@end

@implementation CalDAVRefreshContext

+ (id)defaultContext
{
  v2 = objc_opt_new();

  return v2;
}

- (void)addCalendarSyncFailure:(id)a3
{
  v4 = a3;
  calendarSyncFailures = self->_calendarSyncFailures;
  v8 = v4;
  if (!calendarSyncFailures)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_calendarSyncFailures;
    self->_calendarSyncFailures = v6;

    v4 = v8;
    calendarSyncFailures = self->_calendarSyncFailures;
  }

  [(NSMutableArray *)calendarSyncFailures addObject:v4];
}

@end