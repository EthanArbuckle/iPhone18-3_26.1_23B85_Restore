@interface IDSRegistrationEventTracing
+ (IDSRegistrationEventTracing)sharedInstance;
- (BOOL)isRegistrationOpenWithGuid:(id)a3;
- (id)fetchLastRegistrationStatesForServices:(id)a3 summary:(BOOL)a4;
- (void)beginEvent:(id)a3 identifier:(id)a4;
- (void)endEvent:(id)a3 identifier:(id)a4 error:(id)a5;
- (void)trackIDSMessageWithIdentifier:(id)a3 messageType:(int64_t)a4 operation:(id)a5;
@end

@implementation IDSRegistrationEventTracing

+ (IDSRegistrationEventTracing)sharedInstance
{
  sub_1A7E22690();
  sub_1A7E22680();
  sub_1A7E225F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EB2B2A78 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB2DC080;

  return v2;
}

- (BOOL)isRegistrationOpenWithGuid:(id)a3
{
  v5 = OBJC_IVAR___IDSRegistrationEventTracing_registrationOperations;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  v7 = a3;
  v8 = self;

  v9 = sub_1A7DA3C48(v7, v6);

  if (v9)
  {
    v10 = OBJC_IVAR___IDSEventTracingOperation_stopped;
    swift_beginAccess();
    LOBYTE(v10) = v9[v10];

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)beginEvent:(id)a3 identifier:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_1A7DA5910(a3, v7);
  swift_unknownObjectRelease();
}

- (void)endEvent:(id)a3 identifier:(id)a4 error:(id)a5
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1A7DA6A30(a3, v9, a5);
  swift_unknownObjectRelease();
}

- (void)trackIDSMessageWithIdentifier:(id)a3 messageType:(int64_t)a4 operation:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_1A7DA73C0(v8, a4, v9);
}

- (id)fetchLastRegistrationStatesForServices:(id)a3 summary:(BOOL)a4
{
  v4 = a4;
  sub_1A7CD1EB4();
  v6 = sub_1A7E22530();
  v7 = self;
  sub_1A7DA77A8(v6, v4);

  sub_1A7CC7FFC(&qword_1EB2B7230);
  sub_1A7DAA7E8();
  v8 = sub_1A7E22160();

  return v8;
}

@end