@interface TicketStatus
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)rawValue;
- (_TtC25CloudSubscriptionFeatures12TicketStatus)init;
- (void)encodeWithCoder:(id)coder;
- (void)setRawValue:(id)value;
@end

@implementation TicketStatus

- (NSString)rawValue
{
  v2 = (self + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_1DF564914();

  return v5;
}

- (void)setRawValue:(id)value
{
  v4 = sub_1DF564944();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSString)description
{
  v3 = (self + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  selfCopy = self;

  MEMORY[0x1E12D62C0](v4, v5);

  v7 = sub_1DF564914();

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = (self + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  coderCopy = coder;
  selfCopy = self;

  v10 = sub_1DF564914();

  v11 = sub_1DF564914();
  [coderCopy encodeObject:v10 forKey:v11];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1DF564D24();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1DF5525C0(v8);

  sub_1DF4A7D80(v8);
  return v6 & 1;
}

- (_TtC25CloudSubscriptionFeatures12TicketStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end