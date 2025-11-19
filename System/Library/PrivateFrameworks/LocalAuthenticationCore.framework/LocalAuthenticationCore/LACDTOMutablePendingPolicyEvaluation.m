@interface LACDTOMutablePendingPolicyEvaluation
- (BOOL)hasNotifiedUserAboutCompletion;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInvalidated;
- (BOOL)isNotificationScheduledForDate:(id)a3;
- (NSString)description;
- (NSString)identifier;
- (NSURL)callbackURL;
- (_TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation)init;
- (_TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation)initWithIdentifier:(id)a3;
- (void)setCallbackURL:(id)a3;
- (void)setIsInvalidated:(BOOL)a3;
@end

@implementation LACDTOMutablePendingPolicyEvaluation

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier);
  v3 = *(self + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier + 8);

  v4 = MEMORY[0x1B27229A0](v2, v3);

  return v4;
}

- (BOOL)isInvalidated
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsInvalidated:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSURL)callbackURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackURL;
  swift_beginAccess();
  outlined init with copy of (String, Any)(self + v7, v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v13 = v12;
    (*(v9 + 8))(v6, v8);
    v11 = v13;
  }

  return v11;
}

- (void)setCallbackURL:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackURL;
  swift_beginAccess();
  v12 = self;
  outlined assign with take of URL?(v8, self + v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  swift_endAccess();
}

- (BOOL)hasNotifiedUserAboutCompletion
{
  v2 = self;
  v3 = LACDTOMutablePendingPolicyEvaluation.hasNotifiedUserAboutCompletion.getter();

  return v3 & 1;
}

- (_TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation)initWithIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(self + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated) = 0;
  v7 = (self + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackReason);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackURL;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_notificationScheduledAt;
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 56);
  v12(self + v10, 1, 1, v11);
  v12(self + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_coolOffStarted, 1, 1, v11);
  v13 = (self + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_ratchetUUID);
  *v13 = 0;
  v13[1] = 0;
  v14 = (self + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier);
  *v14 = v4;
  v14[1] = v6;
  v16.receiver = self;
  v16.super_class = type metadata accessor for LACDTOMutablePendingPolicyEvaluation();
  return [(LACDTOMutablePendingPolicyEvaluation *)&v16 init];
}

- (BOOL)isNotificationScheduledForDate:(id)a3
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = LACDTOMutablePendingPolicyEvaluation.isNotificationScheduled(for:)(v8);

  (*(v5 + 8))(v8, v4);
  return v10 & 1;
}

- (_TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  v3 = LACDTOMutablePendingPolicyEvaluation.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B27229A0](v3, v5);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = LACDTOMutablePendingPolicyEvaluation.isEqual(_:)(v8);

  outlined destroy of AsyncStream<()>.Continuation?(v8, &_sypSgMd, _sypSgMR);
  return v6 & 1;
}

@end