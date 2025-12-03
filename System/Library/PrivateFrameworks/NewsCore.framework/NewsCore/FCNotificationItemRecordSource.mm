@interface FCNotificationItemRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
@end

@implementation FCNotificationItemRecordSource

- (id)nonLocalizableKeys
{
  if (qword_1EDB26EA8 != -1)
  {
    dispatch_once(&qword_1EDB26EA8, &__block_literal_global_4);
  }

  v3 = _MergedGlobals_131;

  return v3;
}

uint64_t __52__FCNotificationItemRecordSource_nonLocalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"notificationID", @"articleID", @"body", @"clusterID", @"notabilityScores", @"targetDeviceTypes", @"targetMinNewsVersion", @"suppressIfFollowingTagIDs", 0}];
  v1 = _MergedGlobals_131;
  _MergedGlobals_131 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v5 = MEMORY[0x1E69B6ED8];
  baseCopy = base;
  recordCopy = record;
  v8 = objc_alloc_init(v5);
  [v8 setBase:baseCopy];

  v9 = [recordCopy objectForKeyedSubscript:@"notificationID"];
  [v8 setNotificationID:v9];

  v10 = [recordCopy objectForKeyedSubscript:@"articleID"];
  [v8 setArticleID:v10];

  v11 = [recordCopy objectForKeyedSubscript:@"body"];
  [v8 setBody:v11];

  v12 = [recordCopy objectForKeyedSubscript:@"clusterID"];
  [v8 setClusterID:v12];

  v13 = objc_alloc(MEMORY[0x1E69B6CC0]);
  v14 = [recordCopy objectForKeyedSubscript:@"notabilityScores"];
  v15 = [v13 initWithData:v14];
  [v8 setNotabilityScores:v15];

  v16 = [recordCopy objectForKeyedSubscript:@"targetDeviceTypes"];
  [v8 setTargetDeviceTypes:{objc_msgSend(v16, "unsignedIntValue")}];

  v17 = [recordCopy objectForKey:@"targetMinNewsVersion"];
  [v8 setTargetMinNewsVersion:{+[FCRestrictions integerRepresentationOfShortVersionString:](FCRestrictions, "integerRepresentationOfShortVersionString:", v17)}];

  v18 = [recordCopy objectForKeyedSubscript:@"suppressIfFollowingTagIDs"];

  [v8 setSuppressIfFollowingTagIDs:v18];

  return v8;
}

@end