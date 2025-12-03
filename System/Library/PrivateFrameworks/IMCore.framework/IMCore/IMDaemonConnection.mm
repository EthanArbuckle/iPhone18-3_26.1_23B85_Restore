@interface IMDaemonConnection
- (BOOL)isConnected;
- (IMDaemonConnection)init;
- (id)onSetupComplete;
- (void)connectWithCapabilities:(unint64_t)capabilities context:(id)context contextChanged:(BOOL)changed;
- (void)requestSetupIfNeededWithCompletionHandler:(id)handler;
- (void)setOnSetupComplete:(id)complete;
- (void)waitForSetup;
@end

@implementation IMDaemonConnection

- (void)setOnSetupComplete:(id)complete
{
  v4 = _Block_copy(complete);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1A824C108;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(&self->super.isa + OBJC_IVAR___IMDaemonConnection_queue);
  MEMORY[0x1EEE9AC00]();
  selfCopy = self;
  sub_1A84E5A5C();
  sub_1A8245638(v5);
}

- (BOOL)isConnected
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMDaemonConnection_queue);
  selfCopy = self;
  sub_1A84E5A5C();

  return v5;
}

- (void)waitForSetup
{
  selfCopy = self;
  DaemonConnection.waitForSetup()();
}

- (void)connectWithCapabilities:(unint64_t)capabilities context:(id)context contextChanged:(BOOL)changed
{
  v8 = sub_1A84E5D3C();
  v9 = *(&self->super.isa + OBJC_IVAR___IMDaemonConnection_queue);
  v10 = swift_allocObject();
  *(v10 + 16) = capabilities;
  *(v10 + 24) = v8;
  *(v10 + 32) = changed;
  *(v10 + 40) = self;
  selfCopy = self;
  sub_1A84E5A6C();
}

- (void)requestSetupIfNeededWithCompletionHandler:(id)handler
{
  v5 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1A84E60BC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A85008B8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A85008C0;
  v13[5] = v12;
  selfCopy = self;
  sub_1A84CF9DC(0, 0, v8, &unk_1A8507BC0, v13);
}

- (IMDaemonConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)onSetupComplete
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMDaemonConnection_queue);
  selfCopy = self;
  sub_1A83EA2FC(&qword_1EB2E65B0, &qword_1A8500740);
  sub_1A84E5A5C();

  v4 = v8;
  if (v8)
  {
    v5 = v9;
    v6 = swift_allocObject();
    *(v6 + 16) = v8;
    *(v6 + 24) = v5;
    v12 = sub_1A83ECC40;
    v13 = v6;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1A83EB0E4;
    v11 = &unk_1F1B71428;
    v4 = _Block_copy(&v8);
  }

  return v4;
}

@end