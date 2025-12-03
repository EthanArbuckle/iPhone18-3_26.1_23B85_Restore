@interface CSEnhancedEndpointerInputVectorAcoustic
- (_TtC20CoreSpeechFoundation39CSEnhancedEndpointerInputVectorAcoustic)init;
- (_TtP20CoreSpeechFoundation29CSEnhancedEndpointerModelType_)modelType;
- (id)modelName;
- (void)setMultiArray:(id)array;
@end

@implementation CSEnhancedEndpointerInputVectorAcoustic

- (_TtP20CoreSpeechFoundation29CSEnhancedEndpointerModelType_)modelType
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC20CoreSpeechFoundation39CSEnhancedEndpointerInputVectorAcoustic_modelType);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setMultiArray:(id)array
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC20CoreSpeechFoundation39CSEnhancedEndpointerInputVectorAcoustic_multiArray);
  *(&self->super.isa + OBJC_IVAR____TtC20CoreSpeechFoundation39CSEnhancedEndpointerInputVectorAcoustic_multiArray) = array;
  arrayCopy = array;
}

- (id)modelName
{
  modelName = [*(&self->super.isa + OBJC_IVAR____TtC20CoreSpeechFoundation39CSEnhancedEndpointerInputVectorAcoustic_modelType) modelName];

  return modelName;
}

- (_TtC20CoreSpeechFoundation39CSEnhancedEndpointerInputVectorAcoustic)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end