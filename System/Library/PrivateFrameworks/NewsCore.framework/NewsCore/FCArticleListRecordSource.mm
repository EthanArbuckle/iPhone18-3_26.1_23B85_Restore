@interface FCArticleListRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
@end

@implementation FCArticleListRecordSource

- (id)nonLocalizableKeys
{
  if (qword_1EDB27490 != -1)
  {
    dispatch_once(&qword_1EDB27490, &__block_literal_global_4_6);
  }

  v3 = _MergedGlobals_165;

  return v3;
}

uint64_t __47__FCArticleListRecordSource_nonLocalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"articleIDs", @"type", @"metadata", 0}];
  v1 = _MergedGlobals_165;
  _MergedGlobals_165 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v5 = MEMORY[0x1E69B6CF0];
  baseCopy = base;
  recordCopy = record;
  v8 = objc_alloc_init(v5);
  [v8 setBase:baseCopy];

  v9 = [recordCopy objectForKeyedSubscript:@"articleIDs"];
  v10 = [v9 mutableCopy];
  [v8 setArticleIDs:v10];

  v11 = [recordCopy objectForKeyedSubscript:@"type"];
  [v8 setType:PBArticleListTypeFromString(v11)];

  v12 = [recordCopy objectForKeyedSubscript:@"metadata"];

  [v8 setMetadata:v12];

  return v8;
}

@end