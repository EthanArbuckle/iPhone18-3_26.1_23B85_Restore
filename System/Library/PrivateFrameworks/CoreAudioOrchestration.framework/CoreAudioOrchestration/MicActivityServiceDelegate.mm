@interface MicActivityServiceDelegate
- (void)disableMicrophoneActivityDetection:(id)detection;
- (void)enableMicrophoneActivityDetection:(id)detection;
- (void)listenForMicrophoneActivity:(NSXPCListenerEndpoint *)activity reply:(id)reply;
- (void)stopListeningForMicrophoneActivity:(id)activity;
@end

@implementation MicActivityServiceDelegate

- (void)enableMicrophoneActivityDetection:(id)detection
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC8, "Ĉ");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(detection);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2450E5908();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2450EEAF0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2450EEAF8;
  v13[5] = v12;

  sub_2450CFF64(0, 0, v8, &unk_2450EEB00, v13);
}

- (void)disableMicrophoneActivityDetection:(id)detection
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC8, "Ĉ");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(detection);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2450E5908();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2450EEAC8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2450EEAD0;
  v13[5] = v12;

  sub_2450CFF64(0, 0, v8, &unk_2450EEAD8, v13);
}

- (void)listenForMicrophoneActivity:(NSXPCListenerEndpoint *)activity reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC8, "Ĉ");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  v12[2] = activity;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2450E5908();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2450EEAA0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2450EEAA8;
  v15[5] = v14;
  activityCopy = activity;

  sub_2450CFF64(0, 0, v10, &unk_2450EEAB0, v15);
}

- (void)stopListeningForMicrophoneActivity:(id)activity
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC8, "Ĉ");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(activity);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2450E5908();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2450EEA50;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2450EEA60;
  v13[5] = v12;

  sub_2450CFF64(0, 0, v8, &unk_2450EEA70, v13);
}

@end