@interface CSEnhancedEndpointerInputVectorDefault
- (_TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorDefault)init;
- (_TtP20CoreSpeechFoundation29CSEnhancedEndpointerModelType_)modelType;
- (id)modelName;
- (id)multiArrayWithContext:(void *)context;
- (void)setMultiArray:(id)array;
@end

@implementation CSEnhancedEndpointerInputVectorDefault

- (id)multiArrayWithContext:(void *)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_1DDA557AC(contextCopy);

  return v6;
}

- (_TtP20CoreSpeechFoundation29CSEnhancedEndpointerModelType_)modelType
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorDefault_modelType);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setMultiArray:(id)array
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorDefault_multiArray);
  *(&self->super.isa + OBJC_IVAR____TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorDefault_multiArray) = array;
  arrayCopy = array;
}

- (id)modelName
{
  modelName = [*(&self->super.isa + OBJC_IVAR____TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorDefault_modelType) modelName];

  return modelName;
}

- (_TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorDefault)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end