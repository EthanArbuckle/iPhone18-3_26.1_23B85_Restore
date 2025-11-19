@interface IMDAskToParser
- (BOOL)isValid;
- (IMDAskToParser)init;
- (IMDAskToParser)initWithUrl:(id)a3;
- (NSString)notificationText;
@end

@implementation IMDAskToParser

- (IMDAskToParser)initWithUrl:(id)a3
{
  v4 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  if (a3)
  {
    sub_1B7CFDFB0();
    v8 = sub_1B7CFDFF0();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1B7CFDFF0();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  return AskToParser.init(url:)(v7);
}

- (BOOL)isValid
{
  v3 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = sub_1B7CFDFF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C487D8(self + OBJC_IVAR___IMDAskToParser_url, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B7AEE190(v6, &qword_1EBA51FA0, &qword_1B7D0A6D0);
    v12 = 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v13 = self;
    v12 = sub_1B7CFE4E0();

    (*(v8 + 8))(v11, v7);
  }

  return v12 & 1;
}

- (NSString)notificationText
{
  if (*(&self->super.isa + OBJC_IVAR___IMDAskToParser_payload) && (v2 = self, v3 = sub_1B7CFE510(), sub_1B7CFE430(), v5 = v4, v2, v3, v5))
  {
    v6 = sub_1B7CFEA30();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (IMDAskToParser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end