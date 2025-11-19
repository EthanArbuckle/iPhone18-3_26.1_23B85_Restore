@interface A:
- (uint64_t)B;
- (xpc_object_t)B;
@end

@implementation A:

- (uint64_t)B
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

- (xpc_object_t)B
{
  v5 = vextq_s8(*(a2 - 16), *(a2 - 16), 8uLL);
  WitnessTable = swift_getWitnessTable();
  return XpcDictCodable.asXPC()(a1, WitnessTable);
}

@end