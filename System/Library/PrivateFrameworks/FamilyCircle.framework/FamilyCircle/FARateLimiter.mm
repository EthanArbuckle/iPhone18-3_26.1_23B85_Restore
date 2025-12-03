@interface FARateLimiter
- (BOOL)isAllowedWithClientName:(id)name;
- (FARateLimiter)init;
- (FARateLimiter)initWithIdentifier:(id)identifier;
- (FARateLimiter)initWithPersistence:(id)persistence identifier:(id)identifier getDate:(id)date;
- (void)recordCallWithClientName:(id)name;
@end

@implementation FARateLimiter

- (FARateLimiter)initWithIdentifier:(id)identifier
{
  v5 = objc_opt_self();
  identifierCopy = identifier;
  standardUserDefaults = [v5 standardUserDefaults];
  v11[4] = j___s10Foundation4DateV3nowACvgZ;
  v11[5] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000353F0;
  v11[3] = &unk_1000A8018;
  v8 = _Block_copy(v11);
  v9 = [(FARateLimiter *)self initWithPersistence:standardUserDefaults identifier:identifierCopy getDate:v8];
  _Block_release(v8);

  return v9;
}

- (FARateLimiter)initWithPersistence:(id)persistence identifier:(id)identifier getDate:(id)date
{
  v5 = _Block_copy(date);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = swift_unknownObjectRetain();
  return RateLimiter.init(persistence:identifier:getDate:)(v10, v6, v8, sub_100037E2C, v9);
}

- (BOOL)isAllowedWithClientName:(id)name
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR___FARateLimiter_queue);
  selfCopy = self;
  OS_dispatch_queue.sync<A>(execute:)();

  return v7;
}

- (void)recordCallWithClientName:(id)name
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  RateLimiter.recordCall(clientName:)(v8);
}

- (FARateLimiter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end