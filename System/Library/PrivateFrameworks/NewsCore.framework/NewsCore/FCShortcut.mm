@interface FCShortcut
- (CKRecord)asCKRecord;
- (FCShortcut)initWithIdentifier:(id)a3 dateAdded:(id)a4 order:(id)a5 shortcutType:(unint64_t)a6;
- (id)initWithIdentifier:(void *)a3 dictionaryRepresentation:;
@end

@implementation FCShortcut

- (id)initWithIdentifier:(void *)a3 dictionaryRepresentation:
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [v5 objectForKeyedSubscript:@"dateAdded"];
    v8 = [v5 objectForKeyedSubscript:@"order"];
    v9 = [v5 objectForKeyedSubscript:@"type"];

    v10 = FCShortcutTypeFromString(v9);
    v11 = [v3 initWithIdentifier:v6 dateAdded:v7 order:v8 shortcutType:v10];

    v3 = v11;
  }

  return v3;
}

- (FCShortcut)initWithIdentifier:(id)a3 dateAdded:(id)a4 order:(id)a5 shortcutType:(unint64_t)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shortcut list entry must have an item identifier"];
    *buf = 136315906;
    v24 = "[FCShortcut initWithIdentifier:dateAdded:order:shortcutType:]";
    v25 = 2080;
    v26 = "FCShortcut.m";
    v27 = 1024;
    v28 = 20;
    v29 = 2114;
    v30 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v22.receiver = self;
  v22.super_class = FCShortcut;
  v13 = [(FCShortcut *)&v22 init];
  v14 = v13;
  if (v13)
  {
    if (v10)
    {
      v15 = [v10 copy];
      identifier = v14->_identifier;
      v14->_identifier = v15;

      objc_storeStrong(&v14->_dateAdded, a4);
      v17 = [v12 copy];
      order = v14->_order;
      v14->_order = v17;

      v14->_shortcutType = a6;
      v14->_deprecated = a6 != 0;
    }

    else
    {

      v14 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (CKRecord)asCKRecord
{
  if (qword_1EDB273C0 != -1)
  {
    dispatch_once(&qword_1EDB273C0, &__block_literal_global_66);
  }

  v3 = objc_alloc(MEMORY[0x1E695BA70]);
  v4 = [(FCShortcut *)self identifier];
  v5 = [v3 initWithRecordName:v4 zoneID:_MergedGlobals_160];

  v6 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"Shortcut" recordID:v5];
  v7 = [(FCShortcut *)self dateAdded];
  [v6 setObject:v7 forKeyedSubscript:@"dateAdded"];

  v8 = [(FCShortcut *)self order];
  [v6 setObject:v8 forKeyedSubscript:@"order"];

  v9 = NSStringFromShortcutType([(FCShortcut *)self shortcutType]);
  [v6 setObject:v9 forKeyedSubscript:@"type"];

  return v6;
}

uint64_t __24__FCShortcut_asCKRecord__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695BA90]);
  v1 = [v0 initWithZoneName:@"Shortcuts" ownerName:*MEMORY[0x1E695B728]];
  v2 = _MergedGlobals_160;
  _MergedGlobals_160 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end