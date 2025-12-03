@interface NPKRemotePassActionSelectItemRequest
- (NPKCommutePlanField)commutePlanField;
- (NPKProtoRemotePassActionSelectItemRequest)protoRequest;
- (NPKRemotePassActionSelectItemRequest)initWithIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier cardType:(unint64_t)type passOrganizationName:(id)name passTypeIdentifier:(id)typeIdentifier passSerialNumber:(id)number commutePlanField:(id)field image:(id)self0 passLocalizedDesciption:(id)self1 caption:(id)self2 summaryText:(id)self3;
- (NPKRemotePassActionSelectItemRequest)initWithPass:(id)pass image:(id)image commutePlanField:(id)field;
- (NSString)deviceIdentifier;
- (NSString)passSerialNumber;
- (NSString)passTypeIdentifier;
- (id)action;
- (id)actionText;
- (id)description;
- (id)identifier;
@end

@implementation NPKRemotePassActionSelectItemRequest

- (NPKRemotePassActionSelectItemRequest)initWithPass:(id)pass image:(id)image commutePlanField:(id)field
{
  passCopy = pass;
  imageCopy = image;
  fieldCopy = field;
  v9 = MEMORY[0x277CCACA8];
  uniqueID = [passCopy uniqueID];
  action = [fieldCopy action];
  [action type];
  v12 = PKPaymentPassActionTypeToString();
  action2 = [fieldCopy action];
  identifier = [action2 identifier];
  v50 = [v9 stringWithFormat:@"%@:%@:%@", uniqueID, v12, identifier];

  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v17 = [v16 localizedStringForKey:@"REQUEST_REMOTE_PAYMENT_PASS_ACTION_RENEW_CAPTION" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  localizedDescription = [passCopy localizedDescription];
  v48 = [v15 stringWithFormat:v17, localizedDescription];

  localizedDescription2 = [passCopy localizedDescription];
  v20 = MEMORY[0x277CCACA8];
  v21 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v22 = localizedDescription2;
  v23 = [v21 localizedStringForKey:@"REQUEST_REMOTE_PAYMENT_PASS_ACTION_RENEW_SUMMARY_TEXT" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  v24 = [v20 localizedStringWithFormat:v23, v22];

  action3 = [fieldCopy action];
  remoteContentConfiguration = [action3 remoteContentConfiguration];

  if (remoteContentConfiguration)
  {
    mEMORY[0x277D38170] = [MEMORY[0x277D38170] sharedService];
    context = [mEMORY[0x277D38170] context];
    deviceID = [context deviceID];
  }

  else
  {
    deviceID = 0;
  }

  v47 = NPKRemotePassActionCardTypeForPass(passCopy);
  organizationName = [passCopy organizationName];
  if (remoteContentConfiguration)
  {
    [passCopy passTypeIdentifier];
    v29 = deviceID;
    v44 = deviceID;
    v30 = passCopy;
    v32 = v31 = v22;
    [v30 serialNumber];
    v34 = v33 = fieldCopy;
    v41 = v24;
    v43 = v24;
    v35 = v48;
    v36 = imageCopy;
    v37 = v50;
    v38 = [(NPKRemotePassActionSelectItemRequest *)self initWithIdentifier:v50 deviceIdentifier:v29 cardType:v47 passOrganizationName:organizationName passTypeIdentifier:v32 passSerialNumber:v34 commutePlanField:v33 image:imageCopy passLocalizedDesciption:v31 caption:v48 summaryText:v41];

    fieldCopy = v33;
    v39 = v43;

    v22 = v31;
    passCopy = v30;

    organizationName = mEMORY[0x277D38170];
  }

  else
  {
    v42 = v24;
    v39 = v24;
    v35 = v48;
    v36 = imageCopy;
    v37 = v50;
    v38 = [(NPKRemotePassActionSelectItemRequest *)self initWithIdentifier:v50 deviceIdentifier:deviceID cardType:v47 passOrganizationName:organizationName passTypeIdentifier:0 passSerialNumber:0 commutePlanField:fieldCopy image:imageCopy passLocalizedDesciption:v22 caption:v48 summaryText:v42];
  }

  return v38;
}

- (NPKRemotePassActionSelectItemRequest)initWithIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier cardType:(unint64_t)type passOrganizationName:(id)name passTypeIdentifier:(id)typeIdentifier passSerialNumber:(id)number commutePlanField:(id)field image:(id)self0 passLocalizedDesciption:(id)self1 caption:(id)self2 summaryText:(id)self3
{
  v17 = MEMORY[0x277D2BA30];
  textCopy = text;
  captionCopy = caption;
  desciptionCopy = desciption;
  imageCopy = image;
  fieldCopy = field;
  numberCopy = number;
  typeIdentifierCopy = typeIdentifier;
  nameCopy = name;
  deviceIdentifierCopy = deviceIdentifier;
  identifierCopy = identifier;
  v26 = objc_alloc_init(v17);
  [v26 setVersion:2];
  [v26 setIsResponse:0];
  [v26 setMessageType:2];
  [v26 setPassLocalizedDescription:desciptionCopy];

  [v26 setCaption:captionCopy];
  [v26 setSummaryText:textCopy];

  [v26 setPassOrganizationName:nameCopy];
  [v26 setCardType:NPKProtoRemotePassActionCardTypeForNPKRemotePassActionCardType(type)];
  v27 = objc_alloc_init(MEMORY[0x277D2BA38]);
  action = [fieldCopy action];
  v29 = NPKSecureArchiveObject();
  [v27 setPaymentPassActionData:v29];

  identifier = [fieldCopy identifier];
  [v27 setPlanIdentifier:identifier];

  label = [fieldCopy label];
  [v27 setPlanLabel:label];

  detailLabel = [fieldCopy detailLabel];
  [v27 setPlanDetailLabel:detailLabel];

  usageDateRange = [fieldCopy usageDateRange];
  startDate = [usageDateRange startDate];
  v35 = NPKSecureArchiveObject();
  [v27 setStartDateData:v35];

  usageDateRange2 = [fieldCopy usageDateRange];

  expiryDate = [usageDateRange2 expiryDate];
  v38 = NPKSecureArchiveObject();
  [v27 setExpiryDateData:v38];

  [v27 setRequestUniqueID:identifierCopy];
  [v27 setDeviceIdentifier:deviceIdentifierCopy];

  [v27 setPassTypeIdentifier:typeIdentifierCopy];
  [v27 setPassSerialNumber:numberCopy];

  data = [v27 data];
  [v26 setMessageProtoData:data];
  v47.receiver = self;
  v47.super_class = NPKRemotePassActionSelectItemRequest;
  v40 = [(NPKRemotePassAction *)&v47 initWithProtoEnvelope:v26 image:imageCopy];

  return v40;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPKRemotePassActionSelectItemRequest;
  v3 = [(NPKRemotePassActionRequest *)&v7 description];
  commutePlanField = [(NPKRemotePassActionSelectItemRequest *)self commutePlanField];
  v5 = [v3 stringByAppendingFormat:@" (commutePlanField:%@)", commutePlanField];

  return v5;
}

- (id)identifier
{
  protoRequest = [(NPKRemotePassActionSelectItemRequest *)self protoRequest];
  requestUniqueID = [protoRequest requestUniqueID];

  return requestUniqueID;
}

- (id)action
{
  commutePlanField = [(NPKRemotePassActionSelectItemRequest *)self commutePlanField];
  action = [commutePlanField action];

  return action;
}

- (id)actionText
{
  action = [(NPKRemotePassActionSelectItemRequest *)self action];
  confirmationTitle = [action confirmationTitle];
  v5 = confirmationTitle;
  if (confirmationTitle)
  {
    actionText = confirmationTitle;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NPKRemotePassActionSelectItemRequest;
    actionText = [(NPKRemotePassActionRequest *)&v9 actionText];
  }

  v7 = actionText;

  return v7;
}

- (NPKProtoRemotePassActionSelectItemRequest)protoRequest
{
  protoRequest = self->_protoRequest;
  if (!protoRequest)
  {
    v4 = objc_alloc(MEMORY[0x277D2BA38]);
    protoEnvelope = [(NPKRemotePassAction *)self protoEnvelope];
    messageProtoData = [protoEnvelope messageProtoData];
    v7 = [v4 initWithData:messageProtoData];
    v8 = self->_protoRequest;
    self->_protoRequest = v7;

    protoRequest = self->_protoRequest;
  }

  return protoRequest;
}

- (NPKCommutePlanField)commutePlanField
{
  cachedCommutePlanField = self->_cachedCommutePlanField;
  if (!cachedCommutePlanField)
  {
    protoRequest = [(NPKRemotePassActionSelectItemRequest *)self protoRequest];
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
          startDateData = [v5 startDateData];
          objc_opt_class();
          v31 = NPKSecureUnarchiveObject();

          expiryDateData = [v5 expiryDateData];
          objc_opt_class();
          v30 = NPKSecureUnarchiveObject();

          v29 = paymentPassActionData;
          v11 = [objc_alloc(MEMORY[0x277D2BA18]) initWithStartDate:v31 expirationDate:v30 formatterStyle:3];
          v12 = objc_alloc(MEMORY[0x277D2BA08]);
          planLabel = [v5 planLabel];
          planDetailLabel = [v5 planDetailLabel];
          planIdentifier = [v5 planIdentifier];
          associatedPlan = [v8 associatedPlan];
          LOBYTE(v28) = [associatedPlan isDeviceBound];
          v17 = [v12 initWithLabel:planLabel detailLabel:planDetailLabel formattedValue:0 rawCountValue:0 usageDateRange:v11 identifier:planIdentifier details:0 action:v8 isDeviceBound:v28 pendingUpdateExpireDate:0];

          paymentPassActionData = v29;
LABEL_19:

LABEL_22:
          goto LABEL_23;
        }

        v22 = pk_RemotePassAction_log();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

        if (v23)
        {
          v24 = pk_RemotePassAction_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *v32 = 0;
            _os_log_impl(&dword_25B64D000, v24, OS_LOG_TYPE_ERROR, "Error: Missing Action", v32, 2u);
          }
        }

        v8 = 0;
LABEL_18:
        v17 = 0;
        goto LABEL_19;
      }

      v20 = pk_RemotePassAction_log();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (v21)
      {
        v8 = pk_RemotePassAction_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v33 = 0;
          _os_log_impl(&dword_25B64D000, v8, OS_LOG_TYPE_ERROR, "Error: Missing action data", v33, 2u);
        }

        goto LABEL_18;
      }

      paymentPassActionData = 0;
    }

    else
    {
      v18 = pk_RemotePassAction_log();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

      if (!v19)
      {
        v17 = 0;
LABEL_23:

        v25 = self->_cachedCommutePlanField;
        self->_cachedCommutePlanField = v17;

        cachedCommutePlanField = self->_cachedCommutePlanField;
        goto LABEL_24;
      }

      paymentPassActionData = pk_RemotePassAction_log();
      if (os_log_type_enabled(paymentPassActionData, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25B64D000, paymentPassActionData, OS_LOG_TYPE_ERROR, "Error: Missing proto request", buf, 2u);
      }
    }

    v17 = 0;
    goto LABEL_22;
  }

LABEL_24:
  v26 = cachedCommutePlanField;

  return v26;
}

- (NSString)deviceIdentifier
{
  protoRequest = [(NPKRemotePassActionSelectItemRequest *)self protoRequest];
  deviceIdentifier = [protoRequest deviceIdentifier];

  return deviceIdentifier;
}

- (NSString)passTypeIdentifier
{
  protoRequest = [(NPKRemotePassActionSelectItemRequest *)self protoRequest];
  passTypeIdentifier = [protoRequest passTypeIdentifier];

  return passTypeIdentifier;
}

- (NSString)passSerialNumber
{
  protoRequest = [(NPKRemotePassActionSelectItemRequest *)self protoRequest];
  passSerialNumber = [protoRequest passSerialNumber];

  return passSerialNumber;
}

@end