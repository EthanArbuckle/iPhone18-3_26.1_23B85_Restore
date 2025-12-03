@interface FCTagListRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
@end

@implementation FCTagListRecordSource

- (id)nonLocalizableKeys
{
  if (qword_1EDB276D8 != -1)
  {
    dispatch_once(&qword_1EDB276D8, &__block_literal_global_4_9);
  }

  v3 = _MergedGlobals_185;

  return v3;
}

uint64_t __43__FCTagListRecordSource_nonLocalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"tagIDs", 0}];
  v1 = _MergedGlobals_185;
  _MergedGlobals_185 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v5 = MEMORY[0x1E69B6FF0];
  baseCopy = base;
  recordCopy = record;
  v8 = objc_alloc_init(v5);
  [v8 setBase:baseCopy];

  v9 = [recordCopy objectForKeyedSubscript:@"tagIDs"];

  v10 = [v9 mutableCopy];
  [v8 setTagIDs:v10];

  return v8;
}

@end