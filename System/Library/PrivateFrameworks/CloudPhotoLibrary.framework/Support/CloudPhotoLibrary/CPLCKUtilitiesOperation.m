@interface CPLCKUtilitiesOperation
+ (id)deleteAllZonesWithCompletionHandler:(id)a3;
+ (id)deleteZoneWithName:(id)a3 completionHandler:(id)a4;
- (CPLCKUtilitiesOperation)init;
@end

@implementation CPLCKUtilitiesOperation

+ (id)deleteZoneWithName:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = _s22CloudKitImplementation23CPLCKUtilitiesOperationC10deleteZone8withName17completionHandlerSo010CKDatabaseE0CSS_ySb_s5Error_pSgtctFZ_0(v5, v7, sub_100111344, v8);

  return v9;
}

+ (id)deleteAllZonesWithCompletionHandler:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = _s22CloudKitImplementation23CPLCKUtilitiesOperationC14deleteAllZones17completionHandlerSo010CKDatabaseE0CySb_s5Error_pSgtc_tFZ_0(sub_1001111B0, v4);

  return v5;
}

- (CPLCKUtilitiesOperation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CPLCKUtilitiesOperation();
  return [(CPLCKUtilitiesOperation *)&v3 init];
}

@end