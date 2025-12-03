@interface IDSSendReasonContainer
+ (id)createWithReason:(id)reason;
+ (id)createWithReasonString:(id)string;
+ (id)createWithReasons:(id)reasons;
+ (id)defaultReasonString;
- (IDSSendReasonContainer)init;
- (IDSSendReasonContainer)initWithReasons:(id)reasons;
- (NSArray)reasons;
- (NSString)reasonString;
- (id)addReason:(id)reason;
- (id)stringFromReasons:(id)reasons;
- (void)setReasons:(id)reasons;
@end

@implementation IDSSendReasonContainer

- (NSArray)reasons
{
  v2 = swift_beginAccess();
  type metadata accessor for IDSSendReason(v2);

  v3 = sub_1A7E22520();

  return v3;
}

- (void)setReasons:(id)reasons
{
  type metadata accessor for IDSSendReason(self);
  v4 = sub_1A7E22530();
  v5 = OBJC_IVAR___IDSSendReasonContainer_reasons;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (IDSSendReasonContainer)initWithReasons:(id)reasons
{
  type metadata accessor for IDSSendReason(self);
  *(self + OBJC_IVAR___IDSSendReasonContainer_reasons) = sub_1A7E22530();
  v5.receiver = self;
  v5.super_class = IDSSendReasonContainer;
  return [(IDSSendReasonContainer *)&v5 init];
}

+ (id)createWithReason:(id)reason
{
  sub_1A7CC7FFC(&qword_1EB2B4A98);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418E0;
  *(v4 + 32) = reason;
  v5 = objc_allocWithZone(IDSSendReasonContainer);
  type metadata accessor for IDSSendReason(v5);
  reasonCopy = reason;
  v7 = sub_1A7E22520();

  initWithReasons_ = [v5 initWithReasons_];

  return initWithReasons_;
}

+ (id)createWithReasons:(id)reasons
{
  initWithReasons_ = [objc_allocWithZone(IDSSendReasonContainer) initWithReasons_];

  return initWithReasons_;
}

- (id)addReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  v6 = sub_1A7CD5004(reasonCopy);

  return v6;
}

+ (id)createWithReasonString:(id)string
{
  sub_1A7E22290();
  v3 = sub_1A7CD6D24();

  return v3;
}

- (NSString)reasonString
{
  selfCopy = self;
  sub_1A7CD5308();

  v3 = sub_1A7E22260();

  return v3;
}

+ (id)defaultReasonString
{
  swift_getObjCClassMetadata();
  sub_1A7CD5858();
  v2 = sub_1A7E22260();

  return v2;
}

- (id)stringFromReasons:(id)reasons
{
  type metadata accessor for IDSSendReason(self);
  v4 = sub_1A7E22530();
  selfCopy = self;
  sub_1A7CD6F0C(v4);

  v6 = sub_1A7E22260();

  return v6;
}

- (IDSSendReasonContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end