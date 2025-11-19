@interface NPKRemotePassActionSelectItemRequest
- (NPKCommutePlanField)commutePlanField;
- (NPKProtoRemotePassActionSelectItemRequest)protoRequest;
- (NPKRemotePassActionSelectItemRequest)initWithIdentifier:(id)a3 deviceIdentifier:(id)a4 cardType:(unint64_t)a5 passOrganizationName:(id)a6 passTypeIdentifier:(id)a7 passSerialNumber:(id)a8 commutePlanField:(id)a9 image:(id)a10 passLocalizedDesciption:(id)a11 caption:(id)a12 summaryText:(id)a13;
- (NPKRemotePassActionSelectItemRequest)initWithPass:(id)a3 image:(id)a4 commutePlanField:(id)a5;
- (NSString)deviceIdentifier;
- (NSString)passSerialNumber;
- (NSString)passTypeIdentifier;
- (id)action;
- (id)actionText;
- (id)description;
- (id)identifier;
@end

@implementation NPKRemotePassActionSelectItemRequest

- (NPKRemotePassActionSelectItemRequest)initWithPass:(id)a3 image:(id)a4 commutePlanField:(id)a5
{
  v7 = a3;
  v51 = a4;
  v8 = a5;
  v9 = MEMORY[0x277CCACA8];
  v10 = [v7 uniqueID];
  v11 = [v8 action];
  [v11 type];
  v12 = PKPaymentPassActionTypeToString();
  v13 = [v8 action];
  v14 = [v13 identifier];
  v50 = [v9 stringWithFormat:@"%@:%@:%@", v10, v12, v14];

  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v17 = [v16 localizedStringForKey:@"REQUEST_REMOTE_PAYMENT_PASS_ACTION_RENEW_CAPTION" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  v18 = [v7 localizedDescription];
  v48 = [v15 stringWithFormat:v17, v18];

  v19 = [v7 localizedDescription];
  v20 = MEMORY[0x277CCACA8];
  v21 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v22 = v19;
  v23 = [v21 localizedStringForKey:@"REQUEST_REMOTE_PAYMENT_PASS_ACTION_RENEW_SUMMARY_TEXT" value:&stru_286CE7B58 table:@"NanoPassKitUI-RemotePaymentPassAction"];
  v24 = [v20 localizedStringWithFormat:v23, v22];

  v25 = [v8 action];
  v26 = [v25 remoteContentConfiguration];

  if (v26)
  {
    v46 = [MEMORY[0x277D38170] sharedService];
    v45 = [v46 context];
    v27 = [v45 deviceID];
  }

  else
  {
    v27 = 0;
  }

  v47 = NPKRemotePassActionCardTypeForPass(v7);
  v28 = [v7 organizationName];
  if (v26)
  {
    [v7 passTypeIdentifier];
    v29 = v27;
    v44 = v27;
    v30 = v7;
    v32 = v31 = v22;
    [v30 serialNumber];
    v34 = v33 = v8;
    v41 = v24;
    v43 = v24;
    v35 = v48;
    v36 = v51;
    v37 = v50;
    v38 = [(NPKRemotePassActionSelectItemRequest *)self initWithIdentifier:v50 deviceIdentifier:v29 cardType:v47 passOrganizationName:v28 passTypeIdentifier:v32 passSerialNumber:v34 commutePlanField:v33 image:v51 passLocalizedDesciption:v31 caption:v48 summaryText:v41];

    v8 = v33;
    v39 = v43;

    v22 = v31;
    v7 = v30;

    v28 = v46;
  }

  else
  {
    v42 = v24;
    v39 = v24;
    v35 = v48;
    v36 = v51;
    v37 = v50;
    v38 = [(NPKRemotePassActionSelectItemRequest *)self initWithIdentifier:v50 deviceIdentifier:v27 cardType:v47 passOrganizationName:v28 passTypeIdentifier:0 passSerialNumber:0 commutePlanField:v8 image:v51 passLocalizedDesciption:v22 caption:v48 summaryText:v42];
  }

  return v38;
}

- (NPKRemotePassActionSelectItemRequest)initWithIdentifier:(id)a3 deviceIdentifier:(id)a4 cardType:(unint64_t)a5 passOrganizationName:(id)a6 passTypeIdentifier:(id)a7 passSerialNumber:(id)a8 commutePlanField:(id)a9 image:(id)a10 passLocalizedDesciption:(id)a11 caption:(id)a12 summaryText:(id)a13
{
  v17 = MEMORY[0x277D2BA30];
  v18 = a13;
  v19 = a12;
  v20 = a11;
  v45 = a10;
  v21 = a9;
  v44 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a4;
  v25 = a3;
  v26 = objc_alloc_init(v17);
  [v26 setVersion:2];
  [v26 setIsResponse:0];
  [v26 setMessageType:2];
  [v26 setPassLocalizedDescription:v20];

  [v26 setCaption:v19];
  [v26 setSummaryText:v18];

  [v26 setPassOrganizationName:v23];
  [v26 setCardType:NPKProtoRemotePassActionCardTypeForNPKRemotePassActionCardType(a5)];
  v27 = objc_alloc_init(MEMORY[0x277D2BA38]);
  v28 = [v21 action];
  v29 = NPKSecureArchiveObject();
  [v27 setPaymentPassActionData:v29];

  v30 = [v21 identifier];
  [v27 setPlanIdentifier:v30];

  v31 = [v21 label];
  [v27 setPlanLabel:v31];

  v32 = [v21 detailLabel];
  [v27 setPlanDetailLabel:v32];

  v33 = [v21 usageDateRange];
  v34 = [v33 startDate];
  v35 = NPKSecureArchiveObject();
  [v27 setStartDateData:v35];

  v36 = [v21 usageDateRange];

  v37 = [v36 expiryDate];
  v38 = NPKSecureArchiveObject();
  [v27 setExpiryDateData:v38];

  [v27 setRequestUniqueID:v25];
  [v27 setDeviceIdentifier:v24];

  [v27 setPassTypeIdentifier:v22];
  [v27 setPassSerialNumber:v44];

  v39 = [v27 data];
  [v26 setMessageProtoData:v39];
  v47.receiver = self;
  v47.super_class = NPKRemotePassActionSelectItemRequest;
  v40 = [(NPKRemotePassAction *)&v47 initWithProtoEnvelope:v26 image:v45];

  return v40;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPKRemotePassActionSelectItemRequest;
  v3 = [(NPKRemotePassActionRequest *)&v7 description];
  v4 = [(NPKRemotePassActionSelectItemRequest *)self commutePlanField];
  v5 = [v3 stringByAppendingFormat:@" (commutePlanField:%@)", v4];

  return v5;
}

- (id)identifier
{
  v2 = [(NPKRemotePassActionSelectItemRequest *)self protoRequest];
  v3 = [v2 requestUniqueID];

  return v3;
}

- (id)action
{
  v2 = [(NPKRemotePassActionSelectItemRequest *)self commutePlanField];
  v3 = [v2 action];

  return v3;
}

- (id)actionText
{
  v3 = [(NPKRemotePassActionSelectItemRequest *)self action];
  v4 = [v3 confirmationTitle];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NPKRemotePassActionSelectItemRequest;
    v6 = [(NPKRemotePassActionRequest *)&v9 actionText];
  }

  v7 = v6;

  return v7;
}

- (NPKProtoRemotePassActionSelectItemRequest)protoRequest
{
  protoRequest = self->_protoRequest;
  if (!protoRequest)
  {
    v4 = objc_alloc(MEMORY[0x277D2BA38]);
    v5 = [(NPKRemotePassAction *)self protoEnvelope];
    v6 = [v5 messageProtoData];
    v7 = [v4 initWithData:v6];
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
    v4 = [(NPKRemotePassActionSelectItemRequest *)self protoRequest];
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
          v9 = [v5 startDateData];
          objc_opt_class();
          v31 = NPKSecureUnarchiveObject();

          v10 = [v5 expiryDateData];
          objc_opt_class();
          v30 = NPKSecureUnarchiveObject();

          v29 = v6;
          v11 = [objc_alloc(MEMORY[0x277D2BA18]) initWithStartDate:v31 expirationDate:v30 formatterStyle:3];
          v12 = objc_alloc(MEMORY[0x277D2BA08]);
          v13 = [v5 planLabel];
          v14 = [v5 planDetailLabel];
          v15 = [v5 planIdentifier];
          v16 = [v8 associatedPlan];
          LOBYTE(v28) = [v16 isDeviceBound];
          v17 = [v12 initWithLabel:v13 detailLabel:v14 formattedValue:0 rawCountValue:0 usageDateRange:v11 identifier:v15 details:0 action:v8 isDeviceBound:v28 pendingUpdateExpireDate:0];

          v6 = v29;
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

      v6 = 0;
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

      v6 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25B64D000, v6, OS_LOG_TYPE_ERROR, "Error: Missing proto request", buf, 2u);
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
  v2 = [(NPKRemotePassActionSelectItemRequest *)self protoRequest];
  v3 = [v2 deviceIdentifier];

  return v3;
}

- (NSString)passTypeIdentifier
{
  v2 = [(NPKRemotePassActionSelectItemRequest *)self protoRequest];
  v3 = [v2 passTypeIdentifier];

  return v3;
}

- (NSString)passSerialNumber
{
  v2 = [(NPKRemotePassActionSelectItemRequest *)self protoRequest];
  v3 = [v2 passSerialNumber];

  return v3;
}

@end