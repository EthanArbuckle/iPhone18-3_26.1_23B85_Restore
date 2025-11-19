@interface IMDPlainTextTapbackInterpreter
+ (IMDPlainTextTapbackInterpreter)sharedInstance;
- (BOOL)parseString:(id)a3 emoji:(id *)a4 infix:(id *)a5 type:(int64_t *)a6;
- (IMDPlainTextTapbackInterpreter)init;
- (id)interpretMessageItem:(id)a3 inChat:(id)a4;
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

- (BOOL)parseString:(id)a3 emoji:(id *)a4 infix:(id *)a5 type:(int64_t *)a6
{
  v10 = sub_22B7DB6A8();
  v12 = v11;
  v13 = self;
  LOBYTE(a6) = IMDPlainTextTapbackInterpreter.parseString(_:emoji:infix:type:)(v10, v12, a4, a5, a6);

  return a6 & 1;
}

- (id)interpretMessageItem:(id)a3 inChat:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  IMDPlainTextTapbackInterpreter.interpretMessageItem(_:in:)(v6, v7);
  v10 = v9;

  return v10;
}

@end