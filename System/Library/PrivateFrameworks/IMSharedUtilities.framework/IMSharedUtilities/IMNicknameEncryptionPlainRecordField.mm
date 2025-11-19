@interface IMNicknameEncryptionPlainRecordField
- (IMNicknameEncryptionPlainRecordField)initWithFieldName:(id)a3 plainData:(id)a4;
- (id)description;
@end

@implementation IMNicknameEncryptionPlainRecordField

- (IMNicknameEncryptionPlainRecordField)initWithFieldName:(id)a3 plainData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IMNicknameEncryptionPlainRecordField;
  v9 = [(IMNicknameEncryptionPlainRecordField *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fieldName, a3);
    objc_storeStrong(&v10->_plainData, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IMNicknameEncryptionPlainRecordField *)self fieldName];
  v6 = [(IMNicknameEncryptionPlainRecordField *)self plainData];
  v7 = [v3 stringWithFormat:@"<%@: %p recordKey: %@, plainData: %@>", v4, self, v5, v6];

  return v7;
}

@end