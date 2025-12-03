@interface AccountMember
- (_TtC14CopresenceCore13AccountMember)init;
- (_TtC14CopresenceCore13AccountMember)initWithCoder:(id)coder;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AccountMember

- (_TtC14CopresenceCore13AccountMember)init
{
  *(&self->super.isa + OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AccountMember();
  return [(AccountMember *)&v3 init];
}

- (int64_t)hash
{
  Hasher.init()();
  Hasher._combine(_:)(*(&self->super.isa + OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount));
  return Hasher.finalize()();
}

- (_TtC14CopresenceCore13AccountMember)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1B270FF70](0x416C61636F4C7369, 0xEE00746E756F6363);
  decodeBoolForKey_ = [coderCopy decodeBoolForKey_];

  *(&self->super.isa + OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount) = decodeBoolForKey_;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AccountMember();
  v7 = [(AccountMember *)&v9 init];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount);
  coderCopy = coder;
  selfCopy = self;
  v6 = MEMORY[0x1B270FF70](0x416C61636F4C7369, 0xEE00746E756F6363);
  [coderCopy encodeBool:v4 forKey:v6];
}

@end