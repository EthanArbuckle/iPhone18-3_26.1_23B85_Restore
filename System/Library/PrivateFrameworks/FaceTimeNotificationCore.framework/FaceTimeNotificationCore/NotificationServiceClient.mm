@interface NotificationServiceClient
- (_TtC24FaceTimeNotificationCore25NotificationServiceClient)init;
- (void)alertExistsWithId:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)id completionHandler:(id)handler;
- (void)dismissAlertWithIdentifier:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)identifier animated:(BOOL)animated completionHandler:(id)handler;
- (void)frameWithIdentifier:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)identifier completionHandler:(id)handler;
- (void)sendAction:(_TtC24FaceTimeNotificationCore14UpstreamAction *)action to:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)to completionHandler:(id)handler;
- (void)showCallWithCall:(TUCall *)call in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler;
- (void)showDialPromptWithDialRequest:(TUDialRequest *)request in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler;
- (void)showDialPromptWithJoinRequest:(TUJoinConversationRequest *)request in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler;
- (void)showNotice:(_TtC24FaceTimeNotificationCore6Notice *)notice in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler;
- (void)showTestAlertWithConfiguration:(_TtC24FaceTimeNotificationCore18AlertConfiguration *)configuration completionHandler:(id)handler;
@end

@implementation NotificationServiceClient

- (void)sendAction:(_TtC24FaceTimeNotificationCore14UpstreamAction *)action to:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)to completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = action;
  v14[3] = to;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_24A9FED40();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AA01520;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24AA01528;
  v17[5] = v16;
  actionCopy = action;
  toCopy = to;
  selfCopy = self;
  sub_24A9D806C(0, 0, v12, &unk_24AA01530, v17);
}

- (void)showTestAlertWithConfiguration:(_TtC24FaceTimeNotificationCore18AlertConfiguration *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = configuration;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_24A9FED40();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24AA01500;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24AA01508;
  v15[5] = v14;
  configurationCopy = configuration;
  selfCopy = self;
  sub_24A9D806C(0, 0, v10, &unk_24AA01510, v15);
}

- (void)showDialPromptWithDialRequest:(TUDialRequest *)request in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = request;
  v14[3] = in;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_24A9FED40();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AA014E0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24AA014E8;
  v17[5] = v16;
  requestCopy = request;
  inCopy = in;
  selfCopy = self;
  sub_24A9D806C(0, 0, v12, &unk_24AA014F0, v17);
}

- (void)showDialPromptWithJoinRequest:(TUJoinConversationRequest *)request in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = request;
  v14[3] = in;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_24A9FED40();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AA014C0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24AA014C8;
  v17[5] = v16;
  requestCopy = request;
  inCopy = in;
  selfCopy = self;
  sub_24A9D806C(0, 0, v12, &unk_24AA014D0, v17);
}

- (void)showCallWithCall:(TUCall *)call in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = call;
  v14[3] = in;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_24A9FED40();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AA014A0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24AA014A8;
  v17[5] = v16;
  callCopy = call;
  inCopy = in;
  selfCopy = self;
  sub_24A9D806C(0, 0, v12, &unk_24AA014B0, v17);
}

- (void)showNotice:(_TtC24FaceTimeNotificationCore6Notice *)notice in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = notice;
  v14[3] = in;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_24A9FED40();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AA01480;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24AA01488;
  v17[5] = v16;
  noticeCopy = notice;
  inCopy = in;
  selfCopy = self;
  sub_24A9D806C(0, 0, v12, &unk_24AA01490, v17);
}

- (void)dismissAlertWithIdentifier:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)identifier animated:(BOOL)animated completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = identifier;
  *(v14 + 24) = animated;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_24A9FED40();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AA01460;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24AA01468;
  v17[5] = v16;
  identifierCopy = identifier;
  selfCopy = self;
  sub_24A9D806C(0, 0, v12, &unk_24AA01470, v17);
}

- (void)alertExistsWithId:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)id completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = id;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_24A9FED40();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24AA01440;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24AA01448;
  v15[5] = v14;
  idCopy = id;
  selfCopy = self;
  sub_24A9D806C(0, 0, v10, &unk_24AA01450, v15);
}

- (void)frameWithIdentifier:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)identifier completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_24A9FED40();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24AA013F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24AA01408;
  v15[5] = v14;
  identifierCopy = identifier;
  selfCopy = self;
  sub_24A9D806C(0, 0, v10, &unk_24AA01418, v15);
}

- (_TtC24FaceTimeNotificationCore25NotificationServiceClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end