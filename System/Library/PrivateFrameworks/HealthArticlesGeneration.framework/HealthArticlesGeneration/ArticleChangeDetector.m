@interface ArticleChangeDetector
- (_TtC24HealthArticlesGeneration21ArticleChangeDetector)init;
- (void)articleStatusDidChange:(id)a3;
@end

@implementation ArticleChangeDetector

- (void)articleStatusDidChange:(id)a3
{
  v4 = sub_2288AF1F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AF1D0();
  v9 = self;
  sub_2288A348C();

  (*(v5 + 8))(v8, v4);
}

- (_TtC24HealthArticlesGeneration21ArticleChangeDetector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end