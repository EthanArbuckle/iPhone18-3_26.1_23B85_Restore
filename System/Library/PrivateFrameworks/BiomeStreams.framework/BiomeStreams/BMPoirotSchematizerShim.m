@interface BMPoirotSchematizerShim
+ (BOOL)setSQLiteValueIn:(id)a3 withFieldNumber:(int64_t)a4 typeRawValue:(int64_t)a5 convertedTypeRawValue:(int64_t)a6 sqliteContext:(void *)a7 error:(id *)a8;
+ (BOOL)setSQLiteValueIn:(id)a3 withFieldPath:(id)a4 typeRawValue:(int64_t)a5 convertedTypeRawValue:(int64_t)a6 sqliteContext:(void *)a7 error:(id *)a8;
+ (id)searchValueIn:(id)a3 withFieldNumber:(int64_t)a4 typeRawValue:(int64_t)a5 error:(id *)a6;
+ (id)searchValueIn:(id)a3 withFieldPath:(id)a4 typeRawValue:(int64_t)a5 error:(id *)a6;
+ (id)searchValuesIn:(id)a3 withFieldNumber:(int64_t)a4 typeRawValue:(int64_t)a5 error:(id *)a6;
@end

@implementation BMPoirotSchematizerShim

+ (id)searchValueIn:(id)a3 withFieldNumber:(int64_t)a4 typeRawValue:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  swift_getObjCClassMetadata();
  static BMPoirotSchematizerShim.searchValue(in:withFieldNumber:typeRawValue:error:)(v10, v12, a4, a5, a6, v21);
  outlined consume of Data._Representation(v10, v12);
  v13 = v22;
  if (v22)
  {
    v14 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v15 = *(v13 - 8);
    v16 = *(v15 + 64);
    MEMORY[0x1EEE9AC00](v14);
    v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v15 + 8))(v18, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)searchValueIn:(id)a3 withFieldPath:(id)a4 typeRawValue:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  static BMPoirotSchematizerShim.searchValue(in:withFieldPath:typeRawValue:error:)(v11, v13, v14, a5, a6, v23);

  outlined consume of Data._Representation(v11, v13);
  v15 = v24;
  if (v24)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v17 = *(v15 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x1EEE9AC00](v16);
    v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20);
    v21 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v20, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)searchValuesIn:(id)a3 withFieldNumber:(int64_t)a4 typeRawValue:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  swift_getObjCClassMetadata();
  v13 = static BMPoirotSchematizerShim.searchValues(in:withFieldNumber:typeRawValue:error:)(v10, v12, a4, a5, a6);
  outlined consume of Data._Representation(v10, v12);

  return v13;
}

+ (BOOL)setSQLiteValueIn:(id)a3 withFieldNumber:(int64_t)a4 typeRawValue:(int64_t)a5 convertedTypeRawValue:(int64_t)a6 sqliteContext:(void *)a7 error:(id *)a8
{
  swift_getObjCClassMetadata();
  v13 = a3;
  static BMPoirotSchematizerShim.setSQLiteValue(in:withFieldNumber:typeRawValue:convertedTypeRawValue:sqliteContext:)(v13, a4, a5, a6, a7);

  return 1;
}

+ (BOOL)setSQLiteValueIn:(id)a3 withFieldPath:(id)a4 typeRawValue:(int64_t)a5 convertedTypeRawValue:(int64_t)a6 sqliteContext:(void *)a7 error:(id *)a8
{
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v13 = a3;
  static BMPoirotSchematizerShim.setSQLiteValue(in:withFieldPath:typeRawValue:convertedTypeRawValue:sqliteContext:)(v13, v12, a5, a6, a7);

  return 1;
}

@end