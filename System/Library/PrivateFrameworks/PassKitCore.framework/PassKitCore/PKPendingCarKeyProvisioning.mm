@interface PKPendingCarKeyProvisioning
+ (id)uniqueIdentifierForBrandIdentifier:(id)identifier pairedReaderIdentifier:(id)readerIdentifier;
+ (id)uniqueIdentifierForCarKeyConfiguration:(id)configuration;
+ (id)uniqueIdentifierForSubcredential:(id)subcredential;
- (BOOL)representsPass:(id)pass;
- (PKPendingCarKeyProvisioning)initWithCarKeyConfiguration:(id)configuration;
- (PKPendingCarKeyProvisioning)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPendingCarKeyProvisioning

- (PKPendingCarKeyProvisioning)initWithCarKeyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = [PKPendingCarKeyProvisioning uniqueIdentifierForCarKeyConfiguration:configurationCopy];
  v10.receiver = self;
  v10.super_class = PKPendingCarKeyProvisioning;
  v7 = [(PKPendingProvisioning *)&v10 initWithUniqueIdentifier:v6 status:3];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_configuration, configuration);
  }

  return v8;
}

- (PKPendingCarKeyProvisioning)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPendingCarKeyProvisioning;
  v5 = [(PKPendingProvisioning *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPendingCarKeyProvisioning;
  coderCopy = coder;
  [(PKPendingProvisioning *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_configuration forKey:{@"configuration", v5.receiver, v5.super_class}];
}

+ (id)uniqueIdentifierForBrandIdentifier:(id)identifier pairedReaderIdentifier:(id)readerIdentifier
{
  identifierCopy = identifier;
  readerIdentifierCopy = readerIdentifier;
  if ([readerIdentifierCopy length] && objc_msgSend(identifierCopy, "length"))
  {
    readerIdentifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", @"CarKey", identifierCopy, readerIdentifierCopy];
  }

  else
  {
    readerIdentifierCopy = 0;
  }

  return readerIdentifierCopy;
}

- (BOOL)representsPass:(id)pass
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  devicePaymentApplications = [pass devicePaymentApplications];
  v22 = [devicePaymentApplications countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v5 = *v29;
    v23 = devicePaymentApplications;
    v21 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        subcredentials = [v7 subcredentials];
        v9 = [subcredentials countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(subcredentials);
              }

              v13 = [PKPendingCarKeyProvisioning uniqueIdentifierForSubcredential:*(*(&v24 + 1) + 8 * j)];
              uniqueIdentifier = [(PKPendingProvisioning *)self uniqueIdentifier];
              v15 = v13;
              v16 = v15;
              if (uniqueIdentifier == v15)
              {

LABEL_25:
                v19 = 1;
                devicePaymentApplications = v23;
                goto LABEL_27;
              }

              if (v15)
              {
                v17 = uniqueIdentifier == 0;
              }

              else
              {
                v17 = 1;
              }

              if (v17)
              {
              }

              else
              {
                v18 = [uniqueIdentifier isEqualToString:v15];

                if (v18)
                {
                  goto LABEL_25;
                }
              }
            }

            v10 = [subcredentials countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        devicePaymentApplications = v23;
        v5 = v21;
      }

      v19 = 0;
      v22 = [v23 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  else
  {
    v19 = 0;
  }

LABEL_27:

  return v19;
}

+ (id)uniqueIdentifierForCarKeyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  issuerIdentifier = [configurationCopy issuerIdentifier];
  pairedReaderIdentifier = [configurationCopy pairedReaderIdentifier];

  v7 = [self uniqueIdentifierForBrandIdentifier:issuerIdentifier pairedReaderIdentifier:pairedReaderIdentifier];

  return v7;
}

+ (id)uniqueIdentifierForSubcredential:(id)subcredential
{
  subcredentialCopy = subcredential;
  brandIdentifier = [subcredentialCopy brandIdentifier];
  pairedReaderIdentifier = [subcredentialCopy pairedReaderIdentifier];

  v7 = [self uniqueIdentifierForBrandIdentifier:brandIdentifier pairedReaderIdentifier:pairedReaderIdentifier];

  return v7;
}

@end