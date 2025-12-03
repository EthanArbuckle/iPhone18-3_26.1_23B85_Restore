@interface CALNNotificationMapper
+ (id)notificationFromNotificationRecord:(id)record;
+ (id)notificationRecordFromNotificationRequest:(id)request;
+ (id)notificationRecordsFromNotifications:(id)notifications;
+ (id)notificationRequestFromNotificationRecord:(id)record;
@end

@implementation CALNNotificationMapper

+ (id)notificationRequestFromNotificationRecord:(id)record
{
  recordCopy = record;
  v4 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(CALNNotificationMapper *)recordCopy notificationRequestFromNotificationRecord:v4, v5, v6, v7, v8, v9, v10];
  }

  v11 = [CALNNotificationIdentifier alloc];
  sourceIdentifier = [recordCopy sourceIdentifier];
  sourceClientIdentifier = [recordCopy sourceClientIdentifier];
  v14 = [(CALNNotificationIdentifier *)v11 initWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:sourceClientIdentifier];

  stringRepresentation = [(CALNNotificationIdentifier *)v14 stringRepresentation];
  content = [recordCopy content];
  if (!content)
  {
    v17 = objc_alloc_init(CALNMutableNotificationContent);
    content = [(CALNMutableNotificationContent *)v17 copy];
  }

  v18 = [CALNNotificationRequest requestWithIdentifier:stringRepresentation content:content];
  v19 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    +[CALNNotificationMapper notificationRequestFromNotificationRecord:];
  }

  return v18;
}

+ (id)notificationRecordFromNotificationRequest:(id)request
{
  requestCopy = request;
  v4 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(CALNNotificationMapper *)requestCopy notificationRecordFromNotificationRequest:v4, v5, v6, v7, v8, v9, v10];
  }

  v11 = [CALNNotificationIdentifier alloc];
  identifier = [requestCopy identifier];
  v13 = [(CALNNotificationIdentifier *)v11 initWithStringRepresentation:identifier];

  if (v13)
  {
    sourceIdentifier = [(CALNNotificationIdentifier *)v13 sourceIdentifier];
    sourceClientIdentifier = [(CALNNotificationIdentifier *)v13 sourceClientIdentifier];
    v16 = [CALNNotificationRecord alloc];
    content = [requestCopy content];
    v18 = [(CALNNotificationRecord *)v16 initWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:sourceClientIdentifier content:content];

    v19 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[CALNNotificationMapper notificationRecordFromNotificationRequest:];
    }
  }

  else
  {
    sourceIdentifier = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(sourceIdentifier, OS_LOG_TYPE_ERROR))
    {
      [CALNNotificationMapper notificationRecordFromNotificationRequest:sourceIdentifier];
    }

    v18 = 0;
  }

  return v18;
}

+ (id)notificationFromNotificationRecord:(id)record
{
  recordCopy = record;
  v5 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CALNNotificationMapper *)recordCopy notificationFromNotificationRecord:v5, v6, v7, v8, v9, v10, v11];
  }

  v12 = [self notificationRequestFromNotificationRecord:recordCopy];
  content = [recordCopy content];
  date = [content date];

  v15 = [CALNNotification notificationWithRequest:v12 date:date];
  v16 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    +[CALNNotificationMapper notificationFromNotificationRecord:];
  }

  return v15;
}

+ (id)notificationRecordsFromNotifications:(id)notifications
{
  v4 = MEMORY[0x277CBEB18];
  notificationsCopy = notifications;
  array = [v4 array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __63__CALNNotificationMapper_notificationRecordsFromNotifications___block_invoke;
  v13 = &unk_278D6F438;
  v14 = array;
  selfCopy = self;
  v7 = array;
  [notificationsCopy enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __63__CALNNotificationMapper_notificationRecordsFromNotifications___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [a2 request];
  v5 = [v3 notificationRecordFromNotificationRequest:v4];

  [*(a1 + 32) addObject:v5];
}

+ (void)notificationRequestFromNotificationRecord:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_242909000, a2, a3, "Transforming notification record to notification request. Record: %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)notificationRequestFromNotificationRecord:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3(&dword_242909000, v0, v1, "Transformed notification record to notification request. Record: %@. Request: %@.");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)notificationRecordFromNotificationRequest:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_242909000, a2, a3, "Transforming notification request to notification record. Request: %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)notificationRecordFromNotificationRequest:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3(&dword_242909000, v0, v1, "Transformed notification request to notification record. Request: %@. Record: %@.");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)notificationFromNotificationRecord:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_242909000, a2, a3, "Transforming notification record to notification. Record: %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)notificationFromNotificationRecord:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3(&dword_242909000, v0, v1, "Transformed notification record to notification. Record: %@. Notification: %@.");
  v2 = *MEMORY[0x277D85DE8];
}

@end