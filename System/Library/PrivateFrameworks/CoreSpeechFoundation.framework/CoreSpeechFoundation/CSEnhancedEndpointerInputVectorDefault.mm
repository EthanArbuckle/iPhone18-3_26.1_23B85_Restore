@interface CSEnhancedEndpointerInputVectorDefault
- (_TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorDefault)init;
- (_TtP20CoreSpeechFoundation29CSEnhancedEndpointerModelType_)modelType;
- (id)modelName;
- (id)multiArrayWithContext:(void *)a3;
- (void)setMultiArray:(id)a3;
@end

@implementation CSEnhancedEndpointerInputVectorDefault

- (id)multiArrayWithContext:(void *)a3
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1DDA557AC(v4);

  return v6;
}

- (_TtP20CoreSpeechFoundation29CSEnhancedEndpointerModelType_)modelType
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorDefault_modelType);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setMultiArray:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorDefault_multiArray);
  *(&self->super.isa + OBJC_IVAR____TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorDefault_multiArray) = a3;
  v3 = a3;
}

- (id)modelName
{
  v2 = [*(&self->super.isa + OBJC_IVAR____TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorDefault_modelType) modelName];

  return v2;
}

- (_TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorDefault)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end