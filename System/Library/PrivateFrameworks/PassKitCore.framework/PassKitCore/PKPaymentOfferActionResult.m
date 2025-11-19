@interface PKPaymentOfferActionResult
+ (id)paymentOfferActionResultFromQueryItems:(id)a3;
- (PKPaymentOfferActionResult)initWithCoder:(id)a3;
- (PKPaymentOfferActionResult)initWithSessionIdentifier:(id)a3 provisioningCredentialIdentifier:(id)a4 provisioningCardIconURL:(id)a5 didSelectOffer:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentOfferActionResult

- (PKPaymentOfferActionResult)initWithSessionIdentifier:(id)a3 provisioningCredentialIdentifier:(id)a4 provisioningCardIconURL:(id)a5 didSelectOffer:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = PKPaymentOfferActionResult;
  v13 = [(PKPaymentOfferActionResult *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    sessionIdentifier = v13->_sessionIdentifier;
    v13->_sessionIdentifier = v14;

    v16 = [v11 copy];
    provisioningCredentialIdentifier = v13->_provisioningCredentialIdentifier;
    v13->_provisioningCredentialIdentifier = v16;

    v18 = [v12 copy];
    provisioningCardIconURL = v13->_provisioningCardIconURL;
    v13->_provisioningCardIconURL = v18;

    v13->_didSelectOffer = a6;
  }

  return v13;
}

+ (id)paymentOfferActionResultFromQueryItems:(id)a3
{
  v4 = a3;
  v5 = [v4 pk_firstObjectPassingTest:&__block_literal_global_82];
  v6 = [v5 value];

  v7 = [v4 pk_firstObjectPassingTest:&__block_literal_global_27_0];
  v8 = [v7 value];

  v9 = [v4 pk_firstObjectPassingTest:&__block_literal_global_29_0];
  v10 = [v9 value];

  if (v10)
  {
    v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v4 pk_firstObjectPassingTest:&__block_literal_global_31_0];
  v13 = [v12 value];

  if (v13)
  {
    v14 = [v13 BOOLValue];
    if (v6)
    {
LABEL_6:
      v15 = [[a1 alloc] initWithSessionIdentifier:v6 provisioningCredentialIdentifier:v8 provisioningCardIconURL:v11 didSelectOffer:v14];
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 1;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_9:

  return v15;
}

uint64_t __69__PKPaymentOfferActionResult_paymentOfferActionResultFromQueryItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = v2;
  if (v2 == @"sessionIdentifier")
  {
    v4 = 1;
  }

  else if (v2)
  {
    v4 = [(__CFString *)v2 isEqualToString:@"sessionIdentifier"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __69__PKPaymentOfferActionResult_paymentOfferActionResultFromQueryItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = v2;
  if (v2 == @"provisioningCredentialIdentifier")
  {
    v4 = 1;
  }

  else if (v2)
  {
    v4 = [(__CFString *)v2 isEqualToString:@"provisioningCredentialIdentifier"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __69__PKPaymentOfferActionResult_paymentOfferActionResultFromQueryItems___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = v2;
  if (v2 == @"provisioningCardIconURL")
  {
    v4 = 1;
  }

  else if (v2)
  {
    v4 = [(__CFString *)v2 isEqualToString:@"provisioningCardIconURL"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __69__PKPaymentOfferActionResult_paymentOfferActionResultFromQueryItems___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = v2;
  if (v2 == @"didSelectOffer")
  {
    v4 = 1;
  }

  else if (v2)
  {
    v4 = [(__CFString *)v2 isEqualToString:@"didSelectOffer"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKPaymentOfferActionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentOfferActionResult;
  v5 = [(PKPaymentOfferActionResult *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningCredentialIdentifier"];
    provisioningCredentialIdentifier = v5->_provisioningCredentialIdentifier;
    v5->_provisioningCredentialIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningCardIconURL"];
    provisioningCardIconURL = v5->_provisioningCardIconURL;
    v5->_provisioningCardIconURL = v10;

    v5->_didSelectOffer = [v4 decodeBoolForKey:@"didSelectOffer"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionIdentifier = self->_sessionIdentifier;
  v5 = a3;
  [v5 encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];
  [v5 encodeObject:self->_provisioningCredentialIdentifier forKey:@"provisioningCredentialIdentifier"];
  [v5 encodeObject:self->_provisioningCardIconURL forKey:@"provisioningCardIconURL"];
  [v5 encodeBool:self->_didSelectOffer forKey:@"didSelectOffer"];
}

@end