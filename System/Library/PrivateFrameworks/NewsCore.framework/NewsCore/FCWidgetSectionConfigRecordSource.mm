@interface FCWidgetSectionConfigRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
@end

@implementation FCWidgetSectionConfigRecordSource

- (id)nonLocalizableKeys
{
  if (qword_1EDB275A0 != -1)
  {
    dispatch_once(&qword_1EDB275A0, &__block_literal_global_10);
  }

  v3 = _MergedGlobals_173;

  return v3;
}

uint64_t __55__FCWidgetSectionConfigRecordSource_nonLocalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"configuration2", @"singleTagConfiguration", @"articleListIDs2", @"articleIDs2", 0}];
  v1 = _MergedGlobals_173;
  _MergedGlobals_173 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v5 = MEMORY[0x1E69B7068];
  baseCopy = base;
  recordCopy = record;
  v8 = objc_alloc_init(v5);
  [v8 setBase:baseCopy];

  v9 = [recordCopy objectForKeyedSubscript:@"configuration2"];
  [v8 setConfiguration2:v9];

  v10 = [recordCopy objectForKeyedSubscript:@"singleTagConfiguration"];
  [v8 setSingleTagConfiguration:v10];

  v11 = [recordCopy objectForKeyedSubscript:@"articleListIDs2"];
  [v8 setArticleListIDs2s:v11];

  v12 = [recordCopy objectForKeyedSubscript:@"articleIDs2"];

  [v8 setArticleIDs2s:v12];

  return v8;
}

@end