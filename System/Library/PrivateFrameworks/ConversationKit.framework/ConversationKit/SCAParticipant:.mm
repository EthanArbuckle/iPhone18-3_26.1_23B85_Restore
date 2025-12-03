@interface SCAParticipant:
- (uint64_t)SCSensitivityAnalysis;
@end

@implementation SCAParticipant:

- (uint64_t)SCSensitivityAnalysis
{
  v4 = *__swift_project_boxed_opaque_existential_1((self + 32), *(self + 56));
  if (a3)
  {
    v5 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v4, v5);
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SCAParticipant);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SCSensitivityAnalysis);
    lazy protocol witness table accessor for type SCAParticipant and conformance NSObject();
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v4, v7);
  }
}

@end