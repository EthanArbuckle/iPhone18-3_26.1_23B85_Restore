@interface ICAudioRecordingManager
+ (ICAttachment)currentAttachment;
+ (void)cancelCurrentAudioRecordingSessionWithCompletionHandler:(id)a3;
- (ICAudioRecordingManager)init;
@end

@implementation ICAudioRecordingManager

+ (ICAttachment)currentAttachment
{
  if (qword_1EDE32ED8 != -1)
  {
    swift_once();
  }

  v2 = AudioRecordingCoordinator.currentAttachment.getter();

  return v2;
}

+ (void)cancelCurrentAudioRecordingSessionWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_1D4419F94();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1D4436C00;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1D4436C08;
  v12[5] = v11;
  sub_1D4315CE0(0, 0, v7, &unk_1D4436C10, v12);
}

- (ICAudioRecordingManager)init
{
  v3.receiver = self;
  v3.super_class = ICAudioRecordingManager;
  return [(ICAudioRecordingManager *)&v3 init];
}

@end