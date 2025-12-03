@interface IMDPlainTextTapbackInterpreter
+ (IMDPlainTextTapbackInterpreter)sharedInstance;
- (BOOL)parseString:(id)string emoji:(id *)emoji infix:(id *)infix type:(int64_t *)type;
- (IMDPlainTextTapbackInterpreter)init;
- (id)interpretMessageItem:(id)item inChat:(id)chat;
@end

@implementation IMDPlainTextTapbackInterpreter

+ (IMDPlainTextTapbackInterpreter)sharedInstance
{
  if (qword_28141F0B0 != -1)
  {
    swift_once();
  }

  v3 = qword_28141F0B8;

  return v3;
}

- (IMDPlainTextTapbackInterpreter)init
{
  type metadata accessor for TapbackInterpreterState();
  swift_allocObject();
  sub_22B78D0D4();
  *(&self->super.isa + OBJC_IVAR___IMDPlainTextTapbackInterpreter_state) = v3;
  v5.receiver = self;
  v5.super_class = IMDPlainTextTapbackInterpreter;
  return [(IMDPlainTextTapbackInterpreter *)&v5 init];
}

- (BOOL)parseString:(id)string emoji:(id *)emoji infix:(id *)infix type:(int64_t *)type
{
  v10 = sub_22B7DB6A8();
  v12 = v11;
  selfCopy = self;
  LOBYTE(type) = IMDPlainTextTapbackInterpreter.parseString(_:emoji:infix:type:)(v10, v12, emoji, infix, type);

  return type & 1;
}

- (id)interpretMessageItem:(id)item inChat:(id)chat
{
  itemCopy = item;
  chatCopy = chat;
  selfCopy = self;
  IMDPlainTextTapbackInterpreter.interpretMessageItem(_:in:)(itemCopy, chatCopy);
  v10 = v9;

  return v10;
}

@end