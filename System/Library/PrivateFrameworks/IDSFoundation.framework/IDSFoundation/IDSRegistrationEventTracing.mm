@interface IDSRegistrationEventTracing
+ (IDSRegistrationEventTracing)sharedInstance;
- (BOOL)isRegistrationOpenWithGuid:(id)guid;
- (id)fetchLastRegistrationStatesForServices:(id)services summary:(BOOL)summary;
- (void)beginEvent:(id)event identifier:(id)identifier;
- (void)endEvent:(id)event identifier:(id)identifier error:(id)error;
- (void)trackIDSMessageWithIdentifier:(id)identifier messageType:(int64_t)type operation:(id)operation;
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

- (BOOL)isRegistrationOpenWithGuid:(id)guid
{
  v5 = OBJC_IVAR___IDSRegistrationEventTracing_registrationOperations;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  guidCopy = guid;
  selfCopy = self;

  v9 = sub_1A7DA3C48(guidCopy, v6);

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

- (void)beginEvent:(id)event identifier:(id)identifier
{
  swift_unknownObjectRetain();
  identifierCopy = identifier;
  selfCopy = self;
  sub_1A7DA5910(event, identifierCopy);
  swift_unknownObjectRelease();
}

- (void)endEvent:(id)event identifier:(id)identifier error:(id)error
{
  swift_unknownObjectRetain();
  identifierCopy = identifier;
  errorCopy = error;
  selfCopy = self;
  sub_1A7DA6A30(event, identifierCopy, error);
  swift_unknownObjectRelease();
}

- (void)trackIDSMessageWithIdentifier:(id)identifier messageType:(int64_t)type operation:(id)operation
{
  identifierCopy = identifier;
  operationCopy = operation;
  selfCopy = self;
  sub_1A7DA73C0(identifierCopy, type, operationCopy);
}

- (id)fetchLastRegistrationStatesForServices:(id)services summary:(BOOL)summary
{
  summaryCopy = summary;
  sub_1A7CD1EB4();
  v6 = sub_1A7E22530();
  selfCopy = self;
  sub_1A7DA77A8(v6, summaryCopy);

  sub_1A7CC7FFC(&qword_1EB2B7230);
  sub_1A7DAA7E8();
  v8 = sub_1A7E22160();

  return v8;
}

@end