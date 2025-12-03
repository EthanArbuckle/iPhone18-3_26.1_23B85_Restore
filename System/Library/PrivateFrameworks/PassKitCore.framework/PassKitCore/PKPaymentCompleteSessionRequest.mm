@interface PKPaymentCompleteSessionRequest
- (id)bodyDictionary;
- (id)endpointComponents;
@end

@implementation PKPaymentCompleteSessionRequest

- (id)endpointComponents
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  type = [(PKPaymentRewrapRequestBase *)self type];
  if (type > 2)
  {
    if (type == 3)
    {
      [v3 addObject:@"completeSession"];
      v5 = @"issuerInstallment";
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_11;
      }

      [v3 addObject:@"completeSession"];
      v5 = @"rewards";
    }
  }

  else if (type)
  {
    if (type != 1)
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  merchantSessionIdentifier = [(PKPaymentMerchantSession *)self->_merchantSession merchantSessionIdentifier];
  [dictionary setObject:merchantSessionIdentifier forKey:@"merchantSessionId"];

  merchantIdentifier = [(PKPaymentMerchantSession *)self->_merchantSession merchantIdentifier];
  [dictionary setObject:merchantIdentifier forKey:@"merchantId"];

  initiative = [(PKPaymentMerchantSession *)self->_merchantSession initiative];

  merchantSession = self->_merchantSession;
  if (initiative)
  {
    initiative2 = [(PKPaymentMerchantSession *)merchantSession initiative];
    [dictionary setObject:initiative2 forKey:@"initiative"];

    initiativeContext = [(PKPaymentMerchantSession *)self->_merchantSession initiativeContext];

    if (!initiativeContext)
    {
      goto LABEL_6;
    }

    initiativeContext2 = [(PKPaymentMerchantSession *)self->_merchantSession initiativeContext];
    v11 = @"initiativeContext";
  }

  else
  {
    initiativeContext2 = [(PKPaymentMerchantSession *)merchantSession domain];
    v11 = @"domainName";
  }

  [dictionary setObject:initiativeContext2 forKey:v11];

LABEL_6:
  wrappedPayment = [(PKPaymentRewrapRequestBase *)self wrappedPayment];
  enrollmentSignature = [wrappedPayment enrollmentSignature];

  if (enrollmentSignature)
  {
    hexEncoding = [enrollmentSignature hexEncoding];
    [dictionary setObject:hexEncoding forKey:@"enrollmentSignature"];
  }

  v18.receiver = self;
  v18.super_class = PKPaymentCompleteSessionRequest;
  bodyDictionary = [(PKPaymentRewrapRequestBase *)&v18 bodyDictionary];
  [dictionary addEntriesFromDictionary:bodyDictionary];

  v16 = [dictionary copy];

  return v16;
}

@end