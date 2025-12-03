@interface NTPBAudioPlaylistItem(CK)
+ (id)articleIDFromIdentifier:()CK;
- (id)asCKRecord;
- (id)initWithCKRecord:()CK;
@end

@implementation NTPBAudioPlaylistItem(CK)

+ (id)articleIDFromIdentifier:()CK
{
  v3 = a3;
  v4 = [v3 substringFromIndex:{objc_msgSend(@"apl-", "length")}];

  return v4;
}

- (id)initWithCKRecord:()CK
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = &off_1F2EEA1C8;
  v5 = objc_msgSendSuper2(&v13, sel_init);
  if (v5)
  {
    recordID = [v4 recordID];
    recordName = [recordID recordName];
    [v5 setIdentifier:recordName];

    v8 = [v4 objectForKeyedSubscript:@"articleID"];
    [v5 setArticleID:v8];

    v9 = [v4 objectForKeyedSubscript:@"dateAdded"];
    pbDate = [v9 pbDate];
    [v5 setDateAdded:pbDate];

    v11 = [v4 objectForKeyedSubscript:@"order"];
    [v5 setListOrder:{objc_msgSend(v11, "longLongValue")}];
  }

  return v5;
}

- (id)asCKRecord
{
  if (qword_1EDB27670 != -1)
  {
    dispatch_once(&qword_1EDB27670, &__block_literal_global_115);
  }

  v2 = objc_alloc(MEMORY[0x1E695BA70]);
  identifier = [self identifier];
  v4 = [v2 initWithRecordName:identifier zoneID:_MergedGlobals_181];

  v5 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"AudioPlaylistItem" recordID:v4];
  articleID = [self articleID];
  [v5 setObject:articleID forKeyedSubscript:@"articleID"];

  v7 = MEMORY[0x1E695DF00];
  dateAdded = [self dateAdded];
  v9 = [v7 dateWithPBDate:dateAdded];
  [v5 setObject:v9 forKeyedSubscript:@"dateAdded"];

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(self, "listOrder")}];
  [v5 setObject:v10 forKeyedSubscript:@"order"];

  return v5;
}

@end