@interface CRMLEmbossedNumberModel
- (id)decodeActivations:(void *)a3;
@end

@implementation CRMLEmbossedNumberModel

- (id)decodeActivations:(void *)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = decodeCreditCardNumberActivations(a3, [(CRMLEmbossedNumberModel *)self codeMap], [(CRMLEmbossedNumberModel *)self classCount]);
  v6 = @"arrayResult";
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

@end