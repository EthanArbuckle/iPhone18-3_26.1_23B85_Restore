@interface CPLSyncBubbleScheduler
- (id)scheduleNextSyncSessionAtDate:(id)a3;
@end

@implementation CPLSyncBubbleScheduler

- (id)scheduleNextSyncSessionAtDate:(id)a3
{
  dummySession = self->_dummySession;
  if (!dummySession)
  {
    v5 = [(CPLSyncBubbleScheduler *)self abstractObject];
    v6 = [CPLSyncSession alloc];
    v7 = [v5 configuration];
    v8 = [v6 initWithSequenceNumber:0 expectedDate:0 scheduler:v5 configuration:v7 scopeFilter:0];
    v9 = self->_dummySession;
    self->_dummySession = v8;

    dummySession = self->_dummySession;
  }

  return dummySession;
}

@end