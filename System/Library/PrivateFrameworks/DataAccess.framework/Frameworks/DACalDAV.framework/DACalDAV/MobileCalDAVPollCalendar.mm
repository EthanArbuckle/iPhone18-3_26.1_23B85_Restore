@interface MobileCalDAVPollCalendar
- (MobileCalDAVPollCalendar)initWithCalendarURL:(id)l principal:(id)principal title:(id)title;
@end

@implementation MobileCalDAVPollCalendar

- (MobileCalDAVPollCalendar)initWithCalendarURL:(id)l principal:(id)principal title:(id)title
{
  v6.receiver = self;
  v6.super_class = MobileCalDAVPollCalendar;
  return [(MobileCalDAVCalendar *)&v6 initWithCalendarURL:l principal:principal title:@"Inbox"];
}

@end