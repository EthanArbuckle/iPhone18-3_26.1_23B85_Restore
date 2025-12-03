@interface CALNEKUIEventRepresentationProvider
+ (id)sharedInstance;
- (id)eventRepresentationDictionaryForInvitationNotification:(id)notification event:(id)event date:(id)date endDate:(id)endDate timeZone:(id)zone;
- (id)eventRepresentationDictionaryForResourceChangeNotification:(id)notification message:(id)message date:(id)date endDate:(id)endDate timeZone:(id)zone;
- (id)eventRepresentationDictionaryForResponseNotificationWithTitle:(id)title message:(id)message;
- (id)eventRepresentationDictionaryForUpcomingEvent:(id)event date:(id)date displayTimeZone:(id)zone;
- (id)updateEventRepresentationDictionary:(id)dictionary withHypothesisMessage:(id)message;
@end

@implementation CALNEKUIEventRepresentationProvider

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CALNEKUIEventRepresentationProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_7 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7, block);
  }

  v2 = sharedInstance_sharedInstance_6;

  return v2;
}

uint64_t __53__CALNEKUIEventRepresentationProvider_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance_6 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)eventRepresentationDictionaryForUpcomingEvent:(id)event date:(id)date displayTimeZone:(id)zone
{
  v7 = MEMORY[0x277CC5B80];
  eventCopy = event;
  v9 = [v7 upcomingEventNotificationRepresentationWithEvent:eventCopy date:date displayTimeZone:zone];
  [CALNEventRepresentationDataSourceUtils updateEventRepresentation:v9 forEvent:eventCopy];

  dictionaryRepresentation = [v9 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)eventRepresentationDictionaryForInvitationNotification:(id)notification event:(id)event date:(id)date endDate:(id)endDate timeZone:(id)zone
{
  v11 = MEMORY[0x277CC5B80];
  eventCopy = event;
  v13 = [v11 invitationNotificationRepresentationWithNotification:notification event:eventCopy date:date endDate:endDate timeZone:zone];
  [CALNEventRepresentationDataSourceUtils updateEventRepresentation:v13 forEvent:eventCopy];

  dictionaryRepresentation = [v13 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)eventRepresentationDictionaryForResourceChangeNotification:(id)notification message:(id)message date:(id)date endDate:(id)endDate timeZone:(id)zone
{
  v7 = [MEMORY[0x277CC5B80] resourceChangeNotificationWithNotification:notification message:message date:date endDate:endDate timeZone:zone];
  dictionaryRepresentation = [v7 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)eventRepresentationDictionaryForResponseNotificationWithTitle:(id)title message:(id)message
{
  v4 = [MEMORY[0x277CC5B80] responseNotificationWithTitle:title message:message];
  dictionaryRepresentation = [v4 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)updateEventRepresentationDictionary:(id)dictionary withHypothesisMessage:(id)message
{
  messageCopy = message;
  v6 = MEMORY[0x277CC5B80];
  dictionaryCopy = dictionary;
  v8 = [[v6 alloc] initWithDictionary:dictionaryCopy];

  if ([v8 type] == 1)
  {
    [v8 updateUpcomingEventNotificationWithHypothesisMessage:messageCopy];
  }

  else
  {
    v9 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CALNEKUIEventRepresentationProvider updateEventRepresentationDictionary:v8 withHypothesisMessage:v9];
    }
  }

  dictionaryRepresentation = [v8 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)updateEventRepresentationDictionary:(void *)a1 withHypothesisMessage:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "type")}];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Tried to add hypothesis message to event representation with the wrong type: (%@)", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end