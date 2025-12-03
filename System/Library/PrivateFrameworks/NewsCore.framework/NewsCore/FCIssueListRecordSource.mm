@interface FCIssueListRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
@end

@implementation FCIssueListRecordSource

- (id)nonLocalizableKeys
{
  if (qword_1EDB27850 != -1)
  {
    dispatch_once(&qword_1EDB27850, &__block_literal_global_4_10);
  }

  v3 = _MergedGlobals_196;

  return v3;
}

uint64_t __45__FCIssueListRecordSource_nonLocalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"issueIDs", 0}];
  v1 = _MergedGlobals_196;
  _MergedGlobals_196 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v5 = MEMORY[0x1E69B6E50];
  baseCopy = base;
  recordCopy = record;
  v8 = objc_alloc_init(v5);
  [v8 setBase:baseCopy];

  v9 = [recordCopy objectForKeyedSubscript:@"issueIDs"];

  v10 = [v9 mutableCopy];
  [v8 setIssueIDs:v10];

  return v8;
}

@end