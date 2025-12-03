@interface FCNotificationItemListRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
@end

@implementation FCNotificationItemListRecordSource

- (id)nonLocalizableKeys
{
  if (qword_1EDB273B0 != -1)
  {
    dispatch_once(&qword_1EDB273B0, &__block_literal_global_4_4);
  }

  v3 = _MergedGlobals_159;

  return v3;
}

uint64_t __56__FCNotificationItemListRecordSource_nonLocalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"notificationItemIDs", @"notificationSource", @"algoID", 0}];
  v1 = _MergedGlobals_159;
  _MergedGlobals_159 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v5 = MEMORY[0x1E69B6ED0];
  baseCopy = base;
  recordCopy = record;
  v8 = objc_alloc_init(v5);
  [v8 setBase:baseCopy];

  v9 = [recordCopy objectForKeyedSubscript:@"notificationItemIDs"];
  [v8 setNotificationItemIDs:v9];

  v10 = [recordCopy objectForKeyedSubscript:@"notificationSource"];
  [v8 setNotificationSource:FCNotificationSourceFromString(v10)];

  v11 = [recordCopy objectForKeyedSubscript:@"algoID"];

  [v8 setAlgoID:v11];

  return v8;
}

@end