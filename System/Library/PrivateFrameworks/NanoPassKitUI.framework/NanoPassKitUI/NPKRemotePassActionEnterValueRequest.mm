@interface NPKRemotePassActionEnterValueRequest
- (NPKBalanceField)balanceField;
- (NPKProtoRemotePassActionEnterValueRequest)protoRequest;
- (NPKRemotePassActionEnterValueRequest)initWithIdentifier:(id)identifier cardType:(unint64_t)type passOrganizationName:(id)name balanceField:(id)field image:(id)image passLocalizedDesciption:(id)desciption caption:(id)caption summaryText:(id)self0;
- (NPKRemotePassActionEnterValueRequest)initWithPass:(id)pass image:(id)image balanceField:(id)field;
- (id)action;
- (id)description;
- (id)identifier;
@end

@implementation NPKRemotePassActionEnterValueRequest

- (NPKRemotePassActionEnterValueRequest)initWithPass:(id)pass image:(id)image balanceField:(id)field
{
  v7 = MEMORY[0x277CCACA8];
  fieldCopy = field;
  imageCopy = image;
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  action = [fieldCopy action];
  [action type];
  v12 = PKPaymentPassActionTypeToString();
  action2 = [fieldCopy action];
  identifier = [action2 identifier];
  v29 = [v7 stringWithFormat:@"%@:%@:%@", uniqueID, v12, identifier];

  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v17 = [v16 localizedStringForKey:@"REQUEST_REMOTE_PAYMENT_PASS_ACTION_RELOAD_CAPTION" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  localizedDescription = [passCopy localizedDescription];
  v19 = [v15 stringWithFormat:v17, localizedDescription];

  localizedDescription2 = [passCopy localizedDescription];
  v21 = MEMORY[0x277CCACA8];
  v22 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v23 = [v22 localizedStringForKey:@"REQUEST_REMOTE_PAYMENT_PASS_ACTION_RELOAD_SUMMARY_TEXT" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  v24 = [v21 localizedStringWithFormat:v23, localizedDescription2];

  v25 = NPKRemotePassActionCardTypeForPass(passCopy);
  organizationName = [passCopy organizationName];

  v27 = [(NPKRemotePassActionEnterValueRequest *)self initWithIdentifier:v29 cardType:v25 passOrganizationName:organizationName balanceField:fieldCopy image:imageCopy passLocalizedDesciption:localizedDescription2 caption:v19 summaryText:v24];
  return v27;
}

- (NPKRemotePassActionEnterValueRequest)initWithIdentifier:(id)identifier cardType:(unint64_t)type passOrganizationName:(id)name balanceField:(id)field image:(id)image passLocalizedDesciption:(id)desciption caption:(id)caption summaryText:(id)self0
{
  v16 = MEMORY[0x277D2BA30];
  textCopy = text;
  captionCopy = caption;
  desciptionCopy = desciption;
  imageCopy = image;
  fieldCopy = field;
  nameCopy = name;
  identifierCopy = identifier;
  v23 = objc_alloc_init(v16);
  [v23 setVersion:2];
  [v23 setIsResponse:0];
  [v23 setMessageType:1];
  [v23 setPassLocalizedDescription:desciptionCopy];

  [v23 setCaption:captionCopy];
  [v23 setSummaryText:textCopy];

  [v23 setPassOrganizationName:nameCopy];
  [v23 setCardType:NPKProtoRemotePassActionCardTypeForNPKRemotePassActionCardType(type)];
  v24 = objc_alloc_init(MEMORY[0x277D2BA20]);
  action = [fieldCopy action];
  v26 = NPKSecureArchiveObject();
  [v24 setPaymentPassActionData:v26];

  balance = [fieldCopy balance];
  identifiers = [balance identifiers];
  anyObject = [identifiers anyObject];
  [v24 setBalanceIdentifier:anyObject];

  label = [fieldCopy label];
  [v24 setBalanceLabel:label];

  balance2 = [fieldCopy balance];
  currencyCode = [balance2 currencyCode];
  [v24 setCurrentBalanceCurrency:currencyCode];

  balance3 = [fieldCopy balance];

  currencyValue = [balance3 currencyValue];
  amount = [currencyValue amount];
  [v24 setCurrentBalanceAmount:PKCurrencyDecimalToStorageInteger()];

  [v24 setRequestUniqueID:identifierCopy];
  data = [v24 data];
  [v23 setMessageProtoData:data];
  v41.receiver = self;
  v41.super_class = NPKRemotePassActionEnterValueRequest;
  v37 = [(NPKRemotePassAction *)&v41 initWithProtoEnvelope:v23 image:imageCopy];

  return v37;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPKRemotePassActionEnterValueRequest;
  v3 = [(NPKRemotePassActionRequest *)&v7 description];
  balanceField = [(NPKRemotePassActionEnterValueRequest *)self balanceField];
  v5 = [v3 stringByAppendingFormat:@" (balanceField:%@)", balanceField];

  return v5;
}

- (id)identifier
{
  protoRequest = [(NPKRemotePassActionEnterValueRequest *)self protoRequest];
  requestUniqueID = [protoRequest requestUniqueID];

  return requestUniqueID;
}

- (id)action
{
  balanceField = [(NPKRemotePassActionEnterValueRequest *)self balanceField];
  action = [balanceField action];

  return action;
}

- (NPKProtoRemotePassActionEnterValueRequest)protoRequest
{
  protoRequest = self->_protoRequest;
  if (!protoRequest)
  {
    v4 = objc_alloc(MEMORY[0x277D2BA20]);
    protoEnvelope = [(NPKRemotePassAction *)self protoEnvelope];
    messageProtoData = [protoEnvelope messageProtoData];
    v7 = [v4 initWithData:messageProtoData];
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
    protoRequest = [(NPKRemotePassActionEnterValueRequest *)self protoRequest];
    v5 = protoRequest;
    if (protoRequest)
    {
      paymentPassActionData = [protoRequest paymentPassActionData];
      if (paymentPassActionData)
      {
        objc_opt_class();
        v7 = NPKSecureUnarchiveObject();
        if (v7)
        {
          v8 = v7;
          [v5 currentBalanceAmount];
          v9 = PKCurrencyStorageIntegerToCurrencyDecimal();
          currentBalanceCurrency = [v5 currentBalanceCurrency];
          v29 = PKCurrencyAmountMake();

          v11 = objc_alloc(MEMORY[0x277D38008]);
          balanceIdentifier = [v5 balanceIdentifier];
          v13 = [v11 initWithIdentifier:balanceIdentifier forCurrencyAmount:v29];

          v14 = objc_alloc(MEMORY[0x277D2BA00]);
          balanceLabel = [v5 balanceLabel];
          formattedValue = [v13 formattedValue];
          balanceIdentifier2 = [v5 balanceIdentifier];
          v18 = [v14 initWithBalance:v13 label:balanceLabel formattedValue:formattedValue identifier:balanceIdentifier2 primaryBalance:1 action:v8 pendingUpdateExpireDate:0];

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

      paymentPassActionData = 0;
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

      paymentPassActionData = pk_RemotePassAction_log();
      if (os_log_type_enabled(paymentPassActionData, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25B64D000, paymentPassActionData, OS_LOG_TYPE_ERROR, "Error: Missing proto request", buf, 2u);
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