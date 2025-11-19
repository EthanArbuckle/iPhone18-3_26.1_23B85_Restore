@interface HMBModelFieldOptionExternalRecordField
- (HMBModelFieldOptionExternalRecordField)initWithExternalRecordField:(id)a3 encrypted:(BOOL)a4;
- (void)applyTo:(id)a3;
@end

@implementation HMBModelFieldOptionExternalRecordField

- (void)applyTo:(id)a3
{
  v5 = a3;
  v4 = [(HMBModelFieldOptionExternalRecordField *)self fieldName];
  [v5 setExternalRecordField:v4];

  [v5 setEncrypted:{-[HMBModelFieldOptionExternalRecordField encrypted](self, "encrypted")}];
}

- (HMBModelFieldOptionExternalRecordField)initWithExternalRecordField:(id)a3 encrypted:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMBModelFieldOptionExternalRecordField;
  v8 = [(HMBModelFieldOptionExternalRecordField *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fieldName, a3);
    v9->_encrypted = a4;
  }

  return v9;
}

@end