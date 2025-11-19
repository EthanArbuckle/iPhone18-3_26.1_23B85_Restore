@interface NSData(GKBase64)
- (id)_gkZippedDictionaryValue;
@end

@implementation NSData(GKBase64)

- (id)_gkZippedDictionaryValue
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v1 = [a1 decompressedDataUsingAlgorithm:3 error:&v11];
  v2 = v11;
  v3 = MEMORY[0x277CBEB98];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v5 = [v3 setWithArray:v4];

  v10 = v2;
  v6 = [MEMORY[0x277CCAAC8] _strictlyUnarchivedObjectOfClasses:v5 fromData:v1 error:&v10];
  v7 = v10;

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

@end