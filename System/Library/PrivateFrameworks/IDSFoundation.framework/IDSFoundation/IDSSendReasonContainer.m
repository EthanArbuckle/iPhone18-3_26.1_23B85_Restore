@interface IDSSendReasonContainer
+ (id)createWithReason:(id)a3;
+ (id)createWithReasonString:(id)a3;
+ (id)createWithReasons:(id)a3;
+ (id)defaultReasonString;
- (IDSSendReasonContainer)init;
- (IDSSendReasonContainer)initWithReasons:(id)a3;
- (NSArray)reasons;
- (NSString)reasonString;
- (id)addReason:(id)a3;
- (id)stringFromReasons:(id)a3;
- (void)setReasons:(id)a3;
@end

@implementation IDSSendReasonContainer

- (NSArray)reasons
{
  v2 = swift_beginAccess();
  type metadata accessor for IDSSendReason(v2);

  v3 = sub_1A7E22520();

  return v3;
}

- (void)setReasons:(id)a3
{
  type metadata accessor for IDSSendReason(self);
  v4 = sub_1A7E22530();
  v5 = OBJC_IVAR___IDSSendReasonContainer_reasons;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (IDSSendReasonContainer)initWithReasons:(id)a3
{
  type metadata accessor for IDSSendReason(self);
  *(self + OBJC_IVAR___IDSSendReasonContainer_reasons) = sub_1A7E22530();
  v5.receiver = self;
  v5.super_class = IDSSendReasonContainer;
  return [(IDSSendReasonContainer *)&v5 init];
}

+ (id)createWithReason:(id)a3
{
  sub_1A7CC7FFC(&qword_1EB2B4A98);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418E0;
  *(v4 + 32) = a3;
  v5 = objc_allocWithZone(IDSSendReasonContainer);
  type metadata accessor for IDSSendReason(v5);
  v6 = a3;
  v7 = sub_1A7E22520();

  v8 = [v5 initWithReasons_];

  return v8;
}

+ (id)createWithReasons:(id)a3
{
  v3 = [objc_allocWithZone(IDSSendReasonContainer) initWithReasons_];

  return v3;
}

- (id)addReason:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1A7CD5004(v4);

  return v6;
}

+ (id)createWithReasonString:(id)a3
{
  sub_1A7E22290();
  v3 = sub_1A7CD6D24();

  return v3;
}

- (NSString)reasonString
{
  v2 = self;
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

- (id)stringFromReasons:(id)a3
{
  type metadata accessor for IDSSendReason(self);
  v4 = sub_1A7E22530();
  v5 = self;
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