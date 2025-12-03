@interface IDSSendReason
- (BOOL)isEqual:(id)equal;
- (IDSSendReason)init;
- (IDSSendReason)initWithGenericReason:(int64_t)reason genericSubreason:(int64_t)subreason genericPathID:(id)d;
- (NSString)pathID;
- (int64_t)reason;
- (int64_t)subreason;
- (void)setPathID:(id)d;
- (void)setReason:(int64_t)reason;
- (void)setSubreason:(int64_t)subreason;
@end

@implementation IDSSendReason

- (int64_t)reason
{
  v3 = OBJC_IVAR___IDSSendReason_reason;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setReason:(int64_t)reason
{
  v5 = OBJC_IVAR___IDSSendReason_reason;
  swift_beginAccess();
  *(self + v5) = reason;
}

- (int64_t)subreason
{
  v3 = OBJC_IVAR___IDSSendReason_subreason;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSubreason:(int64_t)subreason
{
  v5 = OBJC_IVAR___IDSSendReason_subreason;
  swift_beginAccess();
  *(self + v5) = subreason;
}

- (NSString)pathID
{
  swift_beginAccess();

  v2 = sub_1A7E22260();

  return v2;
}

- (void)setPathID:(id)d
{
  v4 = sub_1A7E22290();
  v6 = v5;
  v7 = (self + OBJC_IVAR___IDSSendReason_pathID);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (IDSSendReason)initWithGenericReason:(int64_t)reason genericSubreason:(int64_t)subreason genericPathID:(id)d
{
  v8 = sub_1A7E22290();
  *(self + OBJC_IVAR___IDSSendReason_reason) = reason;
  *(self + OBJC_IVAR___IDSSendReason_subreason) = subreason;
  v9 = (self + OBJC_IVAR___IDSSendReason_pathID);
  *v9 = v8;
  v9[1] = v10;
  v12.receiver = self;
  v12.super_class = IDSSendReason;
  return [(IDSSendReason *)&v12 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1A7E22AA0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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