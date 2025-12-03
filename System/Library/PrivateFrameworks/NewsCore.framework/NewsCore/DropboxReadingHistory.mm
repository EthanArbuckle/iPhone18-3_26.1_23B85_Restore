@interface DropboxReadingHistory
- (_TtC8NewsCore21DropboxReadingHistory)init;
- (id)mostRecentlyReadArticlesWithMaxCount:(unint64_t)count;
@end

@implementation DropboxReadingHistory

- (id)mostRecentlyReadArticlesWithMaxCount:(unint64_t)count
{
  selfCopy = self;
  DropboxReadingHistory.mostRecentlyReadArticles(maxCount:)(count);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A528, qword_1B6811350);
  v5 = sub_1B67D97AC();

  return v5;
}

- (_TtC8NewsCore21DropboxReadingHistory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end