@interface IMChipReply
- (IMChipReply)init;
- (IMChipReply)initWithSuggestion:(id)a3;
- (id)dictionaryRepresentation;
- (id)suggestedReplyBody;
@end

@implementation IMChipReply

- (IMChipReply)initWithSuggestion:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___IMChipReply_suggestion) = a3;
  v5.receiver = self;
  v5.super_class = IMChipReply;
  v3 = a3;
  return [(IMChipReply *)&v5 init];
}

- (id)dictionaryRepresentation
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = 0x6974736567677573;
  *(inited + 40) = 0xEA00000000006E6FLL;
  v4 = self;
  v5 = [(IMChipReply *)v4 suggestion];
  v6 = [(IMChipSuggestion *)v5 dictionaryRepresentation];

  v7 = sub_1A88C81A8();
  *(inited + 72) = sub_1A870CCE0(&unk_1EB3091D0);
  *(inited + 48) = v7;
  sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A85EF638(inited + 32, &qword_1EB303720);

  v8 = sub_1A88C8188();

  return v8;
}

- (id)suggestedReplyBody
{
  v2 = self;
  v3 = sub_1A888EB50();

  return v3;
}

- (IMChipReply)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end