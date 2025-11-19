@interface PKPeerPaymentDeviceScoreAttributes
- (id)description;
- (id)key;
@end

@implementation PKPeerPaymentDeviceScoreAttributes

- (id)key
{
  v3 = PKPeerPaymentDeviceScoreTransactionTypeForEndpoint(self->_endpoint, self->_quoteRequestDestination, self->_messagesContext);
  v4 = PKPeerPaymentDeviceScoreEncryptedPayloadTransactionTypeToString(v3);
  if ([(NSArray *)self->_recipientAddresses count])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", PKCombinedHash(17, self->_recipientAddresses)];
  }

  else
  {
    v5 = self->_recipientAddress;
  }

  v6 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v4, v5];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"payloadVersion: '%lu'; ", self->_payloadVersion];
  v4 = self->_endpoint - 1;
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E79DAD20[v4];
  }

  [v3 appendFormat:@"endpoint: '%@'; ", v5];
  v6 = PKPeerPaymentQuoteRequestDestinationTypeToString(self->_quoteRequestDestination);
  [v3 appendFormat:@"quoteRequestDestination: '%@'; ", v6];

  v7 = PKPeerPaymentMessagesContextToString(self->_messagesContext);
  [v3 appendFormat:@"messagesContext: '%@'; ", v7];

  [v3 appendFormat:@">"];

  return v3;
}

@end