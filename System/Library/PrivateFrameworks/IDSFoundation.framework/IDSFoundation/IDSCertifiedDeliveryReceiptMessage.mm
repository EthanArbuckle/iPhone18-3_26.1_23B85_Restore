@interface IDSCertifiedDeliveryReceiptMessage
- (IDSCertifiedDeliveryReceiptMessage)initWithCertifiedDeliveryContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
@end

@implementation IDSCertifiedDeliveryReceiptMessage

- (IDSCertifiedDeliveryReceiptMessage)initWithCertifiedDeliveryContext:(id)context
{
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = IDSCertifiedDeliveryReceiptMessage;
  v5 = [(IDSMessage *)&v27 init];
  if (v5)
  {
    senderToken = [contextCopy senderToken];
    originalGUID = v5->_originalGUID;
    v5->_originalGUID = senderToken;

    certifiedDeliveryRTS = [contextCopy certifiedDeliveryRTS];
    senderToken = v5->_senderToken;
    v5->_senderToken = certifiedDeliveryRTS;

    v5->_certifiedDeliveryRTS = [contextCopy certifiedDeliveryVersion];
    originalGUID = [contextCopy originalGUID];
    v11 = *&v5->_generateDeliveryReceipt;
    *&v5->_generateDeliveryReceipt = originalGUID;

    failureReason = [contextCopy failureReason];
    certifiedDeliveryVersion = v5->_certifiedDeliveryVersion;
    v5->_certifiedDeliveryVersion = failureReason;

    failureReasonMessage = [contextCopy failureReasonMessage];
    failureReason = v5->_failureReason;
    v5->_failureReason = failureReasonMessage;

    *(&v5->super._wantsCertifiedDelivery + 1) = [contextCopy generateDeliveryReceipt];
    deliveryStatusContext = [contextCopy deliveryStatusContext];
    failureReasonMessage = v5->_failureReasonMessage;
    v5->_failureReasonMessage = deliveryStatusContext;

    localURI = [contextCopy localURI];
    generatedDeliveryStatusContext = v5->_generatedDeliveryStatusContext;
    v5->_generatedDeliveryStatusContext = localURI;

    remoteURI = [contextCopy remoteURI];
    localURI = v5->_localURI;
    v5->_localURI = remoteURI;

    queryHash = [contextCopy queryHash];
    remoteURI = v5->_remoteURI;
    v5->_remoteURI = queryHash;

    queryHash = v5->_queryHash;
    v5->_queryHash = 0;

    encryptedData = v5->_encryptedData;
    v5->_encryptedData = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v15.receiver = self;
  v15.super_class = IDSCertifiedDeliveryReceiptMessage;
  v4 = [(IDSMessage *)&v15 copyWithZone:zone];
  v5 = [(NSString *)self->_originalGUID copy];
  [v4 setSenderToken:v5];

  v6 = [(NSData *)self->_senderToken copy];
  [v4 setCertifiedDeliveryRTS:v6];

  [v4 setCertifiedDeliveryVersion:self->_certifiedDeliveryRTS];
  v7 = [*&self->_generateDeliveryReceipt copy];
  [v4 setOriginalGUID:v7];

  [v4 setFailureReason:self->_certifiedDeliveryVersion];
  v8 = [(NSNumber *)self->_failureReason copy];
  [v4 setFailureReasonMessage:v8];

  [v4 setGenerateDeliveryReceipt:*(&self->super._wantsCertifiedDelivery + 1)];
  [v4 setGeneratedDeliveryStatusContext:self->_failureReasonMessage];
  v9 = [(NSDictionary *)self->_generatedDeliveryStatusContext copy];
  [v4 setLocalURI:v9];

  v10 = [(NSString *)self->_localURI copy];
  [v4 setRemoteURI:v10];

  v11 = [(NSString *)self->_remoteURI copy];
  [v4 setQueryHash:v11];

  v12 = [(NSData *)self->_queryHash copy];
  [v4 setEncryptedData:v12];

  v13 = [(NSData *)self->_encryptedData copy];
  [v4 setEncryptionType:v13];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObject:@"U"];
  [v2 addObject:@"cdr"];
  [v2 addObject:@"cdv"];

  return v2;
}

- (id)messageBody
{
  v19.receiver = self;
  v19.super_class = IDSCertifiedDeliveryReceiptMessage;
  messageBody = [(IDSMessage *)&v19 messageBody];
  v4 = [messageBody mutableCopy];

  v5 = IDSGetUUIDData(*&self->_generateDeliveryReceipt);
  if (v5)
  {
    CFDictionarySetValue(v4, @"U", v5);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1D5DC();
  }

  v6 = self->_senderToken;
  if (v6)
  {
    CFDictionarySetValue(v4, @"cdr", v6);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1D664();
  }

  originalGUID = self->_originalGUID;
  if (originalGUID)
  {
    CFDictionarySetValue(v4, @"t", originalGUID);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_certifiedDeliveryRTS];
  if (v8)
  {
    CFDictionarySetValue(v4, @"cdv", v8);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1D6EC();
  }

  certifiedDeliveryVersion = self->_certifiedDeliveryVersion;
  if (certifiedDeliveryVersion)
  {
    CFDictionarySetValue(v4, @"fR", certifiedDeliveryVersion);
  }

  failureReason = self->_failureReason;
  if (failureReason)
  {
    CFDictionarySetValue(v4, @"fRM", failureReason);
  }

  if (*(&self->super._wantsCertifiedDelivery + 1))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v11)
    {
      CFDictionarySetValue(v4, @"gd", v11);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1D774();
    }

    failureReasonMessage = self->_failureReasonMessage;
    if (failureReasonMessage)
    {
      CFDictionarySetValue(v4, @"Dc", failureReasonMessage);
    }

    v13 = self->_generatedDeliveryStatusContext;
    if (v13)
    {
      CFDictionarySetValue(v4, @"sP", v13);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1D7FC();
    }

    v14 = self->_localURI;
    if (v14)
    {
      CFDictionarySetValue(v4, @"tP", v14);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1D884();
    }

    remoteURI = self->_remoteURI;
    if (remoteURI)
    {
      CFDictionarySetValue(v4, @"qH", remoteURI);
    }

    if (_os_feature_enabled_impl())
    {
      encryptedData = [(IDSCertifiedDeliveryReceiptMessage *)self encryptedData];
      if (encryptedData)
      {
        CFDictionarySetValue(v4, @"P", encryptedData);
      }

      encryptionType = [(IDSCertifiedDeliveryReceiptMessage *)self encryptionType];
      if (encryptionType)
      {
        CFDictionarySetValue(v4, @"E", encryptionType);
      }
    }
  }

  return v4;
}

@end