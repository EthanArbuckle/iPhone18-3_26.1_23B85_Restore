@interface EventKitTCCUIFactory
- (EventKitTCCUIFactory)initWithBundleIdentifier:(id)a3;
- (id)previewTableView;
- (id)settingsViewSubtitle;
- (int)countEventsInTheNextYear;
@end

@implementation EventKitTCCUIFactory

- (EventKitTCCUIFactory)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = EventKitTCCUIFactory;
  v5 = [(EventKitTCCUIFactory *)&v18 init];
  v6 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:132];
  eventStore = v5->_eventStore;
  v5->_eventStore = v6;

  if (v4)
  {
    [(EKEventStore *)v5->_eventStore setSourceAccountManagement:0 withBundleID:v4];
  }

  v8 = [(EKEventStore *)v5->_eventStore calendarsForEntityType:0];
  allCalendars = v5->_allCalendars;
  v5->_allCalendars = v8;

  v10 = [(EKEventStore *)v5->_eventStore nextEventsWithCalendars:0 limit:1 exclusionOptions:13];
  v11 = [v10 firstObject];

  if (!v11)
  {
    v12 = logHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [EventKitTCCUIFactory initWithBundleIdentifier:v12];
    }

    v13 = [(EKEventStore *)v5->_eventStore nextEventsWithCalendars:0 limit:1 exclusionOptions:12];
    v11 = [v13 firstObject];

    if (!v11)
    {
      v14 = logHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [EventKitTCCUIFactory initWithBundleIdentifier:v14];
      }

      v11 = 0;
    }
  }

  v15 = [[_TtC13EventKitTCCUI19EventPreviewWrapper alloc] initWithEvent:v11];
  previewWrapper = v5->_previewWrapper;
  v5->_previewWrapper = v15;

  return v5;
}

- (int)countEventsInTheNextYear
{
  v3 = [MEMORY[0x277CBEAA8] CalDateForBeginningOfToday];
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [v3 dateByAddingYears:1 inCalendar:v4];

  LODWORD(self) = [(EKEventStore *)self->_eventStore countOfEventsFromStartDate:v3 toEndDate:v5];
  return self;
}

- (id)settingsViewSubtitle
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"x_calendars_x_events" value:&stru_285D36E10 table:0];
  v6 = [v3 localizedStringWithFormat:v5, -[NSArray count](self->_allCalendars, "count"), -[EventKitTCCUIFactory countEventsInTheNextYear](self, "countEventsInTheNextYear")];

  return v6;
}

- (id)previewTableView
{
  v2 = [(EventKitTCCUIFactory *)self settingsPreviewViewController];
  v3 = [v2 view];

  return v3;
}

@end