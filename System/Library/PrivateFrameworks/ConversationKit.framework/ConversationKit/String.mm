@interface String
- (uint64_t):()block;
@end

@implementation String

- (uint64_t):()block
{
  v3 = *__swift_project_boxed_opaque_existential_1((self + 32), *(self + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11IDSEndpointCGMd);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v3, v4);
}

@end