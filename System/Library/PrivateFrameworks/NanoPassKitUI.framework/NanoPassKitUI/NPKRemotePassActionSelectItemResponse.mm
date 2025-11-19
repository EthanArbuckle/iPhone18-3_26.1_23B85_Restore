@interface NPKRemotePassActionSelectItemResponse
- (NPKProtoRemotePassActionSelectItemResponse)protoResponse;
- (NPKRemotePassActionSelectItemResponse)initWithIdentifier:(id)a3 cardType:(unint64_t)a4 passOrganizationName:(id)a5 result:(int)a6 incrementAmount:(int64_t)a7 currencyCode:(id)a8 serviceProviderDataData:(id)a9 image:(id)a10 passLocalizedDesciption:(id)a11 caption:(id)a12 summaryText:(id)a13 message:(id)a14;
- (NPKRemotePassActionSelectItemResponse)initWithRenewalAmount:(id)a3 serviceProviderData:(id)a4 fromRequest:(id)a5 withResult:(int)a6;
- (id)currencyAmount;
- (id)description;
- (id)identifier;
- (id)serviceProviderData;
- (int)result;
@end

@implementation NPKRemotePassActionSelectItemResponse

- (NPKRemotePassActionSelectItemResponse)initWithRenewalAmount:(id)a3 serviceProviderData:(id)a4 fromRequest:(id)a5 withResult:(int)a6
{
  v8 = a5;
  v32 = a4;
  v9 = a3;
  v10 = [v8 commutePlanField];
  v11 = [v10 detailLabel];

  v29 = [v8 passLocalizedDescription];
  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v14 = [v13 localizedStringForKey:@"RESPONSE_REMOTE_PAYMENT_PASS_ACTION_RENEW_CAPTION" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  v31 = v11;
  v30 = [v12 localizedStringWithFormat:v14, v11];

  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v17 = [v16 localizedStringForKey:@"RESPONSE_REMOTE_PAYMENT_PASS_ACTION_RENEW_SUMMARY_TEXT" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  v18 = [v15 localizedStringWithFormat:v17, v11, v29];

  v19 = [v8 identifier];
  v20 = [v8 cardType];
  v28 = [v8 passOrganizationName];
  v21 = [v9 amount];
  v27 = PKCurrencyDecimalToStorageInteger();
  v22 = [v9 currency];

  v23 = NPKSecureArchiveObject();

  v24 = [v8 image];
  v25 = [v8 underlyingMessage];

  v35 = [(NPKRemotePassActionSelectItemResponse *)self initWithIdentifier:v19 cardType:v20 passOrganizationName:v28 result:a6 incrementAmount:v27 currencyCode:v22 serviceProviderDataData:v23 image:v24 passLocalizedDesciption:v29 caption:v30 summaryText:v18 message:v25];
  return v35;
}

- (NPKRemotePassActionSelectItemResponse)initWithIdentifier:(id)a3 cardType:(unint64_t)a4 passOrganizationName:(id)a5 result:(int)a6 incrementAmount:(int64_t)a7 currencyCode:(id)a8 serviceProviderDataData:(id)a9 image:(id)a10 passLocalizedDesciption:(id)a11 caption:(id)a12 summaryText:(id)a13 message:(id)a14
{
  v17 = MEMORY[0x277D2BA30];
  v34 = a14;
  v18 = a13;
  v19 = a12;
  v20 = a11;
  v21 = a10;
  v22 = a9;
  v23 = a8;
  v24 = a5;
  v25 = a3;
  v26 = objc_alloc_init(v17);
  [v26 setVersion:2];
  [v26 setIsResponse:1];
  [v26 setMessageType:2];
  [v26 setPassLocalizedDescription:v20];

  [v26 setCaption:v19];
  [v26 setSummaryText:v18];

  [v26 setPassOrganizationName:v24];
  [v26 setCardType:NPKProtoRemotePassActionCardTypeForNPKRemotePassActionCardType(a4)];
  v27 = objc_alloc_init(MEMORY[0x277D2BA40]);
  [v27 setResult:NPKProtoRemotePassActionResultForNPKProtoRemotePassActionResponseResult(a6)];
  [v27 setRequestUniqueID:v25];

  [v27 setIncrementAmount:a7];
  [v27 setIncrementCurrency:v23];

  [v27 setServiceProviderDataData:v22];
  v28 = [v27 data];
  [v26 setMessageProtoData:v28];
  v36.receiver = self;
  v36.super_class = NPKRemotePassActionSelectItemResponse;
  v29 = [(NPKRemotePassAction *)&v36 initWithMessage:v34 protoEnvelope:v26 image:v21];

  return v29;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPKRemotePassActionSelectItemResponse;
  v3 = [(NPKRemotePassActionResponse *)&v7 description];
  v4 = [(NPKRemotePassActionSelectItemResponse *)self serviceProviderData];
  v5 = [v3 stringByAppendingFormat:@" (serviceProviderData:%@)", v4];

  return v5;
}

- (id)identifier
{
  v2 = [(NPKRemotePassActionSelectItemResponse *)self protoResponse];
  v3 = [v2 requestUniqueID];

  return v3;
}

- (int)result
{
  v2 = [(NPKRemotePassActionSelectItemResponse *)self protoResponse];
  v3 = NPKRemotePassActionResponseResultForNPKProtoRemotePassActionResult([v2 result]);

  return v3;
}

- (NPKProtoRemotePassActionSelectItemResponse)protoResponse
{
  protoResponse = self->_protoResponse;
  if (!protoResponse)
  {
    v4 = [(NPKRemotePassAction *)self protoEnvelope];
    v5 = [v4 messageProtoData];

    v6 = [objc_alloc(MEMORY[0x277D2BA40]) initWithData:v5];
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
    v5 = [(NPKRemotePassActionSelectItemResponse *)self protoResponse];
    [v5 incrementAmount];
    v6 = PKCurrencyStorageIntegerToCurrencyDecimal();

    v7 = [(NPKRemotePassActionSelectItemResponse *)self protoResponse];
    v8 = [v7 incrementCurrency];

    v9 = [objc_alloc(MEMORY[0x277D37E50]) initWithAmount:v6 currency:v8 exponent:1];
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
    v11 = [(NPKRemotePassActionSelectItemResponse *)self protoResponse];
    v12 = [v11 serviceProviderDataData];
    v13 = NPKSecureUnarchiveObjectOfClasses();
    v14 = self->_cachedServiceProviderData;
    self->_cachedServiceProviderData = v13;

    v3 = self->_cachedServiceProviderData;
  }

  return v3;
}

@end