@interface IMNicknameEncryptionPlainRecordField
- (IMNicknameEncryptionPlainRecordField)initWithFieldName:(id)name plainData:(id)data;
- (id)description;
@end

@implementation IMNicknameEncryptionPlainRecordField

- (IMNicknameEncryptionPlainRecordField)initWithFieldName:(id)name plainData:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = IMNicknameEncryptionPlainRecordField;
  v9 = [(IMNicknameEncryptionPlainRecordField *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fieldName, name);
    objc_storeStrong(&v10->_plainData, data);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  fieldName = [(IMNicknameEncryptionPlainRecordField *)self fieldName];
  plainData = [(IMNicknameEncryptionPlainRecordField *)self plainData];
  v7 = [v3 stringWithFormat:@"<%@: %p recordKey: %@, plainData: %@>", v4, self, fieldName, plainData];

  return v7;
}

@end