@interface ManagedAssetsClient(Profile)
@end

@implementation ManagedAssetsClient(Profile)

- (void)exportAssets:()Profile option:error:.cold.1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_8(a2, *MEMORY[0x277D85DE8]);
  v3 = *(v2 + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v4, v5, "fail to export assets for profile: %@, error: %@");
  v6 = *MEMORY[0x277D85DE8];
}

- (void)constructV2Blob:()Profile expectedSize:sizeLimit:profileType:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_258089000, v0, v1, "exportedAssetInfos = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)constructV2Blob:()Profile expectedSize:sizeLimit:profileType:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_258089000, v0, v1, "expected v2 blob size = %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)constructV2Blob:()Profile expectedSize:sizeLimit:profileType:error:.cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v1, v2, "fail to construct v2 blob, error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)importAssets:()Profile option:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "null completion is passed in: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)parseAssetBlob:()Profile error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_258089000, v0, v1, "parse as v2 blob as failure: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)parseAssetBlob:()Profile error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "Serialized blob is corrupted. error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)exportCorePrescription:()Profile profile:payloadSize:sizeLimit:profileType:error:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v1, v2, "fail to perform checkIfKVStoreGroupExistUsing: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)exportCorePrescription:()Profile profile:payloadSize:sizeLimit:profileType:error:.cold.2(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_8(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v2, v3, "Error while trying to query data in store %@, error:=%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)exportCorePrescription:()Profile profile:payloadSize:sizeLimit:profileType:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_258089000, v0, v1, "exported coreRX records: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)exportCorePrescription:()Profile profile:payloadSize:sizeLimit:profileType:error:.cold.4(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v1, v2, "Error while serializing kvRecords to plist, error:=%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)exportCorePrescription:()Profile profile:payloadSize:sizeLimit:profileType:error:.cold.5(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 length];
  OUTLINED_FUNCTION_2();
  v6 = a2;
  _os_log_debug_impl(&dword_258089000, v3, OS_LOG_TYPE_DEBUG, "Serialized CorePrescription data length: %lu with data %@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)exportCorePrescription:()Profile profile:payloadSize:sizeLimit:profileType:error:.cold.6(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_8(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v2, v3, "No CorePrescription data after serializing all records from %@, error:=%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)importCorePrescription:()Profile profile:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_258089000, v0, v1, "inputRecords = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)importCorePrescription:()Profile profile:error:.cold.2(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_8(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v2, v3, "Failed to put data in store %@, error=%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)importCorePrescription:()Profile profile:error:.cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v1, v2, "Failed to unarchive the data, error=%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end