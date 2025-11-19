@interface PKPeerPaymentControllerInternalState
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPeerPaymentControllerInternalState:(id)a3;
- (PKPeerPaymentControllerInternalState)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentControllerInternalState

- (PKPeerPaymentControllerInternalState)initWithCoder:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = PKPeerPaymentControllerInternalState;
  v5 = [(PKPeerPaymentControllerInternalState *)&v43 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->state = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
    v5->mode = [v7 unsignedIntegerValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentType"];
    v5->peerPaymentType = [v8 unsignedIntegerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderAddress"];
    senderAddress = v5->senderAddress;
    v5->senderAddress = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipient"];
    recipient = v5->recipient;
    v5->recipient = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestToken"];
    requestToken = v5->requestToken;
    v5->requestToken = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quote"];
    quote = v5->quote;
    v5->quote = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authorizedQuote"];
    authorizedQuote = v5->authorizedQuote;
    v5->authorizedQuote = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"performQuoteResponse"];
    performQuoteResponse = v5->performQuoteResponse;
    v5->performQuoteResponse = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quoteCertificatesResponse"];
    quoteCertificatesResponse = v5->quoteCertificatesResponse;
    v5->quoteCertificatesResponse = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountNumber"];
    accountNumber = v5->accountNumber;
    v5->accountNumber = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routingNumber"];
    routingNumber = v5->routingNumber;
    v5->routingNumber = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountName"];
    accountName = v5->accountName;
    v5->accountName = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quoteRequest"];
    quoteRequest = v5->quoteRequest;
    v5->quoteRequest = v29;

    v5->supportsPreserveCurrentBalance = [v4 decodeBoolForKey:@"supportsPreserveCurrentBalance"];
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recurringPaymentIdentifier"];
    recurringPaymentIdentifier = v5->recurringPaymentIdentifier;
    v5->recurringPaymentIdentifier = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->startDate;
    v5->startDate = v33;

    v5->frequency = [v4 decodeIntegerForKey:@"frequency"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"threshold"];
    threshold = v5->threshold;
    v5->threshold = v35;

    v5->supportsGroupMessage = [v4 decodeBoolForKey:@"supportsGroupMessage"];
    v5->messagesContext = [v4 decodeIntegerForKey:@"messagesContext"];
    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"recipientAddresses"];
    recipientAddresses = v5->recipientAddresses;
    v5->recipientAddresses = v40;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  state = self->state;
  v9 = a3;
  v6 = [v4 numberWithUnsignedInteger:state];
  [v9 encodeObject:v6 forKey:@"state"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->mode];
  [v9 encodeObject:v7 forKey:@"mode"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->peerPaymentType];
  [v9 encodeObject:v8 forKey:@"peerPaymentType"];

  [v9 encodeObject:self->senderAddress forKey:@"senderAddress"];
  [v9 encodeObject:self->recipient forKey:@"recipient"];
  [v9 encodeObject:self->requestToken forKey:@"requestToken"];
  [v9 encodeObject:self->quote forKey:@"quote"];
  [v9 encodeObject:self->authorizedQuote forKey:@"authorizedQuote"];
  [v9 encodeObject:self->performQuoteResponse forKey:@"performQuoteResponse"];
  [v9 encodeObject:self->quoteCertificatesResponse forKey:@"quoteCertificatesResponse"];
  [v9 encodeObject:self->accountNumber forKey:@"accountNumber"];
  [v9 encodeObject:self->routingNumber forKey:@"routingNumber"];
  [v9 encodeObject:self->accountName forKey:@"accountName"];
  [v9 encodeObject:self->quoteRequest forKey:@"quoteRequest"];
  [v9 encodeBool:self->supportsPreserveCurrentBalance forKey:@"supportsPreserveCurrentBalance"];
  [v9 encodeObject:self->recurringPaymentIdentifier forKey:@"recurringPaymentIdentifier"];
  [v9 encodeObject:self->startDate forKey:@"startDate"];
  [v9 encodeInteger:self->frequency forKey:@"frequency"];
  [v9 encodeObject:self->threshold forKey:@"threshold"];
  [v9 encodeBool:self->supportsGroupMessage forKey:@"supportsGroupMessage"];
  [v9 encodeInteger:self->messagesContext forKey:@"messagesContext"];
  [v9 encodeObject:self->recipientAddresses forKey:@"recipientAddresses"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->state];
  [v6 appendFormat:@"state: '%@'; ", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->mode];
  [v6 appendFormat:@"mode: '%@'; ", v8];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->peerPaymentType];
  [v6 appendFormat:@"peerPaymentType: '%@'; ", v9];

  [v6 appendFormat:@"senderAddress: '%@'; ", self->senderAddress];
  [v6 appendFormat:@"recipient: '%@'; ", self->recipient];
  [v6 appendFormat:@"requestToken: '%@'; ", self->requestToken];
  [v6 appendFormat:@"quote: '%@'; ", self->quote];
  [v6 appendFormat:@"authorizedQuote: '%@'; ", self->authorizedQuote];
  [v6 appendFormat:@"performQuoteResponse: '%@'; ", self->performQuoteResponse];
  [v6 appendFormat:@"quoteCertificatesResponse: '%@'; ", self->quoteCertificatesResponse];
  [v6 appendFormat:@"accountNumber: '%@'; ", self->accountNumber];
  [v6 appendFormat:@"routingNumber: '%@'; ", self->routingNumber];
  [v6 appendFormat:@"accountName: '%@'; ", self->accountName];
  [v6 appendFormat:@"quoteRequest: '%@'; ", self->quoteRequest];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->supportsPreserveCurrentBalance];
  [v6 appendFormat:@"supportsPreserveCurrentBalance: '%@'; ", v10];

  [v6 appendFormat:@"recurringPaymentIdentifier: '%@'; ", self->recurringPaymentIdentifier];
  [v6 appendFormat:@"startDate: '%@'; ", self->startDate];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->frequency];
  [v6 appendFormat:@"frequency: '%@'; ", v11];

  [v6 appendFormat:@"threshold: '%@'; ", self->threshold];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->supportsGroupMessage];
  [v6 appendFormat:@"supportsGroupMessage: '%@'; ", v12];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->messagesContext];
  [v6 appendFormat:@"messagesContext: '%@'; ", v13];

  [v6 appendFormat:@"recipientAddresses: '%@';", self->recipientAddresses];
  [v6 appendFormat:@">"];
  v14 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v14;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->senderAddress)
  {
    [v3 addObject:?];
  }

  if (self->recipient)
  {
    [v4 addObject:?];
  }

  if (self->requestToken)
  {
    [v4 addObject:?];
  }

  if (self->quote)
  {
    [v4 addObject:?];
  }

  if (self->authorizedQuote)
  {
    [v4 addObject:?];
  }

  if (self->performQuoteResponse)
  {
    [v4 addObject:?];
  }

  if (self->quoteCertificatesResponse)
  {
    [v4 addObject:?];
  }

  if (self->accountNumber)
  {
    [v4 addObject:?];
  }

  if (self->routingNumber)
  {
    [v4 addObject:?];
  }

  if (self->accountName)
  {
    [v4 addObject:?];
  }

  if (self->quoteRequest)
  {
    [v4 addObject:?];
  }

  if (self->recurringPaymentIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->startDate)
  {
    [v4 addObject:?];
  }

  if (self->threshold)
  {
    [v4 addObject:?];
  }

  if ([(NSArray *)self->recipientAddresses count])
  {
    [v4 addObject:self->recipientAddresses];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->state - v5 + 32 * v5;
  v7 = self->mode - v6 + 32 * v6;
  v8 = self->peerPaymentType - v7 + 32 * v7;
  v9 = self->supportsPreserveCurrentBalance - v8 + 32 * v8;
  v10 = self->frequency - v9 + 32 * v9;
  v11 = self->supportsGroupMessage - v10 + 32 * v10;
  v12 = self->messagesContext - v11 + 32 * v11;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentControllerInternalState *)self isEqualToPeerPaymentControllerInternalState:v5];
  }

  return v6;
}

- (BOOL)isEqualToPeerPaymentControllerInternalState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->state != *(v4 + 8) || self->peerPaymentType != *(v4 + 3) || self->supportsPreserveCurrentBalance != v4[80])
  {
    goto LABEL_82;
  }

  senderAddress = self->senderAddress;
  v7 = *(v5 + 4);
  if (senderAddress && v7)
  {
    if (([(NSString *)senderAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (senderAddress != v7)
  {
    goto LABEL_82;
  }

  recipient = self->recipient;
  v9 = *(v5 + 5);
  if (recipient && v9)
  {
    if (![(PKPeerPaymentRecipient *)recipient isEqual:?])
    {
      goto LABEL_82;
    }
  }

  else if (recipient != v9)
  {
    goto LABEL_82;
  }

  requestToken = self->requestToken;
  v11 = *(v5 + 6);
  if (requestToken && v11)
  {
    if (![(PKPeerPaymentRequestToken *)requestToken isEqual:?])
    {
      goto LABEL_82;
    }
  }

  else if (requestToken != v11)
  {
    goto LABEL_82;
  }

  quote = self->quote;
  v13 = *(v5 + 7);
  if (quote && v13)
  {
    if (![(PKPeerPaymentQuote *)quote isEqual:?])
    {
      goto LABEL_82;
    }
  }

  else if (quote != v13)
  {
    goto LABEL_82;
  }

  authorizedQuote = self->authorizedQuote;
  v15 = *(v5 + 8);
  if (authorizedQuote && v15)
  {
    if (([(PKAuthorizedPeerPaymentQuote *)authorizedQuote isEqual:?]& 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (authorizedQuote != v15)
  {
    goto LABEL_82;
  }

  performQuoteResponse = self->performQuoteResponse;
  v17 = *(v5 + 9);
  if (performQuoteResponse && v17)
  {
    if (([(PKPeerPaymentPerformResponse *)performQuoteResponse isEqual:?]& 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (performQuoteResponse != v17)
  {
    goto LABEL_82;
  }

  quoteCertificatesResponse = self->quoteCertificatesResponse;
  v19 = *(v5 + 11);
  if (quoteCertificatesResponse && v19)
  {
    if (([(PKPeerPaymentQuoteCertificatesResponse *)quoteCertificatesResponse isEqual:?]& 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (quoteCertificatesResponse != v19)
  {
    goto LABEL_82;
  }

  accountNumber = self->accountNumber;
  v21 = *(v5 + 13);
  if (accountNumber && v21)
  {
    if (([(NSString *)accountNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (accountNumber != v21)
  {
    goto LABEL_82;
  }

  routingNumber = self->routingNumber;
  v23 = *(v5 + 14);
  if (routingNumber && v23)
  {
    if (([(NSString *)routingNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (routingNumber != v23)
  {
    goto LABEL_82;
  }

  accountName = self->accountName;
  v25 = *(v5 + 12);
  if (accountName && v25)
  {
    if (([(NSString *)accountName isEqual:?]& 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (accountName != v25)
  {
    goto LABEL_82;
  }

  quoteRequest = self->quoteRequest;
  v27 = *(v5 + 15);
  if (quoteRequest && v27)
  {
    if (![(PKPeerPaymentQuoteRequest *)quoteRequest isEqual:?])
    {
      goto LABEL_82;
    }
  }

  else if (quoteRequest != v27)
  {
    goto LABEL_82;
  }

  recurringPaymentIdentifier = self->recurringPaymentIdentifier;
  v29 = *(v5 + 16);
  if (recurringPaymentIdentifier && v29)
  {
    if (([(NSString *)recurringPaymentIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (recurringPaymentIdentifier != v29)
  {
    goto LABEL_82;
  }

  startDate = self->startDate;
  v31 = *(v5 + 17);
  if (startDate && v31)
  {
    if (([(NSDate *)startDate isEqual:?]& 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (startDate != v31)
  {
    goto LABEL_82;
  }

  recipientAddresses = self->recipientAddresses;
  v33 = *(v5 + 22);
  if (recipientAddresses && v33)
  {
    if (([(NSArray *)recipientAddresses isEqual:?]& 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (recipientAddresses != v33)
  {
    goto LABEL_82;
  }

  if (self->frequency != *(v5 + 18))
  {
    goto LABEL_82;
  }

  threshold = self->threshold;
  v35 = *(v5 + 19);
  if (!threshold || !v35)
  {
    if (threshold == v35)
    {
      goto LABEL_80;
    }

LABEL_82:
    v36 = 0;
    goto LABEL_83;
  }

  if (([(NSDecimalNumber *)threshold isEqual:?]& 1) == 0)
  {
    goto LABEL_82;
  }

LABEL_80:
  if (self->supportsGroupMessage != v5[160])
  {
    goto LABEL_82;
  }

  v36 = self->messagesContext == *(v5 + 21);
LABEL_83:

  return v36;
}

@end