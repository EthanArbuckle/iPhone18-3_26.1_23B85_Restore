@interface RGBLivenessController
- (void)cancelAfterAppMovedToBackground;
@end

@implementation RGBLivenessController

- (void)cancelAfterAppMovedToBackground
{
  v3 = type metadata accessor for RGBLivenessModel.Event(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v17 - v15;
  (*(v8 + 16))(v11, self + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v7);
  *v6 = 7;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

@end