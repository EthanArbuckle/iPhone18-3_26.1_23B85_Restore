@interface NSDictionary(IDSMetadataFileURLType)
- (uint64_t)idsMetadataFileURLType;
@end

@implementation NSDictionary(IDSMetadataFileURLType)

- (uint64_t)idsMetadataFileURLType
{
  v1 = [self objectForKeyedSubscript:@"BLTFileURLType"];
  integerValue = [v1 integerValue];

  return integerValue;
}

@end