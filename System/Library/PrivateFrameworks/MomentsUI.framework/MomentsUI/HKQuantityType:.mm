@interface HKQuantityType:
- (uint64_t)HKUnit;
@end

@implementation HKQuantityType:

- (uint64_t)HKUnit
{
  v4 = *__swift_project_boxed_opaque_existential_1((self + 32), *(self + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for HKQuantityType);
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for HKUnit);
    lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return MEMORY[0x282200950](v4);
  }
}

@end