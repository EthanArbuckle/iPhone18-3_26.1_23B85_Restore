@interface NPKRemotePassActionEnterValueResponse
- (NPKProtoRemotePassActionEnterValueResponse)protoResponse;
- (NPKRemotePassActionEnterValueResponse)initWithIdentifier:(id)identifier cardType:(unint64_t)type passOrganizationName:(id)name result:(int)result incrementAmount:(int64_t)amount currencyCode:(id)code image:(id)image passLocalizedDesciption:(id)self0 caption:(id)self1 summaryText:(id)self2 message:(id)self3;
- (NPKRemotePassActionEnterValueResponse)initWithTopUpAmount:(id)amount fromRequest:(id)request withResult:(int)result;
- (id)currencyAmount;
- (id)description;
- (id)identifier;
- (int)result;
@end

@implementation NPKRemotePassActionEnterValueResponse

- (NPKRemotePassActionEnterValueResponse)initWithTopUpAmount:(id)amount fromRequest:(id)request withResult:(int)result
{
  requestCopy = request;
  amountCopy = amount;
  minimalFormattedStringValue = [amountCopy minimalFormattedStringValue];
  passLocalizedDescription = [requestCopy passLocalizedDescription];
  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v11 = [v10 localizedStringForKey:@"RESPONSE_REMOTE_PAYMENT_PASS_ACTION_RELOAD_CAPTION" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  v28 = minimalFormattedStringValue;
  v27 = [v9 localizedStringWithFormat:v11, minimalFormattedStringValue];

  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v14 = [v13 localizedStringForKey:@"RESPONSE_REMOTE_PAYMENT_PASS_ACTION_RELOAD_SUMMARY_TEXT" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  v15 = [v12 localizedStringWithFormat:v14, minimalFormattedStringValue, passLocalizedDescription];

  identifier = [requestCopy identifier];
  cardType = [requestCopy cardType];
  passOrganizationName = [requestCopy passOrganizationName];
  amount = [amountCopy amount];
  v19 = PKCurrencyDecimalToStorageInteger();
  currency = [amountCopy currency];

  image = [requestCopy image];
  underlyingMessage = [requestCopy underlyingMessage];

  v23 = [(NPKRemotePassActionEnterValueResponse *)self initWithIdentifier:identifier cardType:cardType passOrganizationName:passOrganizationName result:result incrementAmount:v19 currencyCode:currency image:image passLocalizedDesciption:passLocalizedDescription caption:v27 summaryText:v15 message:underlyingMessage];
  return v23;
}

- (NPKRemotePassActionEnterValueResponse)initWithIdentifier:(id)identifier cardType:(unint64_t)type passOrganizationName:(id)name result:(int)result incrementAmount:(int64_t)amount currencyCode:(id)code image:(id)image passLocalizedDesciption:(id)self0 caption:(id)self1 summaryText:(id)self2 message:(id)self3
{
  v16 = MEMORY[0x277D2BA30];
  messageCopy = message;
  textCopy = text;
  captionCopy = caption;
  desciptionCopy = desciption;
  imageCopy = image;
  codeCopy = code;
  nameCopy = name;
  identifierCopy = identifier;
  v25 = objc_alloc_init(v16);
  [v25 setVersion:2];
  [v25 setIsResponse:1];
  [v25 setMessageType:1];
  [v25 setPassLocalizedDescription:desciptionCopy];

  [v25 setCaption:captionCopy];
  [v25 setSummaryText:textCopy];

  [v25 setPassOrganizationName:nameCopy];
  [v25 setCardType:NPKProtoRemotePassActionCardTypeForNPKRemotePassActionCardType(type)];
  v26 = objc_alloc_init(MEMORY[0x277D2BA28]);
  [v26 setResult:NPKProtoRemotePassActionResultForNPKProtoRemotePassActionResponseResult(result)];
  [v26 setRequestUniqueID:identifierCopy];

  [v26 setIncrementAmount:amount];
  [v26 setIncrementCurrency:codeCopy];

  data = [v26 data];
  [v25 setMessageProtoData:data];
  v34.receiver = self;
  v34.super_class = NPKRemotePassActionEnterValueResponse;
  v28 = [(NPKRemotePassAction *)&v34 initWithMessage:messageCopy protoEnvelope:v25 image:imageCopy];

  return v28;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPKRemotePassActionEnterValueResponse;
  v3 = [(NPKRemotePassActionResponse *)&v7 description];
  currencyAmount = [(NPKRemotePassActionEnterValueResponse *)self currencyAmount];
  v5 = [v3 stringByAppendingFormat:@" (currencyAmount:%@)", currencyAmount];

  return v5;
}

- (id)identifier
{
  protoResponse = [(NPKRemotePassActionEnterValueResponse *)self protoResponse];
  requestUniqueID = [protoResponse requestUniqueID];

  return requestUniqueID;
}

- (int)result
{
  protoResponse = [(NPKRemotePassActionEnterValueResponse *)self protoResponse];
  v3 = NPKRemotePassActionResponseResultForNPKProtoRemotePassActionResult([protoResponse result]);

  return v3;
}

- (NPKProtoRemotePassActionEnterValueResponse)protoResponse
{
  protoResponse = self->_protoResponse;
  if (!protoResponse)
  {
    protoEnvelope = [(NPKRemotePassAction *)self protoEnvelope];
    messageProtoData = [protoEnvelope messageProtoData];

    v6 = [objc_alloc(MEMORY[0x277D2BA28]) initWithData:messageProtoData];
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
    protoResponse = [(NPKRemotePassActionEnterValueResponse *)self protoResponse];
    [protoResponse incrementAmount];
    v6 = PKCurrencyStorageIntegerToCurrencyDecimal();

    protoResponse2 = [(NPKRemotePassActionEnterValueResponse *)self protoResponse];
    incrementCurrency = [protoResponse2 incrementCurrency];

    v9 = [objc_alloc(MEMORY[0x277D37E50]) initWithAmount:v6 currency:incrementCurrency exponent:1];
    v10 = self->_cachedCurrencyAmount;
    self->_cachedCurrencyAmount = v9;

    v3 = self->_cachedCurrencyAmount;
  }

  return v3;
}

@end