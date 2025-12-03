@interface MXSourceXPCPayload(MXSourceXPCPayloadCategory)
- (id)bundleID;
- (uint64_t)sourceIDString;
@end

@implementation MXSourceXPCPayload(MXSourceXPCPayloadCategory)

- (id)bundleID
{
  metrics = [self metrics];
  allKeys = [metrics allKeys];
  firstObject = [allKeys firstObject];

  return firstObject;
}

- (uint64_t)sourceIDString
{
  sourceID = [self sourceID];

  return [&unk_286A1BA78 objectAtIndexedSubscript:sourceID];
}

@end