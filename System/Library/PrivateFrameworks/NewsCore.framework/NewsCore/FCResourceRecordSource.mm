@interface FCResourceRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
@end

@implementation FCResourceRecordSource

- (id)nonLocalizableKeys
{
  if (qword_1EDB26F28 != -1)
  {
    dispatch_once(&qword_1EDB26F28, &__block_literal_global_4_1);
  }

  v3 = _MergedGlobals_137;

  return v3;
}

uint64_t __44__FCResourceRecordSource_nonLocalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"type", @"encoding", @"data", @"asset", 0}];
  v1 = _MergedGlobals_137;
  _MergedGlobals_137 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  baseCopy = base;
  v6 = MEMORY[0x1E69B6FA8];
  recordCopy = record;
  v8 = objc_alloc_init(v6);
  [v8 setBase:baseCopy];
  v9 = [recordCopy objectForKeyedSubscript:@"type"];
  [v8 setMimeType:v9];

  v10 = [recordCopy objectForKeyedSubscript:@"encoding"];
  [v8 setEncoding:v10];

  objc_opt_class();
  v11 = [recordCopy objectForKeyedSubscript:@"asset"];

  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  [v8 setUrl:v13];

  mimeType = [v8 mimeType];
  IsFont = FCMIMETypeIsFont(mimeType);

  if (IsFont)
  {
    [baseCopy setCacheLifetimeHint:1];
  }

  return v8;
}

@end