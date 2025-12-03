@interface AutoSync
+ (NSString)kAutoSyncHistoryKey;
+ (NSString)syncServiceTaskIdentifier;
- (void)dealloc;
- (void)handleTransactionAdded:(id)added;
@end

@implementation AutoSync

+ (NSString)syncServiceTaskIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)kAutoSyncHistoryKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(AutoSync *)&v7 dealloc];
}

- (void)handleTransactionAdded:(id)added
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100030C0C(v7);
  (*(v4 + 8))(v7, v3);
}

@end