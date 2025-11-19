@interface PKProvisioningSupportData
- (PKProvisioningSupportData)initWithCoder:(id)a3;
- (PKProvisioningSupportData)initWithEncryptedSupportDataDictionary:(id)a3 sid:(id)a4;
- (id)_dictionaryRepresentation;
- (id)archiveForKeychainWithError:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKProvisioningSupportData

- (PKProvisioningSupportData)initWithEncryptedSupportDataDictionary:(id)a3 sid:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKProvisioningSupportData;
  v9 = [(PKProvisioningSupportData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_encryptedSupportDataDictionary, a3);
    objc_storeStrong(&v10->_sid, a4);
  }

  return v10;
}

- (id)archiveForKeychainWithError:(id *)a3
{
  v4 = MEMORY[0x1E696ACC8];
  v5 = [(PKProvisioningSupportData *)self _dictionaryRepresentation];
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:a3];

  return v6;
}

- (id)_dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_sid forKeyedSubscript:@"SID"];
  [v3 setObject:self->_encryptedSupportDataDictionary forKeyedSubscript:@"EncryptedSupportDictionary"];
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (PKProvisioningSupportData)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKProvisioningSupportData;
  v5 = [(PKProvisioningSupportData *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"EncryptedSupportDictionary"];
    encryptedSupportDataDictionary = v5->_encryptedSupportDataDictionary;
    v5->_encryptedSupportDataDictionary = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SID"];
    sid = v5->_sid;
    v5->_sid = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  encryptedSupportDataDictionary = self->_encryptedSupportDataDictionary;
  v5 = a3;
  [v5 encodeObject:encryptedSupportDataDictionary forKey:@"EncryptedSupportDictionary"];
  [v5 encodeObject:self->_sid forKey:@"SID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NSDictionary *)self->_encryptedSupportDataDictionary copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_sid copy];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

@end