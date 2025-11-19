@interface PKExpressPassConfiguration
- (BOOL)isEqual:(id)a3;
- (PKExpressPassConfiguration)initWithCoder:(id)a3;
- (PKExpressPassConfiguration)initWithPassInformation:(id)a3 forPaymentApplications:(id)a4;
- (PKExpressPassConfiguration)initWithPassInformation:(id)a3 forSecureElementPass:(id)a4;
- (PKExpressPassConfiguration)initWithPassInformation:(id)a3 isNFCExpressEnabled:(BOOL)a4 isUWBExpressEnabled:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initForPaymentPass:(id)a3 isNFCExpressEnabled:(BOOL)a4 isUWBExpressEnabled:(BOOL)a5 withTechologyTest:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKExpressPassConfiguration

- (PKExpressPassConfiguration)initWithPassInformation:(id)a3 isNFCExpressEnabled:(BOOL)a4 isUWBExpressEnabled:(BOOL)a5
{
  result = a3;
  if (result)
  {
    v10 = result;
    v14.receiver = self;
    v14.super_class = PKExpressPassConfiguration;
    v11 = [(PKExpressPassConfiguration *)&v14 init];
    if (v11)
    {
      v12 = [(PKExpressPassConfiguration *)v10 passUniqueIdentifier];
      passUniqueIdentifier = v11->_passUniqueIdentifier;
      v11->_passUniqueIdentifier = v12;

      objc_storeStrong(&v11->_passInformation, a3);
      v11->_isNFCExpressEnabled = a4;
      v11->_isUWBExpressEnabled = a5;
      if (!a4 && !a5)
      {

        v11 = 0;
      }
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)initForPaymentPass:(id)a3 isNFCExpressEnabled:(BOOL)a4 isUWBExpressEnabled:(BOOL)a5 withTechologyTest:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  v11 = a3;
  v12 = [[PKExpressPassInformation alloc] initForPaymentPass:v11 withTechologyTest:v10];

  if (v12)
  {
    v13 = [(PKExpressPassConfiguration *)self initWithPassInformation:v12 isNFCExpressEnabled:v7 isUWBExpressEnabled:v6];
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (PKExpressPassConfiguration)initWithPassInformation:(id)a3 forSecureElementPass:(id)a4
{
  v6 = a3;
  v7 = [a4 devicePaymentApplications];
  v8 = [(PKExpressPassConfiguration *)self initWithPassInformation:v6 forPaymentApplications:v7];

  return v8;
}

- (PKExpressPassConfiguration)initWithPassInformation:(id)a3 forPaymentApplications:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v21 = self;
    v8 = [v6 paymentApplicationIdentifiers];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v7;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 applicationIdentifier];
          v17 = [v8 containsObject:v16];

          if (v17)
          {
            v12 |= [v15 supportedRadioTechnologies];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    self = [(PKExpressPassConfiguration *)v21 initWithPassInformation:v6 isNFCExpressEnabled:v12 & 1 isUWBExpressEnabled:(v12 >> 1) & 1];
    v18 = self;
    v7 = v20;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = (isKindOfClass & 1) != 0 && [(NSString *)self->_passUniqueIdentifier isEqualToString:v4->_passUniqueIdentifier]&& [(PKExpressPassInformation *)self->_passInformation isEqual:v4->_passInformation]&& self->_isNFCExpressEnabled == v4->_isNFCExpressEnabled && self->_isUWBExpressEnabled == v4->_isUWBExpressEnabled;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_passUniqueIdentifier hash];
  v4 = [(PKExpressPassInformation *)self->_passInformation hash];
  v5 = self->_isNFCExpressEnabled - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  return self->_isUWBExpressEnabled - v5 + 32 * v5 + 15699857;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = @"NO";
  if (self->_isNFCExpressEnabled)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_isUWBExpressEnabled)
  {
    v4 = @"YES";
  }

  v6 = [v3 initWithFormat:@"<PKExpressPassConfiguration: %p; Pass %@; NFC Express Enabled: %@; UWB Express Enabled: %@; Information: %@>", self, self->_passUniqueIdentifier, v5, v4, self->_passInformation];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  passUniqueIdentifier = self->_passUniqueIdentifier;
  v5 = a3;
  [v5 encodeObject:passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [v5 encodeObject:self->_passInformation forKey:@"passInformation"];
  [v5 encodeBool:self->_isNFCExpressEnabled forKey:@"isNFCExpressEnabled"];
  [v5 encodeBool:self->_isUWBExpressEnabled forKey:@"isUWBExpressEnabled"];
}

- (PKExpressPassConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passInformation"];
  if (v5)
  {
    self = -[PKExpressPassConfiguration initWithPassInformation:isNFCExpressEnabled:isUWBExpressEnabled:](self, "initWithPassInformation:isNFCExpressEnabled:isUWBExpressEnabled:", v5, [v4 decodeBoolForKey:@"isNFCExpressEnabled"], objc_msgSend(v4, "decodeBoolForKey:", @"isUWBExpressEnabled"));
    v6 = self;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKExpressPassConfiguration" code:0 userInfo:0];
    [v4 failWithError:v7];

    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKExpressPassInformation allocWithZone:](PKExpressPassInformation initWithExpressPassInformation:"initWithExpressPassInformation:", self->_passInformation];
  v6 = [[PKExpressPassConfiguration allocWithZone:?]isNFCExpressEnabled:"initWithPassInformation:isNFCExpressEnabled:isUWBExpressEnabled:" isUWBExpressEnabled:v5, self->_isNFCExpressEnabled, self->_isUWBExpressEnabled];

  return v6;
}

@end