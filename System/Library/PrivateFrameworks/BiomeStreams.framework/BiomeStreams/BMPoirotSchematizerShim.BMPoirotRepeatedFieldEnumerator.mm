@interface BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator
- (id)nextObject;
@end

@implementation BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator

- (id)nextObject
{
  selfCopy = self;
  BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator.nextObject()(v11);

  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end