@interface EffectPickerExtensionDetails
- (_TtC7ChatKit28EffectPickerExtensionDetails)init;
- (void)clearCurrentEffect;
- (void)createView;
@end

@implementation EffectPickerExtensionDetails

- (void)createView
{
  selfCopy = self;
  sub_190B3B378();
}

- (void)clearCurrentEffect
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_190D53910();
}

- (_TtC7ChatKit28EffectPickerExtensionDetails)init
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DD60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC7ChatKit28EffectPickerExtensionDetails__currentEffect;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B768);
  sub_190D538D0();
  (*(v4 + 32))(self + v7, v6, v3);
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit28EffectPickerExtensionDetails_effectData) = MEMORY[0x1E69E7CC0];
  v8 = type metadata accessor for EffectPickerExtensionDetails();
  v10.receiver = self;
  v10.super_class = v8;
  return [(EffectPickerExtensionDetails *)&v10 init];
}

@end