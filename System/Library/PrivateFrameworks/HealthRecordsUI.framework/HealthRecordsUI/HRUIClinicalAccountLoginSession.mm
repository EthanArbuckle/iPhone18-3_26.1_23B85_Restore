@interface HRUIClinicalAccountLoginSession
- (BOOL)startLoginWithGateway:(id)gateway loginCancelledHandler:(id)handler callbackErrorHandler:(id)errorHandler error:(id *)error;
- (BOOL)startReloginToAccount:(id)account viewController:(id)controller profile:(id)profile loginCancelledHandler:(id)handler callbackErrorHandler:(id)errorHandler error:(id *)error;
- (HRUIClinicalAccountLoginSession)init;
- (HRUIClinicalAccountLoginSession)initWithAccountStore:(id)store presentationAnchor:(id)anchor funnelContext:(int64_t)context;
@end

@implementation HRUIClinicalAccountLoginSession

- (HRUIClinicalAccountLoginSession)initWithAccountStore:(id)store presentationAnchor:(id)anchor funnelContext:(int64_t)context
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___HRUIClinicalAccountLoginSession_authSession) = 0;
  *(&self->super.isa + OBJC_IVAR___HRUIClinicalAccountLoginSession_accountStore) = store;
  *(&self->super.isa + OBJC_IVAR___HRUIClinicalAccountLoginSession_presentationAnchor) = anchor;
  *(&self->super.isa + OBJC_IVAR___HRUIClinicalAccountLoginSession_funnelContext) = context;
  v13.receiver = self;
  v13.super_class = ObjectType;
  storeCopy = store;
  anchorCopy = anchor;
  return [(HRUIClinicalAccountLoginSession *)&v13 init];
}

- (BOOL)startLoginWithGateway:(id)gateway loginCancelledHandler:(id)handler callbackErrorHandler:(id)errorHandler error:(id *)error
{
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - v11;
  v13 = _Block_copy(handler);
  v14 = _Block_copy(errorHandler);
  if (v13)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    v13 = sub_1D10C807C;
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = sub_1D13905DC();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  sub_1D13905AC();
  gatewayCopy = gateway;
  selfCopy = self;
  v20 = gatewayCopy;
  sub_1D102CE24(v13);

  v21 = sub_1D139059C();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = selfCopy;
  v22[5] = v20;
  v22[6] = v13;
  v22[7] = v15;
  v22[8] = sub_1D10C8088;
  v22[9] = v16;
  sub_1D10BDAEC(0, 0, v12, &unk_1D139FE20, v22);

  sub_1D102CC60(v13);

  return 1;
}

- (BOOL)startReloginToAccount:(id)account viewController:(id)controller profile:(id)profile loginCancelledHandler:(id)handler callbackErrorHandler:(id)errorHandler error:(id *)error
{
  selfCopy = self;
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v32 - v14;
  v16 = _Block_copy(handler);
  v17 = _Block_copy(errorHandler);
  if (v16)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v16 = sub_1D10C7B38;
  }

  else
  {
    v18 = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v20 = sub_1D13905DC();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  sub_1D13905AC();
  accountCopy = account;
  controllerCopy = controller;
  profileCopy = profile;
  v24 = selfCopy;
  v25 = accountCopy;
  v26 = controllerCopy;
  v27 = profileCopy;
  sub_1D102CE24(v16);

  v28 = sub_1D139059C();
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E85E0];
  v29[2] = v28;
  v29[3] = v30;
  v29[4] = v24;
  v29[5] = v25;
  v29[6] = v26;
  v29[7] = v27;
  v29[8] = v16;
  v29[9] = v18;
  v29[10] = sub_1D10C7AC4;
  v29[11] = v19;
  sub_1D10BDDF8(0, 0, v15, &unk_1D139FE18, v29);

  sub_1D102CC60(v16);

  return 1;
}

- (HRUIClinicalAccountLoginSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end