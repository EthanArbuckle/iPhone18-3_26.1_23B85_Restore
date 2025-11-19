@interface PKPaymentAuthorizationResult
+ (id)sanitizedErrors:(id)a3;
- (PKPaymentAuthorizationResult)initWithCoder:(id)a3;
- (PKPaymentAuthorizationResult)initWithStatus:(PKPaymentAuthorizationStatus)status errors:(NSArray *)errors;
- (void)encodeWithCoder:(id)a3;
- (void)setErrors:(NSArray *)errors;
@end

@implementation PKPaymentAuthorizationResult

- (PKPaymentAuthorizationResult)initWithStatus:(PKPaymentAuthorizationStatus)status errors:(NSArray *)errors
{
  v6 = errors;
  v12.receiver = self;
  v12.super_class = PKPaymentAuthorizationResult;
  v7 = [(PKPaymentAuthorizationResult *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_status = status;
    if (v6)
    {
      v9 = [PKPaymentAuthorizationResult sanitizedErrors:v6];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    v10 = v8->_errors;
    v8->_errors = v9;
  }

  return v8;
}

- (PKPaymentAuthorizationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKPaymentAuthorizationResult;
  v5 = [(PKPaymentAuthorizationResult *)&v18 init];
  if (v5)
  {
    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"errors"];
    errors = v5->_errors;
    v5->_errors = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentTransactionMetadata"];
    peerPaymentTransactionMetadata = v5->_peerPaymentTransactionMetadata;
    v5->_peerPaymentTransactionMetadata = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedErrorMessageOverride"];
    localizedErrorMessageOverride = v5->_localizedErrorMessageOverride;
    v5->_localizedErrorMessageOverride = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"orderDetails"];
    orderDetails = v5->_orderDetails;
    v5->_orderDetails = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  status = self->_status;
  v5 = a3;
  [v5 encodeInteger:status forKey:@"status"];
  [v5 encodeObject:self->_errors forKey:@"errors"];
  [v5 encodeObject:self->_peerPaymentTransactionMetadata forKey:@"peerPaymentTransactionMetadata"];
  [v5 encodeObject:self->_localizedErrorMessageOverride forKey:@"localizedErrorMessageOverride"];
  [v5 encodeObject:self->_orderDetails forKey:@"orderDetails"];
}

- (void)setErrors:(NSArray *)errors
{
  v4 = errors;
  v5 = v4;
  v6 = self->_errors;
  if (v6 != v4)
  {
    v8 = v4;
    if (v4)
    {
      v7 = [PKPaymentAuthorizationResult sanitizedErrors:v4];
      v6 = self->_errors;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    self->_errors = v7;

    v5 = v8;
  }
}

+ (id)sanitizedErrors:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v21 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v21)
  {
    v19 = *v23;
    v4 = *MEMORY[0x1E696A578];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = [v6 userInfo];
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = [v7 objectForKeyedSubscript:@"PKPaymentErrorContactField"];
        [v8 setObject:v9 forKeyedSubscript:@"PKPaymentErrorContactField"];

        v10 = [v7 objectForKeyedSubscript:@"PKDisbursementErrorContactField"];
        [v8 setObject:v10 forKeyedSubscript:@"PKDisbursementErrorContactField"];

        v11 = [v7 objectForKeyedSubscript:@"PKPaymentErrorPostalAddress"];
        [v8 setObject:v11 forKeyedSubscript:@"PKPaymentErrorPostalAddress"];

        v12 = [v7 objectForKeyedSubscript:v4];
        [v8 setObject:v12 forKeyedSubscript:v4];

        v13 = objc_alloc(MEMORY[0x1E696ABC0]);
        v14 = [v6 domain];
        v15 = [v13 initWithDomain:v14 code:objc_msgSend(v6 userInfo:{"code"), v8}];

        [v20 addObject:v15];
      }

      v21 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v21);
  }

  v16 = [v20 copy];

  return v16;
}

@end