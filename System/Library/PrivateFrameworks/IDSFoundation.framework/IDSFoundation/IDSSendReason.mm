@interface IDSSendReason
- (BOOL)isEqual:(id)a3;
- (IDSSendReason)init;
- (IDSSendReason)initWithGenericReason:(int64_t)a3 genericSubreason:(int64_t)a4 genericPathID:(id)a5;
- (NSString)pathID;
- (int64_t)reason;
- (int64_t)subreason;
- (void)setPathID:(id)a3;
- (void)setReason:(int64_t)a3;
- (void)setSubreason:(int64_t)a3;
@end

@implementation IDSSendReason

- (int64_t)reason
{
  v3 = OBJC_IVAR___IDSSendReason_reason;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setReason:(int64_t)a3
{
  v5 = OBJC_IVAR___IDSSendReason_reason;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)subreason
{
  v3 = OBJC_IVAR___IDSSendReason_subreason;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSubreason:(int64_t)a3
{
  v5 = OBJC_IVAR___IDSSendReason_subreason;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)pathID
{
  swift_beginAccess();

  v2 = sub_1A7E22260();

  return v2;
}

- (void)setPathID:(id)a3
{
  v4 = sub_1A7E22290();
  v6 = v5;
  v7 = (self + OBJC_IVAR___IDSSendReason_pathID);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (IDSSendReason)initWithGenericReason:(int64_t)a3 genericSubreason:(int64_t)a4 genericPathID:(id)a5
{
  v8 = sub_1A7E22290();
  *(self + OBJC_IVAR___IDSSendReason_reason) = a3;
  *(self + OBJC_IVAR___IDSSendReason_subreason) = a4;
  v9 = (self + OBJC_IVAR___IDSSendReason_pathID);
  *v9 = v8;
  v9[1] = v10;
  v12.receiver = self;
  v12.super_class = IDSSendReason;
  return [(IDSSendReason *)&v12 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1A7E22AA0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = IDSSendReason.isEqual(_:)(v8);

  sub_1A7CD4B1C(v8);
  return v6 & 1;
}

- (IDSSendReason)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end