@interface DBSmartWidgetHighPriorityCalendarPrediction
- (id)_uuidFromString:(id)a3;
@end

@implementation DBSmartWidgetHighPriorityCalendarPrediction

- (id)_uuidFromString:(id)a3
{
  v3 = a3;
  v8 = [v3 hash] ^ 0x1AA2B3CD;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v8 length:8];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v4, "bytes")}];
  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetHighPriorityCalendarPrediction _uuidFromString:];
  }

  return v5;
}

- (void)_uuidFromString:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_248146000, v0, v1, "Custom UUID generated for DBSmartWidgetHighPriorityCalendarPrediction: input=%{public}@ generated=%{public}@");
}

@end