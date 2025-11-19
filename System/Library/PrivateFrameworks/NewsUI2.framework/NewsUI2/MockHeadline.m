@interface MockHeadline
- (NSDate)displayDate;
- (_TtC7NewsUI212MockHeadline)init;
- (void)setDisplayDate:(id)a3;
@end

@implementation MockHeadline

- (NSDate)displayDate
{
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7NewsUI212MockHeadline__date;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = sub_219BDBC04();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)setDisplayDate:(id)a3
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_219BDBCA4();
    v8 = sub_219BDBD34();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_219BDBD34();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = self;
  sub_2199B7A54(v7);
}

- (_TtC7NewsUI212MockHeadline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end