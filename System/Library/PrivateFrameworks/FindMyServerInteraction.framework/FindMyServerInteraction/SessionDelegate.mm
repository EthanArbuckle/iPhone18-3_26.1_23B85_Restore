@interface SessionDelegate
- (_TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate)init;
- (void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler;
@end

@implementation SessionDelegate

- (void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC70D0, &qword_24AFCFB78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = session;
  v13[3] = challenge;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_24AFCEC28();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24AFCFB88;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AFCFB98;
  v16[5] = v15;
  sessionCopy = session;
  challengeCopy = challenge;
  selfCopy = self;
  sub_24AFCB49C(0, 0, v11, &unk_24AFCFBA8, v16);
}

- (_TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end