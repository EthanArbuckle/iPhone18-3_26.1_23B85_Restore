@interface FormatArticleOverridesMetadata
- (NSDate)displayDate;
- (NSURL)routeURL;
- (_TtC8NewsFeedP33_956832B3628B6135B83D78176B8866FE30FormatArticleOverridesMetadata)init;
@end

@implementation FormatArticleOverridesMetadata

- (NSURL)routeURL
{
  v3 = MEMORY[0x1E6968FB0];
  sub_1D5B55010(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  sub_1D5B759E4(self + OBJC_IVAR____TtC8NewsFeedP33_956832B3628B6135B83D78176B8866FE30FormatArticleOverridesMetadata_routeURL, &v14 - v6, &qword_1EDF45B40, v3);
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1D725844C();
    (*(v9 + 8))(v7, v8);
    v11 = v12;
  }

  return v11;
}

- (NSDate)displayDate
{
  v3 = MEMORY[0x1E6969530];
  sub_1D5B55010(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  sub_1D5B759E4(self + OBJC_IVAR____TtC8NewsFeedP33_956832B3628B6135B83D78176B8866FE30FormatArticleOverridesMetadata_displayDate, &v14 - v6, &qword_1EDF45B00, v3);
  v8 = sub_1D725891C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1D725881C();
    (*(v9 + 8))(v7, v8);
    v11 = v12;
  }

  return v11;
}

- (_TtC8NewsFeedP33_956832B3628B6135B83D78176B8866FE30FormatArticleOverridesMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end