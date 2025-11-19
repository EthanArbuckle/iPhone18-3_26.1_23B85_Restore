@interface BLTPBTransportData(SequenceNumberManager)
@end

@implementation BLTPBTransportData(SequenceNumberManager)

+ (void)transportDataWithSequenceNumberManager:()SequenceNumberManager .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, a2, a3, "BLTPBTransportData transportDataWithSequenceNumberManager %@: nextSendSequenceNumber returned nil!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end