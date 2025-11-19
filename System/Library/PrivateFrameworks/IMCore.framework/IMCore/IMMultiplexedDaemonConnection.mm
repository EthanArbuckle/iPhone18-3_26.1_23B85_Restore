@interface IMMultiplexedDaemonConnection
- (IMMultiplexedDaemonConnection)init;
- (IMMultiplexedDaemonConnection)initWithLabel:(id)a3 capabilities:(unint64_t)a4 context:(id)a5 onInvalidate:(id)a6 onDealloc:(id)a7;
- (NSDictionary)context;
- (NSString)label;
- (void)connectWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)waitForSetup;
@end

@implementation IMMultiplexedDaemonConnection

- (IMMultiplexedDaemonConnection)initWithLabel:(id)a3 capabilities:(unint64_t)a4 context:(id)a5 onInvalidate:(id)a6 onDealloc:(id)a7
{
  ObjectType = swift_getObjectType();
  v13 = _Block_copy(a6);
  v14 = _Block_copy(a7);
  v15 = sub_1A84E5DBC();
  v17 = v16;
  if (a5)
  {
    a5 = sub_1A84E5D3C();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  v20 = (self + OBJC_IVAR___IMMultiplexedDaemonConnection_label);
  *v20 = v15;
  v20[1] = v17;
  *(self + OBJC_IVAR___IMMultiplexedDaemonConnection_capabilities) = a4;
  *(self + OBJC_IVAR___IMMultiplexedDaemonConnection_context) = a5;
  v21 = (self + OBJC_IVAR___IMMultiplexedDaemonConnection_onInvalidate);
  *v21 = sub_1A847DA80;
  v21[1] = v18;
  v22 = (self + OBJC_IVAR___IMMultiplexedDaemonConnection_onDeinit);
  *v22 = sub_1A847DA90;
  v22[1] = v19;
  v24.receiver = self;
  v24.super_class = ObjectType;
  return [(IMMultiplexedDaemonConnection *)&v24 init];
}

- (NSDictionary)context
{
  if (*(self + OBJC_IVAR___IMMultiplexedDaemonConnection_context))
  {
    v2 = *(self + OBJC_IVAR___IMMultiplexedDaemonConnection_context);

    v3 = sub_1A84E5D2C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)connectWithCompletion:(id)a3
{
  v5 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1A84E60BC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A8507BB0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A85008C0;
  v13[5] = v12;
  v14 = self;
  sub_1A84CF9DC(0, 0, v8, &unk_1A8507BC0, v13);
}

- (NSString)label
{
  v2 = *(self + OBJC_IVAR___IMMultiplexedDaemonConnection_label);
  v3 = *(self + OBJC_IVAR___IMMultiplexedDaemonConnection_label + 8);

  v4 = sub_1A84E5D8C();

  return v4;
}

- (void)waitForSetup
{
  v2 = self;
  MultiplexedDaemonConnection.waitForSetup()();
}

- (void)invalidate
{
  v2 = self;
  MultiplexedDaemonConnection.invalidate()();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v5 = *(self + OBJC_IVAR___IMMultiplexedDaemonConnection_onDeinit);
  v4 = *(self + OBJC_IVAR___IMMultiplexedDaemonConnection_onDeinit + 8);
  v6 = self;

  v5(v7);

  v8.receiver = v6;
  v8.super_class = ObjectType;
  [(IMMultiplexedDaemonConnection *)&v8 dealloc];
}

- (IMMultiplexedDaemonConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end