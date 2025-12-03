@interface _MADObjCThemeGenerator
- (_MADObjCThemeGenerator)init;
- (void)generateThemesMM:(id)m setGMSBackgroundTaskPriority:(BOOL)priority completion:(id)completion;
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

- (void)generateThemesMM:(id)m setGMSBackgroundTaskPriority:(BOOL)priority completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_1001C6338(0, &qword_1002B7FD8);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  _MADObjCThemeGenerator.generateThemesMM(_:setGMSBackgroundTaskPriority:completion:)(v8, priority, sub_1001C6380, v9);
}

@end