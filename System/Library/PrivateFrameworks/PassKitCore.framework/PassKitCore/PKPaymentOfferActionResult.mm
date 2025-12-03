@interface PKPaymentOfferActionResult
+ (id)paymentOfferActionResultFromQueryItems:(id)items;
- (PKPaymentOfferActionResult)initWithCoder:(id)coder;
- (PKPaymentOfferActionResult)initWithSessionIdentifier:(id)identifier provisioningCredentialIdentifier:(id)credentialIdentifier provisioningCardIconURL:(id)l didSelectOffer:(BOOL)offer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentOfferActionResult

- (PKPaymentOfferActionResult)initWithSessionIdentifier:(id)identifier provisioningCredentialIdentifier:(id)credentialIdentifier provisioningCardIconURL:(id)l didSelectOffer:(BOOL)offer
{
  identifierCopy = identifier;
  credentialIdentifierCopy = credentialIdentifier;
  lCopy = l;
  v21.receiver = self;
  v21.super_class = PKPaymentOfferActionResult;
  v13 = [(PKPaymentOfferActionResult *)&v21 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    sessionIdentifier = v13->_sessionIdentifier;
    v13->_sessionIdentifier = v14;

    v16 = [credentialIdentifierCopy copy];
    provisioningCredentialIdentifier = v13->_provisioningCredentialIdentifier;
    v13->_provisioningCredentialIdentifier = v16;

    v18 = [lCopy copy];
    provisioningCardIconURL = v13->_provisioningCardIconURL;
    v13->_provisioningCardIconURL = v18;

    v13->_didSelectOffer = offer;
  }

  return v13;
}

+ (id)paymentOfferActionResultFromQueryItems:(id)items
{
  itemsCopy = items;
  v5 = [itemsCopy pk_firstObjectPassingTest:&__block_literal_global_82];
  value = [v5 value];

  v7 = [itemsCopy pk_firstObjectPassingTest:&__block_literal_global_27_0];
  value2 = [v7 value];

  v9 = [itemsCopy pk_firstObjectPassingTest:&__block_literal_global_29_0];
  value3 = [v9 value];

  if (value3)
  {
    v11 = [MEMORY[0x1E695DFF8] URLWithString:value3];
  }

  else
  {
    v11 = 0;
  }

  v12 = [itemsCopy pk_firstObjectPassingTest:&__block_literal_global_31_0];
  value4 = [v12 value];

  if (value4)
  {
    bOOLValue = [value4 BOOLValue];
    if (value)
    {
LABEL_6:
      v15 = [[self alloc] initWithSessionIdentifier:value provisioningCredentialIdentifier:value2 provisioningCardIconURL:v11 didSelectOffer:bOOLValue];
      goto LABEL_9;
    }
  }

  else
  {
    bOOLValue = 1;
    if (value)
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

- (PKPaymentOfferActionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPaymentOfferActionResult;
  v5 = [(PKPaymentOfferActionResult *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningCredentialIdentifier"];
    provisioningCredentialIdentifier = v5->_provisioningCredentialIdentifier;
    v5->_provisioningCredentialIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningCardIconURL"];
    provisioningCardIconURL = v5->_provisioningCardIconURL;
    v5->_provisioningCardIconURL = v10;

    v5->_didSelectOffer = [coderCopy decodeBoolForKey:@"didSelectOffer"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sessionIdentifier = self->_sessionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];
  [coderCopy encodeObject:self->_provisioningCredentialIdentifier forKey:@"provisioningCredentialIdentifier"];
  [coderCopy encodeObject:self->_provisioningCardIconURL forKey:@"provisioningCardIconURL"];
  [coderCopy encodeBool:self->_didSelectOffer forKey:@"didSelectOffer"];
}

@end