@interface TUHandle:
- (unint64_t)CNContact?;
@end

@implementation TUHandle:

- (unint64_t)CNContact?
{
  result = lazy protocol witness table cache variable for type [TUHandle : CNContact?] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [TUHandle : CNContact?] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySo8TUHandleCSo9CNContactCSgGMd);
    lazy protocol witness table accessor for type CNContact? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TUHandle : CNContact?] and conformance <> [A : B]);
  }

  return result;
}

@end