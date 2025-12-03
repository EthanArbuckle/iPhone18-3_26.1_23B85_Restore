@interface NSMutableDictionary(IDSMetadataURLType)
- (void)setIdsMetadataFileKey:()IDSMetadataURLType;
- (void)setIdsMetadataFileURLType:()IDSMetadataURLType;
@end

@implementation NSMutableDictionary(IDSMetadataURLType)

- (void)setIdsMetadataFileURLType:()IDSMetadataURLType
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [self setObject:v2 forKeyedSubscript:@"BLTFileURLType"];
}

- (void)setIdsMetadataFileKey:()IDSMetadataURLType
{
  if (a3)
  {
    v4 = [a3 copy];
    [self setObject:v4 forKeyedSubscript:@"BLTFileURLKey"];
  }
}

@end