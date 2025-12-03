@interface CalDAVPostCalendarItemTask
- (id)additionalHeaderValues;
- (id)description;
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CalDAVPostCalendarItemTask

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CalDAVPostCalendarItemTask;
  v4 = [(CoreDAVPostOrPutTask *)&v8 description];
  previousScheduleTag = [(CalDAVPostCalendarItemTask *)self previousScheduleTag];
  v6 = [v3 stringWithFormat:@"[%@], previousScheduleTag: [%@]", v4, previousScheduleTag];

  return v6;
}

- (id)additionalHeaderValues
{
  v7.receiver = self;
  v7.super_class = CalDAVPostCalendarItemTask;
  additionalHeaderValues = [(CoreDAVPostOrPutTask *)&v7 additionalHeaderValues];
  if (![(CoreDAVPostOrPutTask *)self forceToServer])
  {
    previousScheduleTag = [(CalDAVPostCalendarItemTask *)self previousScheduleTag];
    v5 = [CalDAVUtils headersFromHeaders:additionalHeaderValues replacingPreconditionsWithScheduleTag:previousScheduleTag];

    additionalHeaderValues = v5;
  }

  return additionalHeaderValues;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  errorCopy = error;
  delegate = [(CalDAVPostCalendarItemTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CalDAVPostCalendarItemTask *)self delegate];
    [delegate2 postCalendarItemTask:self completedWithError:errorCopy];
  }

  [(CalDAVPostCalendarItemTask *)self setDelegate:0];
  v8.receiver = self;
  v8.super_class = CalDAVPostCalendarItemTask;
  [(CoreDAVPostTask *)&v8 finishCoreDAVTaskWithError:errorCopy];
}

@end