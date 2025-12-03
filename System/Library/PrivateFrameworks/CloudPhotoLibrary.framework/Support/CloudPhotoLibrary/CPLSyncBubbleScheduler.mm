@interface CPLSyncBubbleScheduler
- (id)scheduleNextSyncSessionAtDate:(id)date;
@end

@implementation CPLSyncBubbleScheduler

- (id)scheduleNextSyncSessionAtDate:(id)date
{
  dummySession = self->_dummySession;
  if (!dummySession)
  {
    abstractObject = [(CPLSyncBubbleScheduler *)self abstractObject];
    v6 = [CPLSyncSession alloc];
    configuration = [abstractObject configuration];
    v8 = [v6 initWithSequenceNumber:0 expectedDate:0 scheduler:abstractObject configuration:configuration scopeFilter:0];
    v9 = self->_dummySession;
    self->_dummySession = v8;

    dummySession = self->_dummySession;
  }

  return dummySession;
}

@end