@interface FCResourceRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)a3 base:(id)a4;
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

- (id)recordFromCKRecord:(id)a3 base:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E69B6FA8];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setBase:v5];
  v9 = [v7 objectForKeyedSubscript:@"type"];
  [v8 setMimeType:v9];

  v10 = [v7 objectForKeyedSubscript:@"encoding"];
  [v8 setEncoding:v10];

  objc_opt_class();
  v11 = [v7 objectForKeyedSubscript:@"asset"];

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

  v14 = [v8 mimeType];
  IsFont = FCMIMETypeIsFont(v14);

  if (IsFont)
  {
    [v5 setCacheLifetimeHint:1];
  }

  return v8;
}

@end