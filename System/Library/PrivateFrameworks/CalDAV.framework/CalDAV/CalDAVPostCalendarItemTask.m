@interface CalDAVPostCalendarItemTask
- (id)additionalHeaderValues;
- (id)description;
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CalDAVPostCalendarItemTask

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CalDAVPostCalendarItemTask;
  v4 = [(CoreDAVPostOrPutTask *)&v8 description];
  v5 = [(CalDAVPostCalendarItemTask *)self previousScheduleTag];
  v6 = [v3 stringWithFormat:@"[%@], previousScheduleTag: [%@]", v4, v5];

  return v6;
}

- (id)additionalHeaderValues
{
  v7.receiver = self;
  v7.super_class = CalDAVPostCalendarItemTask;
  v3 = [(CoreDAVPostOrPutTask *)&v7 additionalHeaderValues];
  if (![(CoreDAVPostOrPutTask *)self forceToServer])
  {
    v4 = [(CalDAVPostCalendarItemTask *)self previousScheduleTag];
    v5 = [CalDAVUtils headersFromHeaders:v3 replacingPreconditionsWithScheduleTag:v4];

    v3 = v5;
  }

  return v3;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVPostCalendarItemTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CalDAVPostCalendarItemTask *)self delegate];
    [v7 postCalendarItemTask:self completedWithError:v4];
  }

  [(CalDAVPostCalendarItemTask *)self setDelegate:0];
  v8.receiver = self;
  v8.super_class = CalDAVPostCalendarItemTask;
  [(CoreDAVPostTask *)&v8 finishCoreDAVTaskWithError:v4];
}

@end