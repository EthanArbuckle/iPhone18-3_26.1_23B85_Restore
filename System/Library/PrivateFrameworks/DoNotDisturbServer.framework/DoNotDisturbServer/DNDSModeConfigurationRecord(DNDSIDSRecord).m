@interface DNDSModeConfigurationRecord(DNDSIDSRecord)
@end

@implementation DNDSModeConfigurationRecord(DNDSIDSRecord)

+ (void)newWithDNDSIDSRecord:()DNDSIDSRecord currentRecord:.cold.1(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 recordID];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_1(&dword_24912E000, v6, v7, "Failed to decode record data %{public}@: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)newWithDNDSIDSRecord:()DNDSIDSRecord currentRecord:.cold.2(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 recordID];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_1(&dword_24912E000, v6, v7, "Failed to decode partitioned record data %{public}@: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)newWithDNDSIDSRecord:()DNDSIDSRecord currentRecord:.cold.3(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 recordID];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3(&dword_24912E000, v6, v7, "Partioned record data is nil in record data %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)newWithDNDSIDSRecord:()DNDSIDSRecord currentRecord:.cold.4(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 recordID];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3(&dword_24912E000, v6, v7, "Record data is nil in record data %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)populateDNDSIDSRecord:()DNDSIDSRecord .cold.1(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 recordID];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3(&dword_24912E000, v6, v7, "Record %{public}@ is not valid JSON", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)populateDNDSIDSRecord:()DNDSIDSRecord .cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Configuration: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)populateDNDSIDSRecord:()DNDSIDSRecord .cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Dictionary: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)populateDNDSIDSRecord:()DNDSIDSRecord .cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Partition: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end