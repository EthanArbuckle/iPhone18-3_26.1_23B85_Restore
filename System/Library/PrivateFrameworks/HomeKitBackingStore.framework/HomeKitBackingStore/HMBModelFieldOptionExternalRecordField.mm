@interface HMBModelFieldOptionExternalRecordField
- (HMBModelFieldOptionExternalRecordField)initWithExternalRecordField:(id)field encrypted:(BOOL)encrypted;
- (void)applyTo:(id)to;
@end

@implementation HMBModelFieldOptionExternalRecordField

- (void)applyTo:(id)to
{
  toCopy = to;
  fieldName = [(HMBModelFieldOptionExternalRecordField *)self fieldName];
  [toCopy setExternalRecordField:fieldName];

  [toCopy setEncrypted:{-[HMBModelFieldOptionExternalRecordField encrypted](self, "encrypted")}];
}

- (HMBModelFieldOptionExternalRecordField)initWithExternalRecordField:(id)field encrypted:(BOOL)encrypted
{
  fieldCopy = field;
  v11.receiver = self;
  v11.super_class = HMBModelFieldOptionExternalRecordField;
  v8 = [(HMBModelFieldOptionExternalRecordField *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fieldName, field);
    v9->_encrypted = encrypted;
  }

  return v9;
}

@end