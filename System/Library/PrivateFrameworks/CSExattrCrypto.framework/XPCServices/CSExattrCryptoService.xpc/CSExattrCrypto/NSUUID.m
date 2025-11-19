@interface NSUUID
- (id)MDUUIDData;
@end

@implementation NSUUID

- (id)MDUUIDData
{
  v3[0] = 0;
  v3[1] = 0;
  [(NSUUID *)self getUUIDBytes:v3];
  return [NSData dataWithBytes:v3 length:16];
}

@end