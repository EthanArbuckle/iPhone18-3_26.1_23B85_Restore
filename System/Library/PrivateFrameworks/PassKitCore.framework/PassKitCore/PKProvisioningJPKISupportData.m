@interface PKProvisioningJPKISupportData
+ (id)_decryptEncryptedSupportDataDictionary:(id)a3 withGroupIdentifier:(id)a4 sid:(id)a5;
- (BOOL)decryptEncryptedSupportDataForPass:(id)a3;
- (PKProvisioningJPKISupportData)initWithCoder:(id)a3;
- (PKProvisioningJPKISupportData)initWithEncryptedSupportDataDictionary:(id)a3 sid:(id)a4;
- (PKProvisioningJPKISupportData)initWithPIN:(id)a3 password:(id)a4 type:(unint64_t)a5 sid:(id)a6;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initByUnarchivingData:(id)a3 ofType:(unint64_t)a4 forPass:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKProvisioningJPKISupportData

- (PKProvisioningJPKISupportData)initWithEncryptedSupportDataDictionary:(id)a3 sid:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKProvisioningJPKISupportData;
  result = [(PKProvisioningSupportData *)&v5 initWithEncryptedSupportDataDictionary:a3 sid:a4];
  if (result)
  {
    result->_type = 1;
  }

  return result;
}

- (PKProvisioningJPKISupportData)initWithPIN:(id)a3 password:(id)a4 type:(unint64_t)a5 sid:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10 | v11)
  {
    v21.receiver = self;
    v21.super_class = PKProvisioningJPKISupportData;
    v13 = [(PKProvisioningJPKISupportData *)&v21 init];
    if (v13)
    {
      if (v10)
      {
        v14 = [v10 pk_zString];
        pin = v13->_pin;
        v13->_pin = v14;
      }

      if (v11)
      {
        v16 = [v11 pk_zString];
        password = v13->_password;
        v13->_password = v16;
      }

      v13->_type = a5;
      [(PKProvisioningSupportData *)v13 setSid:v12];
    }

    self = v13;
    v18 = self;
  }

  else
  {
    v19 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "[%@] PKProvisioningJPKISupportData failed init - PIN and Password not provided", buf, 0xCu);
    }

    v18 = 0;
  }

  return v18;
}

- (id)initByUnarchivingData:(id)a3 ofType:(unint64_t)a4 forPass:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = MEMORY[0x1E696ACD0];
  v10 = MEMORY[0x1E695DFD8];
  v11 = a3;
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v12, objc_opt_class(), 0}];
  v30 = 0;
  v14 = [v9 unarchivedObjectOfClasses:v13 fromData:v11 error:&v30];

  v15 = v30;
  v16 = [v14 objectForKeyedSubscript:@"SID"];
  if (v16)
  {
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = &stru_1F227FD28;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "[%@] Warning, SID was not found when initializing PKProvisioningJPKISupportData by unarchiving data.", buf, 0xCu);
    }

    v16 = &stru_1F227FD28;
    if (!v15)
    {
LABEL_10:
      if (!a4)
      {
        v23 = [v14 objectForKeyedSubscript:@"userPIN"];
        v24 = @"userPassword";
LABEL_21:
        v25 = [v14 objectForKeyedSubscript:v24];
        goto LABEL_22;
      }

      if (a4 != 1)
      {
        v23 = 0;
        v25 = 0;
LABEL_22:
        self = [(PKProvisioningJPKISupportData *)self initWithPIN:v23 password:v25 type:a4 sid:v16];

        v26 = self;
LABEL_23:

        goto LABEL_24;
      }

      v19 = [v14 PKDictionaryForKey:@"EncryptedSupportDictionary"];
      if (v19)
      {
        v20 = objc_opt_class();
        v21 = [v8 longTermPrivacyKeyGroupIdentifier];
        v22 = [v20 _decryptEncryptedSupportDataDictionary:v19 withGroupIdentifier:v21 sid:v16];

        v14 = v22;
      }

      else
      {
        v27 = [v14 objectForKeyedSubscript:@"temporaryPin"];
        if (!v27)
        {
          v29 = [v14 objectForKeyedSubscript:@"temporaryPassword"];

          if (!v29)
          {
            v23 = PKLogFacilityTypeGetObject(0x28uLL);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v32 = v16;
              _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "[%@] PKProvisioningJPKISupportData failed init - temporary type lacked expected values", buf, 0xCu);
            }

            v26 = 0;
            goto LABEL_23;
          }

          goto LABEL_20;
        }

        v21 = v27;
      }

LABEL_20:
      v23 = [v14 objectForKeyedSubscript:@"temporaryPin"];
      v24 = @"temporaryPassword";
      goto LABEL_21;
    }
  }

  v18 = PKLogFacilityTypeGetObject(0x28uLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = v16;
    v33 = 2112;
    v34 = v15;
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "[%@] PKProvisioningJPKISupportData failed init - unarchiving archived data failed with error: %@", buf, 0x16u);
  }

  if (v14)
  {
    goto LABEL_10;
  }

  v26 = 0;
LABEL_24:

  return v26;
}

- (BOOL)decryptEncryptedSupportDataForPass:(id)a3
{
  v4 = a3;
  v5 = [(PKProvisioningSupportData *)self encryptedSupportDataDictionary];

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [(PKProvisioningSupportData *)self encryptedSupportDataDictionary];
    v8 = [v4 longTermPrivacyKeyGroupIdentifier];
    v9 = [(PKProvisioningSupportData *)self sid];
    v10 = [v6 _decryptEncryptedSupportDataDictionary:v7 withGroupIdentifier:v8 sid:v9];

    if (v10)
    {
      v11 = [v10 PKStringForKey:@"temporaryPin"];
      v12 = [v11 pk_zString];
      pin = self->_pin;
      self->_pin = v12;

      v14 = [v10 PKStringForKey:@"temporaryPassword"];
      v15 = [v14 pk_zString];
      password = self->_password;
      self->_password = v15;

      if (self->_pin)
      {
        v17 = 1;
      }

      else
      {
        v17 = self->_password != 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (PKProvisioningJPKISupportData)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKProvisioningJPKISupportData;
  v5 = [(PKProvisioningSupportData *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"JPKIPIN"];
    v7 = [v6 pk_zString];
    pin = v5->_pin;
    v5->_pin = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"JPKIpassword"];
    v10 = [v9 pk_zString];
    password = v5->_password;
    v5->_password = v10;

    v5->_type = [v4 decodeIntegerForKey:@"JPKISupportDataType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKProvisioningJPKISupportData;
  v4 = a3;
  [(PKProvisioningSupportData *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_pin forKey:{@"JPKIPIN", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_password forKey:@"JPKIpassword"];
  [v4 encodeInteger:self->_type forKey:@"JPKISupportDataType"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = PKProvisioningJPKISupportData;
  v4 = [(PKProvisioningSupportData *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_pin pk_zString];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(NSString *)self->_password pk_zString];
  v8 = v4[4];
  v4[4] = v7;

  v4[5] = self->_type;
  return v4;
}

- (id)_dictionaryRepresentation
{
  v12.receiver = self;
  v12.super_class = PKProvisioningJPKISupportData;
  v3 = [(PKProvisioningSupportData *)&v12 _dictionaryRepresentation];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  }

  v6 = v5;

  if (self->_type)
  {
    v7 = @"temporaryPin";
  }

  else
  {
    v7 = @"userPIN";
  }

  [v6 setObject:self->_pin forKeyedSubscript:v7];
  if (self->_type)
  {
    v8 = @"temporaryPassword";
  }

  else
  {
    v8 = @"userPassword";
  }

  [v6 setObject:self->_password forKeyedSubscript:v8];
  if ([v6 count])
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

+ (id)_decryptEncryptedSupportDataDictionary:(id)a3 withGroupIdentifier:(id)a4 sid:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_alloc_init(PKDAManager);
  v22 = 0;
  v11 = [(PKDAManager *)v10 decryptPayload:v7 groupIdentifier:v9 outError:&v22];

  v12 = v22;
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v14 = v12;
    v15 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v24 = v8;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "[%@] PKProvisioningJPKISupportData - Unable to decrypt encrypted support data dict %@ with error: %@", buf, 0x20u);
    }

    v16 = 0;
LABEL_8:

    v17 = v14;
    goto LABEL_16;
  }

  v21 = 0;
  v16 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v11 options:0 error:&v21];
  v18 = v21;
  if (v16)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    v14 = v18;
    v15 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "[%@] PKProvisioningJPKISupportData - Issue serializing decrypted data: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v17 = 0;
LABEL_16:

  return v16;
}

@end