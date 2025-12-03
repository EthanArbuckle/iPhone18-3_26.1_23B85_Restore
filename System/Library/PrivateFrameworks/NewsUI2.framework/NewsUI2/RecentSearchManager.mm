@interface RecentSearchManager
- (_TtC7NewsUI219RecentSearchManager)init;
- (void)readingHistoryDidClear:(id)clear;
@end

@implementation RecentSearchManager

- (_TtC7NewsUI219RecentSearchManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingHistoryDidClear:(id)clear
{
  sub_218760638();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF5BF4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_218AB4038(0, 0, v6, &unk_219C186B0, v8);
}

@end