@interface FCPurchaseLookupRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)a3 base:(id)a4;
@end

@implementation FCPurchaseLookupRecordSource

- (id)nonLocalizableKeys
{
  if (qword_1EDB27580 != -1)
  {
    dispatch_once(&qword_1EDB27580, &__block_literal_global_4_7);
  }

  v3 = _MergedGlobals_171;

  return v3;
}

uint64_t __50__FCPurchaseLookupRecordSource_nonLocalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"appAdamID", @"channelTagIDs", @"bundleChannelTagIDs", @"bundleChannelTagIDsVersion", 0}];
  v1 = _MergedGlobals_171;
  _MergedGlobals_171 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)a3 base:(id)a4
{
  v5 = MEMORY[0x1E69B6F50];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setBase:v6];

  v9 = [v7 objectForKeyedSubscript:@"appAdamID"];
  [v8 setAppAdamID:v9];

  v10 = [v7 objectForKeyedSubscript:@"channelTagIDs"];
  v11 = [v10 mutableCopy];
  [v8 setChannelTagIDs:v11];

  v12 = [v7 objectForKeyedSubscript:@"bundleChannelTagIDs"];
  v13 = [v12 mutableCopy];
  [v8 setBundleChannelTagIDs:v13];

  v14 = [v7 objectForKeyedSubscript:@"bundleChannelTagIDsVersion"];

  [v8 setBundleChannelTagIDsVersion:v14];

  return v8;
}

@end