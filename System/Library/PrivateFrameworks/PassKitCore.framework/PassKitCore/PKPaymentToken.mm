@interface PKPaymentToken
+ (PKPaymentToken)paymentTokenWithProtobuf:(id)protobuf;
+ (id)simulatedTokenForNetwork:(id)network;
- (PKPaymentToken)initWithCoder:(id)coder;
- (PKPaymentToken)initWithPaymentMethod:(id)method transactionIdentifier:(id)identifier paymentData:(id)data;
- (id)description;
- (id)dictionaryRepresentation;
- (id)protobuf;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentToken

+ (PKPaymentToken)paymentTokenWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = objc_alloc_init(PKPaymentToken);
  instrumentName = [protobufCopy instrumentName];
  [(PKPaymentToken *)v4 setPaymentInstrumentName:instrumentName];

  network = [protobufCopy network];
  [(PKPaymentToken *)v4 setPaymentNetwork:network];

  transactionIdentifier = [protobufCopy transactionIdentifier];
  [(PKPaymentToken *)v4 setTransactionIdentifier:transactionIdentifier];

  paymentData = [protobufCopy paymentData];
  [(PKPaymentToken *)v4 setPaymentData:paymentData];

  paymentMethod = [protobufCopy paymentMethod];
  v10 = [PKPaymentMethod paymentMethodWithProtobuf:paymentMethod];
  [(PKPaymentToken *)v4 setPaymentMethod:v10];

  v11 = MEMORY[0x1E695DFF8];
  redeemURL = [protobufCopy redeemURL];
  v13 = [v11 URLWithString:redeemURL];
  [(PKPaymentToken *)v4 setRedeemURL:v13];

  retryNonce = [protobufCopy retryNonce];

  [(PKPaymentToken *)v4 setRetryNonce:retryNonce];

  return v4;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufPaymentToken);
  paymentMethod = [(PKPaymentToken *)self paymentMethod];
  displayName = [paymentMethod displayName];
  [(PKProtobufPaymentToken *)v3 setInstrumentName:displayName];

  paymentMethod2 = [(PKPaymentToken *)self paymentMethod];
  network = [paymentMethod2 network];
  [(PKProtobufPaymentToken *)v3 setNetwork:network];

  transactionIdentifier = [(PKPaymentToken *)self transactionIdentifier];
  [(PKProtobufPaymentToken *)v3 setTransactionIdentifier:transactionIdentifier];

  paymentData = [(PKPaymentToken *)self paymentData];
  [(PKProtobufPaymentToken *)v3 setPaymentData:paymentData];

  paymentMethod3 = [(PKPaymentToken *)self paymentMethod];
  protobuf = [paymentMethod3 protobuf];
  [(PKProtobufPaymentToken *)v3 setPaymentMethod:protobuf];

  redeemURL = [(PKPaymentToken *)self redeemURL];
  absoluteString = [redeemURL absoluteString];
  [(PKProtobufPaymentToken *)v3 setRedeemURL:absoluteString];

  retryNonce = [(PKPaymentToken *)self retryNonce];
  [(PKProtobufPaymentToken *)v3 setRetryNonce:retryNonce];

  return v3;
}

- (PKPaymentToken)initWithPaymentMethod:(id)method transactionIdentifier:(id)identifier paymentData:(id)data
{
  methodCopy = method;
  identifierCopy = identifier;
  dataCopy = data;
  v19.receiver = self;
  v19.super_class = PKPaymentToken;
  v12 = [(PKPaymentToken *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_paymentMethod, method);
    v14 = [identifierCopy copy];
    transactionIdentifier = v13->_transactionIdentifier;
    v13->_transactionIdentifier = v14;

    v16 = [dataCopy copy];
    paymentData = v13->_paymentData;
    v13->_paymentData = v16;
  }

  return v13;
}

- (PKPaymentToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKPaymentToken;
  v5 = [(PKPaymentToken *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentInstrumentName"];
    [(PKPaymentToken *)v5 setPaymentInstrumentName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentNetwork"];
    [(PKPaymentToken *)v5 setPaymentNetwork:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    [(PKPaymentToken *)v5 setTransactionIdentifier:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentData"];
    [(PKPaymentToken *)v5 setPaymentData:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentMethod"];
    [(PKPaymentToken *)v5 setPaymentMethod:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"redeemURL"];
    [(PKPaymentToken *)v5 setRedeemURL:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"retryNonce"];
    [(PKPaymentToken *)v5 setRetryNonce:v12];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  paymentInstrumentName = [(PKPaymentToken *)self paymentInstrumentName];
  [coderCopy encodeObject:paymentInstrumentName forKey:@"paymentInstrumentName"];

  paymentNetwork = [(PKPaymentToken *)self paymentNetwork];
  [coderCopy encodeObject:paymentNetwork forKey:@"paymentNetwork"];

  transactionIdentifier = [(PKPaymentToken *)self transactionIdentifier];
  [coderCopy encodeObject:transactionIdentifier forKey:@"transactionIdentifier"];

  paymentData = [(PKPaymentToken *)self paymentData];
  [coderCopy encodeObject:paymentData forKey:@"paymentData"];

  paymentMethod = [(PKPaymentToken *)self paymentMethod];
  [coderCopy encodeObject:paymentMethod forKey:@"paymentMethod"];

  redeemURL = [(PKPaymentToken *)self redeemURL];
  [coderCopy encodeObject:redeemURL forKey:@"redeemURL"];

  retryNonce = [(PKPaymentToken *)self retryNonce];
  [coderCopy encodeObject:retryNonce forKey:@"retryNonce"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_transactionIdentifier)
  {
    [v3 appendFormat:@"transactionIdentifier: %@; ", self->_transactionIdentifier];
  }

  paymentData = self->_paymentData;
  if (paymentData)
  {
    [v4 appendFormat:@"paymentData: %tu bytes", -[NSData length](paymentData, "length")];
  }

  [v4 appendFormat:@">"];
  v6 = [v4 copy];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  transactionIdentifier = self->_transactionIdentifier;
  if (transactionIdentifier)
  {
    [v3 setObject:transactionIdentifier forKeyedSubscript:@"transactionIdentifier"];
  }

  if (self->_paymentData)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_paymentData encoding:4];
    [v4 setObject:v6 forKeyedSubscript:@"paymentData"];
  }

  paymentMethod = self->_paymentMethod;
  if (paymentMethod)
  {
    dictionaryRepresentation = [(PKPaymentMethod *)paymentMethod dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKeyedSubscript:@"paymentMethod"];
  }

  v9 = [v4 copy];

  return v9;
}

+ (id)simulatedTokenForNetwork:(id)network
{
  networkCopy = network;
  v4 = objc_alloc_init(PKPaymentToken);
  [(PKPaymentToken *)v4 setPaymentInstrumentName:@"Simulated Instrument"];
  [(PKPaymentToken *)v4 setPaymentNetwork:networkCopy];
  [(PKPaymentToken *)v4 setTransactionIdentifier:@"Simulated Identifier"];
  data = [MEMORY[0x1E695DEF0] data];
  [(PKPaymentToken *)v4 setPaymentData:data];

  v6 = objc_alloc_init(PKPaymentMethod);
  [(PKPaymentMethod *)v6 setDisplayName:@"Simulated Instrument"];
  [(PKPaymentMethod *)v6 setType:0];
  [(PKPaymentMethod *)v6 setNetwork:networkCopy];

  [(PKPaymentToken *)v4 setPaymentMethod:v6];

  return v4;
}

@end