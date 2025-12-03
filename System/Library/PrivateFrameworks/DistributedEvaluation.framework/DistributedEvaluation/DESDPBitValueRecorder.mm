@interface DESDPBitValueRecorder
- (BOOL)record:(id)record data:(id)data metadata:(id)metadata;
@end

@implementation DESDPBitValueRecorder

- (BOOL)record:(id)record data:(id)data metadata:(id)metadata
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D052E8];
  metadataCopy = metadata;
  dataCopy = data;
  recordCopy = record;
  v11 = [[v7 alloc] initWithKey:recordCopy];

  v15[0] = dataCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

  LOBYTE(dataCopy) = [v11 recordBitVectors:v12 metadata:metadataCopy];
  v13 = *MEMORY[0x277D85DE8];
  return dataCopy;
}

@end