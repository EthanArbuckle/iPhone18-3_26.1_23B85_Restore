@interface FCShortcutCategory
- (CKRecord)asCKRecord;
- (FCShortcutCategory)initWithType:(unint64_t)a3 identifier:(id)a4 dateAdded:(id)a5 status:(unint64_t)a6;
- (id)initWithIdentifier:(void *)a3 dictionaryRepresentation:;
@end

@implementation FCShortcutCategory

- (FCShortcutCategory)initWithType:(unint64_t)a3 identifier:(id)a4 dateAdded:(id)a5 status:(unint64_t)a6
{
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = FCShortcutCategory;
  v12 = [(FCShortcutCategory *)&v16 init];
  if (v12)
  {
    v13 = [v10 copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v12->_type = a3;
    objc_storeStrong(&v12->_dateAdded, a5);
    v12->_status = a6;
  }

  return v12;
}

- (CKRecord)asCKRecord
{
  if (qword_1EDB26EC8 != -1)
  {
    dispatch_once(&qword_1EDB26EC8, &__block_literal_global_10);
  }

  v3 = objc_alloc(MEMORY[0x1E695BA70]);
  v4 = [(FCShortcutCategory *)self identifier];
  v5 = [v3 initWithRecordName:v4 zoneID:_MergedGlobals_133];

  v6 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"ShortcutCategory" recordID:v5];
  v7 = NSStringFromShortcutCategoryType([(FCShortcutCategory *)self type]);
  [v6 setObject:v7 forKeyedSubscript:@"type"];

  v8 = [(FCShortcutCategory *)self identifier];
  [v6 setObject:v8 forKeyedSubscript:@"categoryID"];

  v9 = [(FCShortcutCategory *)self dateAdded];
  [v6 setObject:v9 forKeyedSubscript:@"dateAdded"];

  v10 = NSStringFromShortcutCategoryStatus([(FCShortcutCategory *)self status]);
  [v6 setObject:v10 forKeyedSubscript:@"status"];

  return v6;
}

uint64_t __32__FCShortcutCategory_asCKRecord__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695BA90]);
  v1 = [v0 initWithZoneName:@"ShortcutCategories" ownerName:*MEMORY[0x1E695B728]];
  v2 = _MergedGlobals_133;
  _MergedGlobals_133 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)initWithIdentifier:(void *)a3 dictionaryRepresentation:
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [v5 objectForKeyedSubscript:@"type"];
    v8 = FCShortcutCategoryTypeFromString(v7);

    v9 = [v5 objectForKeyedSubscript:@"dateAdded"];
    v10 = [v5 objectForKeyedSubscript:@"status"];

    v11 = FCShortcutCategoryStatusFromString(v10);
    v12 = [v3 initWithType:v8 identifier:v6 dateAdded:v9 status:v11];

    v3 = v12;
  }

  return v3;
}

@end