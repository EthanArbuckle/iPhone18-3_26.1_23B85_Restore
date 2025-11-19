@interface NSDictionary(IDSMetadataFileURLType)
- (uint64_t)idsMetadataFileURLType;
@end

@implementation NSDictionary(IDSMetadataFileURLType)

- (uint64_t)idsMetadataFileURLType
{
  v1 = [a1 objectForKeyedSubscript:@"BLTFileURLType"];
  v2 = [v1 integerValue];

  return v2;
}

@end