@interface MEMessageSigner
- (BOOL)isEqual:(id)equal;
- (MEMessageSigner)initWithCoder:(id)coder;
- (MEMessageSigner)initWithEmailAddresses:(NSArray *)emailAddresses signatureLabel:(NSString *)label context:(NSData *)context;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (MEMessageSigner)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"EFPropertyKey_emailAddresses"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_label"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_context"];
  v11 = [(MEMessageSigner *)self initWithEmailAddresses:v8 signatureLabel:v9 context:v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  emailAddresses = [(MEMessageSigner *)self emailAddresses];
  [coderCopy encodeObject:emailAddresses forKey:@"EFPropertyKey_emailAddresses"];

  label = [(MEMessageSigner *)self label];
  [coderCopy encodeObject:label forKey:@"EFPropertyKey_label"];

  context = [(MEMessageSigner *)self context];
  [coderCopy encodeObject:context forKey:@"EFPropertyKey_context"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = equalCopy;
    emailAddresses = [(MEMessageSigner *)self emailAddresses];
    emailAddresses2 = [v6 emailAddresses];
    if ([emailAddresses isEqual:emailAddresses2])
    {
      label = [(MEMessageSigner *)self label];
      label2 = [v6 label];
      if ([label isEqual:label2])
      {
        context = [(MEMessageSigner *)self context];
        context2 = [v6 context];
        v13 = [context isEqual:context2];
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
  emailAddresses = [(MEMessageSigner *)self emailAddresses];
  v4 = [emailAddresses hash];

  label = [(MEMessageSigner *)self label];
  v6 = [label hash];

  context = [(MEMessageSigner *)self context];
  v8 = [context hash] + 193376997;

  return 33 * (33 * v4 + v6) + v8;
}

@end