@interface FCShortcut
- (CKRecord)asCKRecord;
- (FCShortcut)initWithIdentifier:(id)identifier dateAdded:(id)added order:(id)order shortcutType:(unint64_t)type;
- (id)initWithIdentifier:(void *)identifier dictionaryRepresentation:;
@end

@implementation FCShortcut

- (id)initWithIdentifier:(void *)identifier dictionaryRepresentation:
{
  selfCopy = self;
  if (self)
  {
    identifierCopy = identifier;
    v6 = a2;
    v7 = [identifierCopy objectForKeyedSubscript:@"dateAdded"];
    v8 = [identifierCopy objectForKeyedSubscript:@"order"];
    v9 = [identifierCopy objectForKeyedSubscript:@"type"];

    v10 = FCShortcutTypeFromString(v9);
    v11 = [selfCopy initWithIdentifier:v6 dateAdded:v7 order:v8 shortcutType:v10];

    selfCopy = v11;
  }

  return selfCopy;
}

- (FCShortcut)initWithIdentifier:(id)identifier dateAdded:(id)added order:(id)order shortcutType:(unint64_t)type
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  addedCopy = added;
  orderCopy = order;
  if (!identifierCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    if (identifierCopy)
    {
      v15 = [identifierCopy copy];
      identifier = v14->_identifier;
      v14->_identifier = v15;

      objc_storeStrong(&v14->_dateAdded, added);
      v17 = [orderCopy copy];
      order = v14->_order;
      v14->_order = v17;

      v14->_shortcutType = type;
      v14->_deprecated = type != 0;
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
  identifier = [(FCShortcut *)self identifier];
  v5 = [v3 initWithRecordName:identifier zoneID:_MergedGlobals_160];

  v6 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"Shortcut" recordID:v5];
  dateAdded = [(FCShortcut *)self dateAdded];
  [v6 setObject:dateAdded forKeyedSubscript:@"dateAdded"];

  order = [(FCShortcut *)self order];
  [v6 setObject:order forKeyedSubscript:@"order"];

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