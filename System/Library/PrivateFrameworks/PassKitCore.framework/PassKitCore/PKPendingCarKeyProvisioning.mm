@interface PKPendingCarKeyProvisioning
+ (id)uniqueIdentifierForBrandIdentifier:(id)a3 pairedReaderIdentifier:(id)a4;
+ (id)uniqueIdentifierForCarKeyConfiguration:(id)a3;
+ (id)uniqueIdentifierForSubcredential:(id)a3;
- (BOOL)representsPass:(id)a3;
- (PKPendingCarKeyProvisioning)initWithCarKeyConfiguration:(id)a3;
- (PKPendingCarKeyProvisioning)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPendingCarKeyProvisioning

- (PKPendingCarKeyProvisioning)initWithCarKeyConfiguration:(id)a3
{
  v5 = a3;
  v6 = [PKPendingCarKeyProvisioning uniqueIdentifierForCarKeyConfiguration:v5];
  v10.receiver = self;
  v10.super_class = PKPendingCarKeyProvisioning;
  v7 = [(PKPendingProvisioning *)&v10 initWithUniqueIdentifier:v6 status:3];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_configuration, a3);
  }

  return v8;
}

- (PKPendingCarKeyProvisioning)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPendingCarKeyProvisioning;
  v5 = [(PKPendingProvisioning *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPendingCarKeyProvisioning;
  v4 = a3;
  [(PKPendingProvisioning *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_configuration forKey:{@"configuration", v5.receiver, v5.super_class}];
}

+ (id)uniqueIdentifierForBrandIdentifier:(id)a3 pairedReaderIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 length] && objc_msgSend(v5, "length"))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", @"CarKey", v5, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)representsPass:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [a3 devicePaymentApplications];
  v22 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v5 = *v29;
    v23 = v4;
    v21 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v8 = [v7 subcredentials];
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(v8);
              }

              v13 = [PKPendingCarKeyProvisioning uniqueIdentifierForSubcredential:*(*(&v24 + 1) + 8 * j)];
              v14 = [(PKPendingProvisioning *)self uniqueIdentifier];
              v15 = v13;
              v16 = v15;
              if (v14 == v15)
              {

LABEL_25:
                v19 = 1;
                v4 = v23;
                goto LABEL_27;
              }

              if (v15)
              {
                v17 = v14 == 0;
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
                v18 = [v14 isEqualToString:v15];

                if (v18)
                {
                  goto LABEL_25;
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v4 = v23;
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

+ (id)uniqueIdentifierForCarKeyConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 issuerIdentifier];
  v6 = [v4 pairedReaderIdentifier];

  v7 = [a1 uniqueIdentifierForBrandIdentifier:v5 pairedReaderIdentifier:v6];

  return v7;
}

+ (id)uniqueIdentifierForSubcredential:(id)a3
{
  v4 = a3;
  v5 = [v4 brandIdentifier];
  v6 = [v4 pairedReaderIdentifier];

  v7 = [a1 uniqueIdentifierForBrandIdentifier:v5 pairedReaderIdentifier:v6];

  return v7;
}

@end