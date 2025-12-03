@interface IMChipReply
- (IMChipReply)init;
- (IMChipReply)initWithSuggestion:(id)suggestion;
- (id)dictionaryRepresentation;
- (id)suggestedReplyBody;
@end

@implementation IMChipReply

- (IMChipReply)initWithSuggestion:(id)suggestion
{
  *(&self->super.isa + OBJC_IVAR___IMChipReply_suggestion) = suggestion;
  v5.receiver = self;
  v5.super_class = IMChipReply;
  suggestionCopy = suggestion;
  return [(IMChipReply *)&v5 init];
}

- (id)dictionaryRepresentation
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = 0x6974736567677573;
  *(inited + 40) = 0xEA00000000006E6FLL;
  selfCopy = self;
  suggestion = [(IMChipReply *)selfCopy suggestion];
  dictionaryRepresentation = [(IMChipSuggestion *)suggestion dictionaryRepresentation];

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
  selfCopy = self;
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