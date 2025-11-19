@interface PKPaymentCompleteSessionRequest
- (id)bodyDictionary;
- (id)endpointComponents;
@end

@implementation PKPaymentCompleteSessionRequest

- (id)endpointComponents
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKPaymentRewrapRequestBase *)self type];
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      [v3 addObject:@"completeSession"];
      v5 = @"issuerInstallment";
    }

    else
    {
      if (v4 != 4)
      {
        goto LABEL_11;
      }

      [v3 addObject:@"completeSession"];
      v5 = @"rewards";
    }
  }

  else if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_11;
    }

    v5 = @"issueVirtualCardNumber";
  }

  else
  {
    v5 = @"completeSession";
  }

  [v3 addObject:v5];
LABEL_11:
  v6 = [v3 copy];

  return v6;
}

- (id)bodyDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(PKPaymentMerchantSession *)self->_merchantSession merchantSessionIdentifier];
  [v3 setObject:v4 forKey:@"merchantSessionId"];

  v5 = [(PKPaymentMerchantSession *)self->_merchantSession merchantIdentifier];
  [v3 setObject:v5 forKey:@"merchantId"];

  v6 = [(PKPaymentMerchantSession *)self->_merchantSession initiative];

  merchantSession = self->_merchantSession;
  if (v6)
  {
    v8 = [(PKPaymentMerchantSession *)merchantSession initiative];
    [v3 setObject:v8 forKey:@"initiative"];

    v9 = [(PKPaymentMerchantSession *)self->_merchantSession initiativeContext];

    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = [(PKPaymentMerchantSession *)self->_merchantSession initiativeContext];
    v11 = @"initiativeContext";
  }

  else
  {
    v10 = [(PKPaymentMerchantSession *)merchantSession domain];
    v11 = @"domainName";
  }

  [v3 setObject:v10 forKey:v11];

LABEL_6:
  v12 = [(PKPaymentRewrapRequestBase *)self wrappedPayment];
  v13 = [v12 enrollmentSignature];

  if (v13)
  {
    v14 = [v13 hexEncoding];
    [v3 setObject:v14 forKey:@"enrollmentSignature"];
  }

  v18.receiver = self;
  v18.super_class = PKPaymentCompleteSessionRequest;
  v15 = [(PKPaymentRewrapRequestBase *)&v18 bodyDictionary];
  [v3 addEntriesFromDictionary:v15];

  v16 = [v3 copy];

  return v16;
}

@end