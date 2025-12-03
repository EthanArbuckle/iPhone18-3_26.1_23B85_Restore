@interface CalDAVRefreshContext
+ (id)defaultContext;
- (void)addCalendarSyncFailure:(id)failure;
@end

@implementation CalDAVRefreshContext

+ (id)defaultContext
{
  v2 = objc_opt_new();

  return v2;
}

- (void)addCalendarSyncFailure:(id)failure
{
  failureCopy = failure;
  calendarSyncFailures = self->_calendarSyncFailures;
  v8 = failureCopy;
  if (!calendarSyncFailures)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_calendarSyncFailures;
    self->_calendarSyncFailures = v6;

    failureCopy = v8;
    calendarSyncFailures = self->_calendarSyncFailures;
  }

  [(NSMutableArray *)calendarSyncFailures addObject:failureCopy];
}

@end