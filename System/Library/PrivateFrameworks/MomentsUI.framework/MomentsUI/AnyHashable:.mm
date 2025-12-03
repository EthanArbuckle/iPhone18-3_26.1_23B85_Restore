@interface AnyHashable:
- (uint64_t)Any;
- (void)Any;
@end

@implementation AnyHashable:

- (void)Any
{
  if (!lazy cache variable for type metadata for [AnyHashable : Any]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDys11AnyHashableVypGMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [AnyHashable : Any]?);
    }
  }
}

- (uint64_t)Any
{
  v4 = *(self + 32);
  if (a3)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

@end