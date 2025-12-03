@interface FCShortcutCategory
- (CKRecord)asCKRecord;
- (FCShortcutCategory)initWithType:(unint64_t)type identifier:(id)identifier dateAdded:(id)added status:(unint64_t)status;
- (id)initWithIdentifier:(void *)identifier dictionaryRepresentation:;
@end

@implementation FCShortcutCategory

- (FCShortcutCategory)initWithType:(unint64_t)type identifier:(id)identifier dateAdded:(id)added status:(unint64_t)status
{
  identifierCopy = identifier;
  addedCopy = added;
  v16.receiver = self;
  v16.super_class = FCShortcutCategory;
  v12 = [(FCShortcutCategory *)&v16 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v12->_type = type;
    objc_storeStrong(&v12->_dateAdded, added);
    v12->_status = status;
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
  identifier = [(FCShortcutCategory *)self identifier];
  v5 = [v3 initWithRecordName:identifier zoneID:_MergedGlobals_133];

  v6 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"ShortcutCategory" recordID:v5];
  v7 = NSStringFromShortcutCategoryType([(FCShortcutCategory *)self type]);
  [v6 setObject:v7 forKeyedSubscript:@"type"];

  identifier2 = [(FCShortcutCategory *)self identifier];
  [v6 setObject:identifier2 forKeyedSubscript:@"categoryID"];

  dateAdded = [(FCShortcutCategory *)self dateAdded];
  [v6 setObject:dateAdded forKeyedSubscript:@"dateAdded"];

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

- (id)initWithIdentifier:(void *)identifier dictionaryRepresentation:
{
  selfCopy = self;
  if (self)
  {
    identifierCopy = identifier;
    v6 = a2;
    v7 = [identifierCopy objectForKeyedSubscript:@"type"];
    v8 = FCShortcutCategoryTypeFromString(v7);

    v9 = [identifierCopy objectForKeyedSubscript:@"dateAdded"];
    v10 = [identifierCopy objectForKeyedSubscript:@"status"];

    v11 = FCShortcutCategoryStatusFromString(v10);
    v12 = [selfCopy initWithType:v8 identifier:v6 dateAdded:v9 status:v11];

    selfCopy = v12;
  }

  return selfCopy;
}

@end