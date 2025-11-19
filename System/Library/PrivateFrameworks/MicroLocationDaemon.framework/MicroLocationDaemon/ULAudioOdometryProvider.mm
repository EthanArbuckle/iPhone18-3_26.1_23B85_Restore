@interface ULAudioOdometryProvider
- (ULAudioOdometryProvider)init;
- (ULAudioOdometryProvider)initWithQueue:(id)a3;
- (void)startWithUpdateInterval:(double)a3 handler:(id)a4 completionHandler:;
- (void)stopWithCompletionHandler:(id)a3;
@end

@implementation ULAudioOdometryProvider

- (ULAudioOdometryProvider)initWithQueue:(id)a3
{
  v4 = a3;
  swift_defaultActor_initialize();
  *&self->audioAccessoryManager[32] = 0;
  *self->odometryTask = 0;
  *self->odometryHandler = 0;
  v5 = [objc_allocWithZone(MEMORY[0x277CC1C20]) init];
  *&self->audioAccessoryManager[16] = sub_2591E928C();
  *&self->audioAccessoryManager[24] = &off_286A5FC80;
  *&self->_anon_60[8] = v5;
  *&self->odometryHandler[8] = v4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudioOdometryProvider();
  return [(ULAudioOdometryProvider *)&v7 init];
}

- (void)startWithUpdateInterval:(double)a3 handler:(id)a4 completionHandler:
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a4);
  v14 = _Block_copy(v5);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = v13;
  *(v15 + 32) = v14;
  *(v15 + 40) = self;
  v16 = sub_259212920();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_259225EC8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_259225ED0;
  v18[5] = v17;

  sub_2591F2F9C(0, 0, v12, &unk_259225ED8, v18);
}

- (void)stopWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_259212920();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_259225EA8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_259225EB0;
  v13[5] = v12;

  sub_2591F2F9C(0, 0, v8, &unk_259226200, v13);
}

- (ULAudioOdometryProvider)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end