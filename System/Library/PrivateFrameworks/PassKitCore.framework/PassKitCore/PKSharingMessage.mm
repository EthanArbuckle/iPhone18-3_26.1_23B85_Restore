@interface PKSharingMessage
+ (id)_payloadForContent:(uint64_t)content format:;
+ (id)embeddedMessageDictionaryForShareURL:(id)l targetDevice:(int64_t)device;
+ (id)specializedMessageFromPayload:(id)payload displayInformation:(id)information outError:(id *)error;
- (PKSharingMessage)initWithCoder:(id)coder;
- (PKSharingMessage)initWithContent:(id)content format:(unint64_t)format type:(unint64_t)type displayInformation:(id)information;
- (id)_initWithPayload:(id)payload format:(unint64_t)format type:(unint64_t)type displayInformation:(id)information;
- (id)description;
- (id)embeddedAddressForDeviceType:(int64_t)type;
- (id)typeDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateMessageContentTo:(id)to;
@end

@implementation PKSharingMessage

- (PKSharingMessage)initWithContent:(id)content format:(unint64_t)format type:(unint64_t)type displayInformation:(id)information
{
  contentCopy = content;
  informationCopy = information;
  v12 = [PKSharingMessage _payloadForContent:contentCopy format:format];
  v13 = [(PKSharingMessage *)self _initWithPayload:v12 format:format type:type displayInformation:informationCopy];

  if (v13 && ![(PKSharingMessage *)v13 configureWithContent:contentCopy])
  {

    v13 = 0;
  }

  return v13;
}

+ (id)_payloadForContent:(uint64_t)content format:
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  if (PKSharingSimulateCrossPlatformShare())
  {
    v5 = [v4 mutableCopy];
    [v5 setObject:0 forKeyedSubscript:@"apple"];

    v4 = v5;
  }

  v17[0] = @"format";
  v6 = PKSharingMessageFormatToString(content);
  v17[1] = @"content";
  v18[0] = v6;
  v18[1] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v14 = 0;
  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:1 error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 || v9)
  {
    v12 = PKLogFacilityTypeGetObject(0x22uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKSharingMessage: unable to serialize json with error %@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (id)_initWithPayload:(id)payload format:(unint64_t)format type:(unint64_t)type displayInformation:(id)information
{
  payloadCopy = payload;
  informationCopy = information;
  if (payloadCopy)
  {
    v20.receiver = self;
    v20.super_class = PKSharingMessage;
    v13 = [(PKSharingMessage *)&v20 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_payload, payload);
      v14->_type = type;
      v14->_format = format;
      objc_storeStrong(&v14->_displayInformation, information);
      v15 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      uUIDString = [v15 UUIDString];
      identifier = v14->_identifier;
      v14->_identifier = uUIDString;
    }

    self = v14;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)specializedMessageFromPayload:(id)payload displayInformation:(id)information outError:(id *)error
{
  errorCopy = error;
  v43 = *MEMORY[0x1E69E9840];
  if (error)
  {
    v7 = MEMORY[0x1E696ACB0];
    v36 = 0;
    informationCopy = information;
    payloadCopy = payload;
    v9 = [v7 JSONObjectWithData:payloadCopy options:0 error:&v36];
    v10 = v36;
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      *errorCopy = v11;
    }

    v13 = [v9 PKDictionaryForKey:@"content"];
    v14 = [v9 PKStringForKey:@"format"];
    v15 = PKSharingMessageFormatFromString(v14);

    v16 = PKSharingMessageGenericDataKeyForFormat(v15);
    v17 = [v13 PKDictionaryForKey:v16];

    v18 = [v17 PKIntegerForKey:@"sharingDataType"];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __78__PKSharingMessage_specializedMessageFromPayload_displayInformation_outError___block_invoke;
    v35[3] = &__block_descriptor_48_e23___PKSharingMessage_8__0l;
    v35[4] = v15;
    v35[5] = v18;
    v19 = __78__PKSharingMessage_specializedMessageFromPayload_displayInformation_outError___block_invoke(v35);
    v20 = PKLogFacilityTypeGetObject(0x22uLL);
    v21 = v20;
    if (!v19)
    {
      v32 = v17;
      v33 = v13;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = PKSharingMessageFormatToString(v15);
        *buf = 138412290;
        v42 = v22;
        _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "PKSharingMessage: Unable to find specalized message class for format: '%@'", buf, 0xCu);
      }

      v23 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A578];
      v40 = @"Message format not supported";
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *errorCopy = [v23 errorWithDomain:@"PKAddSecureElementPassErrorDomain" code:0 userInfo:v24];

      v13 = v33;
      v17 = v32;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v9;
      _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "PKSharingMessage: creating message from: \n %@", buf, 0xCu);
    }

    v25 = [v19 _initWithPayload:payloadCopy format:v15 type:v18 displayInformation:informationCopy];
    if ([v25 configureWithContent:v13])
    {
      errorCopy = v25;
    }

    else
    {
      v26 = v11;
      v27 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A578];
      v38 = @"Invalid message content";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v29 = v28 = v17;
      v30 = v27;
      v11 = v26;
      *errorCopy = [v30 errorWithDomain:@"PKAddSecureElementPassErrorDomain" code:0 userInfo:v29];

      v17 = v28;
      errorCopy = 0;
    }
  }

  return errorCopy;
}

id __78__PKSharingMessage_specializedMessageFromPayload_displayInformation_outError___block_invoke(uint64_t a1)
{
  v3 = 0;
  v4 = *(a1 + 32);
  if (v4 > 2)
  {
    if (v4 == 4)
    {
      v5 = *(a1 + 40);
      if (v5 == 1)
      {
        v7 = off_1E79C19D0;
        goto LABEL_36;
      }
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_37;
      }

      v5 = *(a1 + 40);
    }
  }

  else
  {
    if (v4 == 1)
    {
      v7 = off_1E79C1A18;
      goto LABEL_36;
    }

    if (v4 != 2)
    {
      goto LABEL_37;
    }

    v5 = *(a1 + 40);
    if (v5 > 1000)
    {
      switch(v5)
      {
        case 1001:
          goto LABEL_32;
        case 1002:
          goto LABEL_33;
        case 1003:
LABEL_27:
          v7 = off_1E79C1A30;
          goto LABEL_36;
      }
    }

    else
    {
      if ((v5 - 2) < 6 || v5 == 0)
      {
        v7 = off_1E79C1988;
        goto LABEL_36;
      }

      if (v5 == 1)
      {
        v7 = off_1E79C1980;
        goto LABEL_36;
      }
    }
  }

  v3 = 0;
  if (v5 <= 2000)
  {
    if (v5 != 1001)
    {
      if (v5 != 1002)
      {
        if (v5 != 1003)
        {
          goto LABEL_37;
        }

        goto LABEL_27;
      }

LABEL_33:
      v7 = off_1E79C19C0;
      goto LABEL_36;
    }

LABEL_32:
    v7 = off_1E79C19E8;
    goto LABEL_36;
  }

  switch(v5)
  {
    case 2001:
      v7 = off_1E79C15D0;
      break;
    case 2002:
      v7 = off_1E79C15D8;
      break;
    case 2003:
      v7 = off_1E79C15F8;
      break;
    default:
      goto LABEL_37;
  }

LABEL_36:
  v3 = objc_alloc(*v7);
LABEL_37:

  return v3;
}

- (void)updateMessageContentTo:(id)to
{
  toCopy = to;
  v4 = [PKSharingMessage _payloadForContent:toCopy format:self->_format];
  if (v4)
  {
    objc_storeStrong(&self->_payload, v4);
    [(PKSharingMessage *)self configureWithContent:toCopy];
  }
}

- (id)typeDescription
{
  v3 = PKSharingMessageFormatToString(self->_format);
  v4 = PKSharingMessageTypeToString(self->_type);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@-%@>", v3, v4];

  return v5;
}

- (PKSharingMessage)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  v27 = 0;
  v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v27];
  v7 = v27;
  v8 = [v6 PKDictionaryForKey:@"content"];
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    v11 = PKLogFacilityTypeGetObject(0x22uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v7;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKSharingMessage: unable to decode json during NSCoding. %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  else
  {
    v26 = v6;
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"format"];
    v14 = PKSharingMessageFormatFromString(v13);
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v16 = PKSharingMessageTypeFromString(v15);
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayInformation"];
    v18 = [(PKSharingMessage *)self _initWithPayload:v5 format:v14 type:v16 displayInformation:v17];

    if (v18)
    {
      objc_storeStrong(v18 + 4, v5);
      v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayInformation"];
      v20 = v18[5];
      v18[5] = v19;

      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      v22 = v18[1];
      v18[1] = v21;

      v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
      v18[2] = PKSharingMessageTypeFromString(v23);

      v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"format"];
      v18[3] = PKSharingMessageFormatFromString(v24);

      if (([v18 configureWithContent:v9] & 1) == 0)
      {

        v18 = 0;
      }
    }

    v6 = v26;
    self = v18;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  payload = self->_payload;
  coderCopy = coder;
  [coderCopy encodeObject:payload forKey:@"payload"];
  [coderCopy encodeObject:self->_displayInformation forKey:@"displayInformation"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  v6 = PKSharingMessageTypeToString(self->_type);
  [coderCopy encodeObject:v6 forKey:@"type"];

  v7 = PKSharingMessageFormatToString(self->_format);
  [coderCopy encodeObject:v7 forKey:@"format"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v4 = PKSharingMessageTypeToString(self->_type);
  [v3 appendFormat:@"type: '%@'; ", v4];

  [v3 appendFormat:@"payload: '%@'; ", self->_payload];
  [v3 appendFormat:@"displayInformation: '%@'; ", self->_displayInformation];
  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

+ (id)embeddedMessageDictionaryForShareURL:(id)l targetDevice:(int64_t)device
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"address";
  absoluteString = [l absoluteString];
  v10[0] = absoluteString;
  v9[1] = @"targetDeviceType";
  v6 = PKPassCredentialShareTargetDeviceToString(device);
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)embeddedAddressForDeviceType:(int64_t)type
{
  embeddedMessageURLs = [(PKSharingMessage *)self embeddedMessageURLs];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [embeddedMessageURLs objectForKeyedSubscript:v5];
  absoluteString = [v6 absoluteString];

  return absoluteString;
}

@end