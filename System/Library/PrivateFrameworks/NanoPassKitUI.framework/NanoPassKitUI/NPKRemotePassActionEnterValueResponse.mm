@interface NPKRemotePassActionEnterValueResponse
- (NPKProtoRemotePassActionEnterValueResponse)protoResponse;
- (NPKRemotePassActionEnterValueResponse)initWithIdentifier:(id)a3 cardType:(unint64_t)a4 passOrganizationName:(id)a5 result:(int)a6 incrementAmount:(int64_t)a7 currencyCode:(id)a8 image:(id)a9 passLocalizedDesciption:(id)a10 caption:(id)a11 summaryText:(id)a12 message:(id)a13;
- (NPKRemotePassActionEnterValueResponse)initWithTopUpAmount:(id)a3 fromRequest:(id)a4 withResult:(int)a5;
- (id)currencyAmount;
- (id)description;
- (id)identifier;
- (int)result;
@end

@implementation NPKRemotePassActionEnterValueResponse

- (NPKRemotePassActionEnterValueResponse)initWithTopUpAmount:(id)a3 fromRequest:(id)a4 withResult:(int)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 minimalFormattedStringValue];
  v26 = [v6 passLocalizedDescription];
  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v11 = [v10 localizedStringForKey:@"RESPONSE_REMOTE_PAYMENT_PASS_ACTION_RELOAD_CAPTION" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  v28 = v8;
  v27 = [v9 localizedStringWithFormat:v11, v8];

  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v14 = [v13 localizedStringForKey:@"RESPONSE_REMOTE_PAYMENT_PASS_ACTION_RELOAD_SUMMARY_TEXT" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  v15 = [v12 localizedStringWithFormat:v14, v8, v26];

  v16 = [v6 identifier];
  v25 = [v6 cardType];
  v17 = [v6 passOrganizationName];
  v18 = [v7 amount];
  v19 = PKCurrencyDecimalToStorageInteger();
  v20 = [v7 currency];

  v21 = [v6 image];
  v22 = [v6 underlyingMessage];

  v23 = [(NPKRemotePassActionEnterValueResponse *)self initWithIdentifier:v16 cardType:v25 passOrganizationName:v17 result:a5 incrementAmount:v19 currencyCode:v20 image:v21 passLocalizedDesciption:v26 caption:v27 summaryText:v15 message:v22];
  return v23;
}

- (NPKRemotePassActionEnterValueResponse)initWithIdentifier:(id)a3 cardType:(unint64_t)a4 passOrganizationName:(id)a5 result:(int)a6 incrementAmount:(int64_t)a7 currencyCode:(id)a8 image:(id)a9 passLocalizedDesciption:(id)a10 caption:(id)a11 summaryText:(id)a12 message:(id)a13
{
  v16 = MEMORY[0x277D2BA30];
  v17 = a13;
  v18 = a12;
  v19 = a11;
  v20 = a10;
  v21 = a9;
  v22 = a8;
  v23 = a5;
  v24 = a3;
  v25 = objc_alloc_init(v16);
  [v25 setVersion:2];
  [v25 setIsResponse:1];
  [v25 setMessageType:1];
  [v25 setPassLocalizedDescription:v20];

  [v25 setCaption:v19];
  [v25 setSummaryText:v18];

  [v25 setPassOrganizationName:v23];
  [v25 setCardType:NPKProtoRemotePassActionCardTypeForNPKRemotePassActionCardType(a4)];
  v26 = objc_alloc_init(MEMORY[0x277D2BA28]);
  [v26 setResult:NPKProtoRemotePassActionResultForNPKProtoRemotePassActionResponseResult(a6)];
  [v26 setRequestUniqueID:v24];

  [v26 setIncrementAmount:a7];
  [v26 setIncrementCurrency:v22];

  v27 = [v26 data];
  [v25 setMessageProtoData:v27];
  v34.receiver = self;
  v34.super_class = NPKRemotePassActionEnterValueResponse;
  v28 = [(NPKRemotePassAction *)&v34 initWithMessage:v17 protoEnvelope:v25 image:v21];

  return v28;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPKRemotePassActionEnterValueResponse;
  v3 = [(NPKRemotePassActionResponse *)&v7 description];
  v4 = [(NPKRemotePassActionEnterValueResponse *)self currencyAmount];
  v5 = [v3 stringByAppendingFormat:@" (currencyAmount:%@)", v4];

  return v5;
}

- (id)identifier
{
  v2 = [(NPKRemotePassActionEnterValueResponse *)self protoResponse];
  v3 = [v2 requestUniqueID];

  return v3;
}

- (int)result
{
  v2 = [(NPKRemotePassActionEnterValueResponse *)self protoResponse];
  v3 = NPKRemotePassActionResponseResultForNPKProtoRemotePassActionResult([v2 result]);

  return v3;
}

- (NPKProtoRemotePassActionEnterValueResponse)protoResponse
{
  protoResponse = self->_protoResponse;
  if (!protoResponse)
  {
    v4 = [(NPKRemotePassAction *)self protoEnvelope];
    v5 = [v4 messageProtoData];

    v6 = [objc_alloc(MEMORY[0x277D2BA28]) initWithData:v5];
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
    v5 = [(NPKRemotePassActionEnterValueResponse *)self protoResponse];
    [v5 incrementAmount];
    v6 = PKCurrencyStorageIntegerToCurrencyDecimal();

    v7 = [(NPKRemotePassActionEnterValueResponse *)self protoResponse];
    v8 = [v7 incrementCurrency];

    v9 = [objc_alloc(MEMORY[0x277D37E50]) initWithAmount:v6 currency:v8 exponent:1];
    v10 = self->_cachedCurrencyAmount;
    self->_cachedCurrencyAmount = v9;

    v3 = self->_cachedCurrencyAmount;
  }

  return v3;
}

@end