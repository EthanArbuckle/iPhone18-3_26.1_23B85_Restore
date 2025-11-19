@interface BDSReadingHistoryMigrationInfo
+ (NSURL)readingHistoryFileURL;
+ (id)description;
@end

@implementation BDSReadingHistoryMigrationInfo

+ (NSURL)readingHistoryFileURL
{
  v2 = +[BDSAppGroupContainer documentsURL];
  v3 = [v2 URLByAppendingPathComponent:@"BCCloudData-AppMigration"];

  return v3;
}

+ (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = +[BDSReadingHistoryMigrationInfo readingHistoryFileURL];
  v6 = +[BDSReadingHistoryMigrationInfo booksFinishedUserDefaultsKey];
  v7 = +[BDSReadingHistoryMigrationInfo streakDayUserDefaultsKey];
  v8 = [v2 stringWithFormat:@"<%@ readingHistoryFileURL=%@ booksFinishedUserDefaultsKey=%@ streakDayUserDefaultsKey=%@>", v4, v5, v6, v7];

  return v8;
}

@end