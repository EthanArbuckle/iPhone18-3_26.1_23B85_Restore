@interface _MADObjCThemeGenerator
- (_MADObjCThemeGenerator)init;
- (void)generateThemesMM:(id)a3 setGMSBackgroundTaskPriority:(BOOL)a4 completion:(id)a5;
@end

@implementation _MADObjCThemeGenerator

- (_MADObjCThemeGenerator)init
{
  type metadata accessor for CollectionUnderstandingMultiModalInferenceProvider(0);
  v3 = swift_allocObject();
  sub_1001BEDAC();
  *(&self->super.isa + OBJC_IVAR____MADObjCThemeGenerator_collectionUnderstandingMultiModalInferenceProvider) = v3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for _MADObjCThemeGenerator();
  return [(_MADObjCThemeGenerator *)&v5 init];
}

- (void)generateThemesMM:(id)a3 setGMSBackgroundTaskPriority:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_1001C6338(0, &qword_1002B7FD8);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  _MADObjCThemeGenerator.generateThemesMM(_:setGMSBackgroundTaskPriority:completion:)(v8, a4, sub_1001C6380, v9);
}

@end