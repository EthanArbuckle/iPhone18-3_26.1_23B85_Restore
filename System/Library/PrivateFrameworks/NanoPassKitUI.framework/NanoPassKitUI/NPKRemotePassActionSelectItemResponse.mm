@interface NPKRemotePassActionSelectItemResponse
- (NPKProtoRemotePassActionSelectItemResponse)protoResponse;
- (NPKRemotePassActionSelectItemResponse)initWithIdentifier:(id)identifier cardType:(unint64_t)type passOrganizationName:(id)name result:(int)result incrementAmount:(int64_t)amount currencyCode:(id)code serviceProviderDataData:(id)data image:(id)self0 passLocalizedDesciption:(id)self1 caption:(id)self2 summaryText:(id)self3 message:(id)self4;
- (NPKRemotePassActionSelectItemResponse)initWithRenewalAmount:(id)amount serviceProviderData:(id)data fromRequest:(id)request withResult:(int)result;
- (id)currencyAmount;
- (id)description;
- (id)identifier;
- (id)serviceProviderData;
- (int)result;
@end

@implementation NPKRemotePassActionSelectItemResponse

- (NPKRemotePassActionSelectItemResponse)initWithRenewalAmount:(id)amount serviceProviderData:(id)data fromRequest:(id)request withResult:(int)result
{
  requestCopy = request;
  dataCopy = data;
  amountCopy = amount;
  commutePlanField = [requestCopy commutePlanField];
  detailLabel = [commutePlanField detailLabel];

  passLocalizedDescription = [requestCopy passLocalizedDescription];
  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v14 = [v13 localizedStringForKey:@"RESPONSE_REMOTE_PAYMENT_PASS_ACTION_RENEW_CAPTION" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  v31 = detailLabel;
  v30 = [v12 localizedStringWithFormat:v14, detailLabel];

  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v17 = [v16 localizedStringForKey:@"RESPONSE_REMOTE_PAYMENT_PASS_ACTION_RENEW_SUMMARY_TEXT" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  v18 = [v15 localizedStringWithFormat:v17, detailLabel, passLocalizedDescription];

  identifier = [requestCopy identifier];
  cardType = [requestCopy cardType];
  passOrganizationName = [requestCopy passOrganizationName];
  amount = [amountCopy amount];
  v27 = PKCurrencyDecimalToStorageInteger();
  currency = [amountCopy currency];

  v23 = NPKSecureArchiveObject();

  image = [requestCopy image];
  underlyingMessage = [requestCopy underlyingMessage];

  v35 = [(NPKRemotePassActionSelectItemResponse *)self initWithIdentifier:identifier cardType:cardType passOrganizationName:passOrganizationName result:result incrementAmount:v27 currencyCode:currency serviceProviderDataData:v23 image:image passLocalizedDesciption:passLocalizedDescription caption:v30 summaryText:v18 message:underlyingMessage];
  return v35;
}

- (NPKRemotePassActionSelectItemResponse)initWithIdentifier:(id)identifier cardType:(unint64_t)type passOrganizationName:(id)name result:(int)result incrementAmount:(int64_t)amount currencyCode:(id)code serviceProviderDataData:(id)data image:(id)self0 passLocalizedDesciption:(id)self1 caption:(id)self2 summaryText:(id)self3 message:(id)self4
{
  v17 = MEMORY[0x277D2BA30];
  messageCopy = message;
  textCopy = text;
  captionCopy = caption;
  desciptionCopy = desciption;
  imageCopy = image;
  dataCopy = data;
  codeCopy = code;
  nameCopy = name;
  identifierCopy = identifier;
  v26 = objc_alloc_init(v17);
  [v26 setVersion:2];
  [v26 setIsResponse:1];
  [v26 setMessageType:2];
  [v26 setPassLocalizedDescription:desciptionCopy];

  [v26 setCaption:captionCopy];
  [v26 setSummaryText:textCopy];

  [v26 setPassOrganizationName:nameCopy];
  [v26 setCardType:NPKProtoRemotePassActionCardTypeForNPKRemotePassActionCardType(type)];
  v27 = objc_alloc_init(MEMORY[0x277D2BA40]);
  [v27 setResult:NPKProtoRemotePassActionResultForNPKProtoRemotePassActionResponseResult(result)];
  [v27 setRequestUniqueID:identifierCopy];

  [v27 setIncrementAmount:amount];
  [v27 setIncrementCurrency:codeCopy];

  [v27 setServiceProviderDataData:dataCopy];
  data = [v27 data];
  [v26 setMessageProtoData:data];
  v36.receiver = self;
  v36.super_class = NPKRemotePassActionSelectItemResponse;
  v29 = [(NPKRemotePassAction *)&v36 initWithMessage:messageCopy protoEnvelope:v26 image:imageCopy];

  return v29;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPKRemotePassActionSelectItemResponse;
  v3 = [(NPKRemotePassActionResponse *)&v7 description];
  serviceProviderData = [(NPKRemotePassActionSelectItemResponse *)self serviceProviderData];
  v5 = [v3 stringByAppendingFormat:@" (serviceProviderData:%@)", serviceProviderData];

  return v5;
}

- (id)identifier
{
  protoResponse = [(NPKRemotePassActionSelectItemResponse *)self protoResponse];
  requestUniqueID = [protoResponse requestUniqueID];

  return requestUniqueID;
}

- (int)result
{
  protoResponse = [(NPKRemotePassActionSelectItemResponse *)self protoResponse];
  v3 = NPKRemotePassActionResponseResultForNPKProtoRemotePassActionResult([protoResponse result]);

  return v3;
}

- (NPKProtoRemotePassActionSelectItemResponse)protoResponse
{
  protoResponse = self->_protoResponse;
  if (!protoResponse)
  {
    protoEnvelope = [(NPKRemotePassAction *)self protoEnvelope];
    messageProtoData = [protoEnvelope messageProtoData];

    v6 = [objc_alloc(MEMORY[0x277D2BA40]) initWithData:messageProtoData];
    v7 = self->_protoResponse;
    self->_protoResponse = v6;

    protoResponse = self->_protoResponse;
  }

  return protoResponse;
}

- (id)currencyAmount
{
  cachedCurrencyAmount = self->_cachedCurrencyAmount;
  if (cachedCurrencyAmount)
  {
    v3 = cachedCurrencyAmount;
  }

  else
  {
    protoResponse = [(NPKRemotePassActionSelectItemResponse *)self protoResponse];
    [protoResponse incrementAmount];
    v6 = PKCurrencyStorageIntegerToCurrencyDecimal();

    protoResponse2 = [(NPKRemotePassActionSelectItemResponse *)self protoResponse];
    incrementCurrency = [protoResponse2 incrementCurrency];

    v9 = [objc_alloc(MEMORY[0x277D37E50]) initWithAmount:v6 currency:incrementCurrency exponent:1];
    v10 = self->_cachedCurrencyAmount;
    self->_cachedCurrencyAmount = v9;

    v3 = self->_cachedCurrencyAmount;
  }

  return v3;
}

- (id)serviceProviderData
{
  cachedServiceProviderData = self->_cachedServiceProviderData;
  if (cachedServiceProviderData)
  {
    v3 = cachedServiceProviderData;
  }

  else
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    protoResponse = [(NPKRemotePassActionSelectItemResponse *)self protoResponse];
    serviceProviderDataData = [protoResponse serviceProviderDataData];
    v13 = NPKSecureUnarchiveObjectOfClasses();
    v14 = self->_cachedServiceProviderData;
    self->_cachedServiceProviderData = v13;

    v3 = self->_cachedServiceProviderData;
  }

  return v3;
}

@end