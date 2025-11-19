@interface FCWidgetSectionConfigRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)a3 base:(id)a4;
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

- (id)recordFromCKRecord:(id)a3 base:(id)a4
{
  v5 = MEMORY[0x1E69B7068];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setBase:v6];

  v9 = [v7 objectForKeyedSubscript:@"configuration2"];
  [v8 setConfiguration2:v9];

  v10 = [v7 objectForKeyedSubscript:@"singleTagConfiguration"];
  [v8 setSingleTagConfiguration:v10];

  v11 = [v7 objectForKeyedSubscript:@"articleListIDs2"];
  [v8 setArticleListIDs2s:v11];

  v12 = [v7 objectForKeyedSubscript:@"articleIDs2"];

  [v8 setArticleIDs2s:v12];

  return v8;
}

@end