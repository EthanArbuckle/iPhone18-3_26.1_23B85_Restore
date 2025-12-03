@interface SpatialFeatureContent
- (BOOL)allowForceFitTest;
- (NSString)putAccesssoryInEar;
- (NSString)removeAccessoryFromEar;
- (_TtC19HeadphoneSettingsUI21SpatialFeatureContent)initWithRemoveString:(id)string putInEarString:(id)earString forceFitTest:(BOOL)test;
@end

@implementation SpatialFeatureContent

- (NSString)removeAccessoryFromEar
{
  MEMORY[0x1E69E5928](self);
  SpatialFeatureContent.removeAccessoryFromEar.getter();
  MEMORY[0x1E69E5920](self);
  v4 = sub_1AC30A91C();

  return v4;
}

- (NSString)putAccesssoryInEar
{
  MEMORY[0x1E69E5928](self);
  SpatialFeatureContent.putAccesssoryInEar.getter();
  MEMORY[0x1E69E5920](self);
  v4 = sub_1AC30A91C();

  return v4;
}

- (BOOL)allowForceFitTest
{
  MEMORY[0x1E69E5928](self);
  SpatialFeatureContent.allowForceFitTest.getter();
  MEMORY[0x1E69E5920](self);
  return sub_1AC3090FC() & 1;
}

- (_TtC19HeadphoneSettingsUI21SpatialFeatureContent)initWithRemoveString:(id)string putInEarString:(id)earString forceFitTest:(BOOL)test
{
  MEMORY[0x1E69E5928](string);
  MEMORY[0x1E69E5928](earString);
  v12 = sub_1AC30A92C();
  v9 = v5;
  v10 = sub_1AC30A92C();
  v11 = v6;
  v7 = sub_1AC30910C();
  v15 = SpatialFeatureContent.init(removeString:putInEarString:forceFitTest:)(v12, v9, v10, v11, v7 & 1);
  MEMORY[0x1E69E5920](earString);
  MEMORY[0x1E69E5920](string);
  return v15;
}

@end