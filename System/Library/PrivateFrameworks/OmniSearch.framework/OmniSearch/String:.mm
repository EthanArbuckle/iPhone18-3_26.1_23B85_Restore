@interface String:
- (uint64_t)String;
- (unint64_t)String;
- (void)String;
@end

@implementation String:

- (void)String
{
  if (!lazy cache variable for type metadata for [String : String]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : String]?);
    }
  }
}

- (uint64_t)String
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

- (unint64_t)String
{
  result = lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  }

  return result;
}

@end