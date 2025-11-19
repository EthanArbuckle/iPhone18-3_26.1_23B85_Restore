@interface MobileCalDAVPollCalendar
- (MobileCalDAVPollCalendar)initWithCalendarURL:(id)a3 principal:(id)a4 title:(id)a5;
@end

@implementation MobileCalDAVPollCalendar

- (MobileCalDAVPollCalendar)initWithCalendarURL:(id)a3 principal:(id)a4 title:(id)a5
{
  v6.receiver = self;
  v6.super_class = MobileCalDAVPollCalendar;
  return [(MobileCalDAVCalendar *)&v6 initWithCalendarURL:a3 principal:a4 title:@"Inbox"];
}

@end