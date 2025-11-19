@interface DESDPBitValueRecorder
- (BOOL)record:(id)a3 data:(id)a4 metadata:(id)a5;
@end

@implementation DESDPBitValueRecorder

- (BOOL)record:(id)a3 data:(id)a4 metadata:(id)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D052E8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithKey:v10];

  v15[0] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

  LOBYTE(v9) = [v11 recordBitVectors:v12 metadata:v8];
  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

@end