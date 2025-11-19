@interface CALNEKUIEventRepresentationProvider
+ (id)sharedInstance;
- (id)eventRepresentationDictionaryForInvitationNotification:(id)a3 event:(id)a4 date:(id)a5 endDate:(id)a6 timeZone:(id)a7;
- (id)eventRepresentationDictionaryForResourceChangeNotification:(id)a3 message:(id)a4 date:(id)a5 endDate:(id)a6 timeZone:(id)a7;
- (id)eventRepresentationDictionaryForResponseNotificationWithTitle:(id)a3 message:(id)a4;
- (id)eventRepresentationDictionaryForUpcomingEvent:(id)a3 date:(id)a4 displayTimeZone:(id)a5;
- (id)updateEventRepresentationDictionary:(id)a3 withHypothesisMessage:(id)a4;
@end

@implementation CALNEKUIEventRepresentationProvider

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CALNEKUIEventRepresentationProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)eventRepresentationDictionaryForUpcomingEvent:(id)a3 date:(id)a4 displayTimeZone:(id)a5
{
  v7 = MEMORY[0x277CC5B80];
  v8 = a3;
  v9 = [v7 upcomingEventNotificationRepresentationWithEvent:v8 date:a4 displayTimeZone:a5];
  [CALNEventRepresentationDataSourceUtils updateEventRepresentation:v9 forEvent:v8];

  v10 = [v9 dictionaryRepresentation];

  return v10;
}

- (id)eventRepresentationDictionaryForInvitationNotification:(id)a3 event:(id)a4 date:(id)a5 endDate:(id)a6 timeZone:(id)a7
{
  v11 = MEMORY[0x277CC5B80];
  v12 = a4;
  v13 = [v11 invitationNotificationRepresentationWithNotification:a3 event:v12 date:a5 endDate:a6 timeZone:a7];
  [CALNEventRepresentationDataSourceUtils updateEventRepresentation:v13 forEvent:v12];

  v14 = [v13 dictionaryRepresentation];

  return v14;
}

- (id)eventRepresentationDictionaryForResourceChangeNotification:(id)a3 message:(id)a4 date:(id)a5 endDate:(id)a6 timeZone:(id)a7
{
  v7 = [MEMORY[0x277CC5B80] resourceChangeNotificationWithNotification:a3 message:a4 date:a5 endDate:a6 timeZone:a7];
  v8 = [v7 dictionaryRepresentation];

  return v8;
}

- (id)eventRepresentationDictionaryForResponseNotificationWithTitle:(id)a3 message:(id)a4
{
  v4 = [MEMORY[0x277CC5B80] responseNotificationWithTitle:a3 message:a4];
  v5 = [v4 dictionaryRepresentation];

  return v5;
}

- (id)updateEventRepresentationDictionary:(id)a3 withHypothesisMessage:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CC5B80];
  v7 = a3;
  v8 = [[v6 alloc] initWithDictionary:v7];

  if ([v8 type] == 1)
  {
    [v8 updateUpcomingEventNotificationWithHypothesisMessage:v5];
  }

  else
  {
    v9 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CALNEKUIEventRepresentationProvider updateEventRepresentationDictionary:v8 withHypothesisMessage:v9];
    }
  }

  v10 = [v8 dictionaryRepresentation];

  return v10;
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