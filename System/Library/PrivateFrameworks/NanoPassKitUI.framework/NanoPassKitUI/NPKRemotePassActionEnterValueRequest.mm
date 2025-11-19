@interface NPKRemotePassActionEnterValueRequest
- (NPKBalanceField)balanceField;
- (NPKProtoRemotePassActionEnterValueRequest)protoRequest;
- (NPKRemotePassActionEnterValueRequest)initWithIdentifier:(id)a3 cardType:(unint64_t)a4 passOrganizationName:(id)a5 balanceField:(id)a6 image:(id)a7 passLocalizedDesciption:(id)a8 caption:(id)a9 summaryText:(id)a10;
- (NPKRemotePassActionEnterValueRequest)initWithPass:(id)a3 image:(id)a4 balanceField:(id)a5;
- (id)action;
- (id)description;
- (id)identifier;
@end

@implementation NPKRemotePassActionEnterValueRequest

- (NPKRemotePassActionEnterValueRequest)initWithPass:(id)a3 image:(id)a4 balanceField:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  v30 = a4;
  v9 = a3;
  v10 = [v9 uniqueID];
  v11 = [v8 action];
  [v11 type];
  v12 = PKPaymentPassActionTypeToString();
  v13 = [v8 action];
  v14 = [v13 identifier];
  v29 = [v7 stringWithFormat:@"%@:%@:%@", v10, v12, v14];

  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v17 = [v16 localizedStringForKey:@"REQUEST_REMOTE_PAYMENT_PASS_ACTION_RELOAD_CAPTION" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  v18 = [v9 localizedDescription];
  v19 = [v15 stringWithFormat:v17, v18];

  v20 = [v9 localizedDescription];
  v21 = MEMORY[0x277CCACA8];
  v22 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v23 = [v22 localizedStringForKey:@"REQUEST_REMOTE_PAYMENT_PASS_ACTION_RELOAD_SUMMARY_TEXT" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  v24 = [v21 localizedStringWithFormat:v23, v20];

  v25 = NPKRemotePassActionCardTypeForPass(v9);
  v26 = [v9 organizationName];

  v27 = [(NPKRemotePassActionEnterValueRequest *)self initWithIdentifier:v29 cardType:v25 passOrganizationName:v26 balanceField:v8 image:v30 passLocalizedDesciption:v20 caption:v19 summaryText:v24];
  return v27;
}

- (NPKRemotePassActionEnterValueRequest)initWithIdentifier:(id)a3 cardType:(unint64_t)a4 passOrganizationName:(id)a5 balanceField:(id)a6 image:(id)a7 passLocalizedDesciption:(id)a8 caption:(id)a9 summaryText:(id)a10
{
  v16 = MEMORY[0x277D2BA30];
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v39 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a3;
  v23 = objc_alloc_init(v16);
  [v23 setVersion:2];
  [v23 setIsResponse:0];
  [v23 setMessageType:1];
  [v23 setPassLocalizedDescription:v19];

  [v23 setCaption:v18];
  [v23 setSummaryText:v17];

  [v23 setPassOrganizationName:v21];
  [v23 setCardType:NPKProtoRemotePassActionCardTypeForNPKRemotePassActionCardType(a4)];
  v24 = objc_alloc_init(MEMORY[0x277D2BA20]);
  v25 = [v20 action];
  v26 = NPKSecureArchiveObject();
  [v24 setPaymentPassActionData:v26];

  v27 = [v20 balance];
  v28 = [v27 identifiers];
  v29 = [v28 anyObject];
  [v24 setBalanceIdentifier:v29];

  v30 = [v20 label];
  [v24 setBalanceLabel:v30];

  v31 = [v20 balance];
  v32 = [v31 currencyCode];
  [v24 setCurrentBalanceCurrency:v32];

  v33 = [v20 balance];

  v34 = [v33 currencyValue];
  v35 = [v34 amount];
  [v24 setCurrentBalanceAmount:PKCurrencyDecimalToStorageInteger()];

  [v24 setRequestUniqueID:v22];
  v36 = [v24 data];
  [v23 setMessageProtoData:v36];
  v41.receiver = self;
  v41.super_class = NPKRemotePassActionEnterValueRequest;
  v37 = [(NPKRemotePassAction *)&v41 initWithProtoEnvelope:v23 image:v39];

  return v37;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPKRemotePassActionEnterValueRequest;
  v3 = [(NPKRemotePassActionRequest *)&v7 description];
  v4 = [(NPKRemotePassActionEnterValueRequest *)self balanceField];
  v5 = [v3 stringByAppendingFormat:@" (balanceField:%@)", v4];

  return v5;
}

- (id)identifier
{
  v2 = [(NPKRemotePassActionEnterValueRequest *)self protoRequest];
  v3 = [v2 requestUniqueID];

  return v3;
}

- (id)action
{
  v2 = [(NPKRemotePassActionEnterValueRequest *)self balanceField];
  v3 = [v2 action];

  return v3;
}

- (NPKProtoRemotePassActionEnterValueRequest)protoRequest
{
  protoRequest = self->_protoRequest;
  if (!protoRequest)
  {
    v4 = objc_alloc(MEMORY[0x277D2BA20]);
    v5 = [(NPKRemotePassAction *)self protoEnvelope];
    v6 = [v5 messageProtoData];
    v7 = [v4 initWithData:v6];
    v8 = self->_protoRequest;
    self->_protoRequest = v7;

    protoRequest = self->_protoRequest;
  }

  return protoRequest;
}

- (NPKBalanceField)balanceField
{
  cachedBalanceField = self->_cachedBalanceField;
  if (!cachedBalanceField)
  {
    v4 = [(NPKRemotePassActionEnterValueRequest *)self protoRequest];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 paymentPassActionData];
      if (v6)
      {
        objc_opt_class();
        v7 = NPKSecureUnarchiveObject();
        if (v7)
        {
          v8 = v7;
          [v5 currentBalanceAmount];
          v9 = PKCurrencyStorageIntegerToCurrencyDecimal();
          v10 = [v5 currentBalanceCurrency];
          v29 = PKCurrencyAmountMake();

          v11 = objc_alloc(MEMORY[0x277D38008]);
          v12 = [v5 balanceIdentifier];
          v13 = [v11 initWithIdentifier:v12 forCurrencyAmount:v29];

          v14 = objc_alloc(MEMORY[0x277D2BA00]);
          v15 = [v5 balanceLabel];
          v16 = [v13 formattedValue];
          v17 = [v5 balanceIdentifier];
          v18 = [v14 initWithBalance:v13 label:v15 formattedValue:v16 identifier:v17 primaryBalance:1 action:v8 pendingUpdateExpireDate:0];

LABEL_19:
LABEL_22:

          goto LABEL_23;
        }

        v23 = pk_RemotePassAction_log();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

        if (v24)
        {
          v25 = pk_RemotePassAction_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *v30 = 0;
            _os_log_impl(&dword_25B64D000, v25, OS_LOG_TYPE_ERROR, "Error: Missing Action", v30, 2u);
          }
        }

        v8 = 0;
LABEL_18:
        v18 = 0;
        goto LABEL_19;
      }

      v21 = pk_RemotePassAction_log();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (v22)
      {
        v8 = pk_RemotePassAction_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v31 = 0;
          _os_log_impl(&dword_25B64D000, v8, OS_LOG_TYPE_ERROR, "Error: Missing action data", v31, 2u);
        }

        goto LABEL_18;
      }

      v6 = 0;
    }

    else
    {
      v19 = pk_RemotePassAction_log();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (!v20)
      {
        v18 = 0;
LABEL_23:

        v26 = self->_cachedBalanceField;
        self->_cachedBalanceField = v18;

        cachedBalanceField = self->_cachedBalanceField;
        goto LABEL_24;
      }

      v6 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25B64D000, v6, OS_LOG_TYPE_ERROR, "Error: Missing proto request", buf, 2u);
      }
    }

    v18 = 0;
    goto LABEL_22;
  }

LABEL_24:
  v27 = cachedBalanceField;

  return v27;
}

@end