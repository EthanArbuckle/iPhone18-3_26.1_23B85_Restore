@interface ConcreteFPDPurger
+ (id)sharedPurger;
- (_TtC18FileProviderDaemon17ConcreteFPDPurger)init;
- (void)barrierWithCompletionHandler:(id)handler;
- (void)purgeAndWaitAtUrl:(id)url;
- (void)purgeAsyncAtUrl:(id)url;
@end

@implementation ConcreteFPDPurger

- (_TtC18FileProviderDaemon17ConcreteFPDPurger)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ConcreteFPDPurger *)&v3 init];
}

+ (id)sharedPurger
{
  if (qword_1EDEA70C8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDEA70D0;

  return v3;
}

- (void)purgeAndWaitAtUrl:(id)url
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1CF9E59D8();
  v9 = qword_1EDEA70E0;
  selfCopy = self;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = fpfs_current_log();
  MEMORY[0x1EEE9AC00](v11);
  *&v13[-16] = selfCopy;
  *&v13[-8] = v8;
  sub_1CF741DE8(v12, "purgeAndWait(at:)", 17, 2, sub_1CF745824, &v13[-32]);

  (*(v5 + 8))(v8, v4);
}

- (void)purgeAsyncAtUrl:(id)url
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1CF9E59D8();
  v11 = qword_1EDEA70E0;
  selfCopy = self;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = fpfs_current_log();
  (*(v5 + 16))(v7, v10, v4);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = selfCopy;
  (*(v5 + 32))(v15 + v14, v7, v4);
  v16 = selfCopy;
  sub_1CF01001C(v13, "purgeAsync(at:)", 15, 2, sub_1CF745820, v15);

  (*(v5 + 8))(v10, v4);
}

- (void)barrierWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  if (qword_1EDEA70E0 != -1)
  {
    swift_once();
  }

  v5 = fpfs_current_log();
  MEMORY[0x1EEE9AC00](v5);
  v7[2] = sub_1CF744650;
  v7[3] = v4;
  sub_1CF741DE8(v6, "barrier(completionHandler:)", 27, 2, sub_1CF745808, v7);
}

@end