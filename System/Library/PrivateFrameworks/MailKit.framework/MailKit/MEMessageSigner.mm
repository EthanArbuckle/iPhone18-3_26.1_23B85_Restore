@interface MEMessageSigner
- (BOOL)isEqual:(id)a3;
- (MEMessageSigner)initWithCoder:(id)a3;
- (MEMessageSigner)initWithEmailAddresses:(NSArray *)emailAddresses signatureLabel:(NSString *)label context:(NSData *)context;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MEMessageSigner

- (MEMessageSigner)initWithEmailAddresses:(NSArray *)emailAddresses signatureLabel:(NSString *)label context:(NSData *)context
{
  v9 = emailAddresses;
  v10 = label;
  v11 = context;
  v15.receiver = self;
  v15.super_class = MEMessageSigner;
  v12 = [(MEMessageSigner *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_emailAddresses, emailAddresses);
    objc_storeStrong(&v13->_label, label);
    objc_storeStrong(&v13->_context, context);
  }

  return v13;
}

- (MEMessageSigner)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"EFPropertyKey_emailAddresses"];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_label"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_context"];
  v11 = [(MEMessageSigner *)self initWithEmailAddresses:v8 signatureLabel:v9 context:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(MEMessageSigner *)self emailAddresses];
  [v7 encodeObject:v4 forKey:@"EFPropertyKey_emailAddresses"];

  v5 = [(MEMessageSigner *)self label];
  [v7 encodeObject:v5 forKey:@"EFPropertyKey_label"];

  v6 = [(MEMessageSigner *)self context];
  [v7 encodeObject:v6 forKey:@"EFPropertyKey_context"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(MEMessageSigner *)self emailAddresses];
    v8 = [v6 emailAddresses];
    if ([v7 isEqual:v8])
    {
      v9 = [(MEMessageSigner *)self label];
      v10 = [v6 label];
      if ([v9 isEqual:v10])
      {
        v11 = [(MEMessageSigner *)self context];
        v12 = [v6 context];
        v13 = [v11 isEqual:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(MEMessageSigner *)self emailAddresses];
  v4 = [v3 hash];

  v5 = [(MEMessageSigner *)self label];
  v6 = [v5 hash];

  v7 = [(MEMessageSigner *)self context];
  v8 = [v7 hash] + 193376997;

  return 33 * (33 * v4 + v6) + v8;
}

@end