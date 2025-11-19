@interface DNDSModeConfigurationRecord(CKRecord)
@end

@implementation DNDSModeConfigurationRecord(CKRecord)

+ (void)dictionaryRepresentationWithCKRecord:()CKRecord partitionType:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 recordID];
  v7 = [v6 recordName];
  v9 = 138412546;
  v10 = a1;
  v11 = 2114;
  v12 = v7;
  _os_log_error_impl(&dword_24912E000, v5, OS_LOG_TYPE_ERROR, "%@ partition data is nil in record data %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)populateCKRecord:()CKRecord lastChanceRecord:.cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 recordID];
  v5 = [v4 recordName];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_24912E000, v3, OS_LOG_TYPE_ERROR, "Record %{public}@ is not valid JSON", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)populateCKRecord:()CKRecord lastChanceRecord:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Configuration: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)populateCKRecord:()CKRecord lastChanceRecord:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Dictionary: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)populateCKRecord:()CKRecord lastChanceRecord:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Partition: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end