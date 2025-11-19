@interface ICSystemPaperSyncArchive
- (ICSystemPaperSyncArchive)init;
- (ICSystemPaperSyncArchive)initWithDatabaseArchive:(id)a3 assetArchives:(id)a4;
- (NSArray)assetArchives;
- (NSString)description;
- (NSURL)databaseArchive;
@end

@implementation ICSystemPaperSyncArchive

- (NSURL)databaseArchive
{
  v3 = sub_2150A3750();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___ICSystemPaperSyncArchive_databaseArchive, v3);
  v7 = sub_2150A36B0();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (NSArray)assetArchives
{
  sub_2150A3750();

  v2 = sub_2150A4EB0();

  return v2;
}

- (ICSystemPaperSyncArchive)initWithDatabaseArchive:(id)a3 assetArchives:(id)a4
{
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  v9 = sub_2150A4ED0();
  (*(v6 + 16))(self + OBJC_IVAR___ICSystemPaperSyncArchive_databaseArchive, v8, v5);
  *(self + OBJC_IVAR___ICSystemPaperSyncArchive_assetArchives) = v9;
  v10 = type metadata accessor for SystemPaperSyncArchive();
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(ICSystemPaperSyncArchive *)&v13 init];
  (*(v6 + 8))(v8, v5);
  return v11;
}

- (NSString)description
{
  v2 = self;
  sub_214FD32EC();

  v3 = sub_2150A4A90();

  return v3;
}

- (ICSystemPaperSyncArchive)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end