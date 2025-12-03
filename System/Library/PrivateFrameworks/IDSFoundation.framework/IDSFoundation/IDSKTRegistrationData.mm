@interface IDSKTRegistrationData
- (IDSKTRegistrationData)init;
- (IDSKTRegistrationData)initWithCoder:(id)coder;
- (IDSKTRegistrationData)initWithDataRepresentation:(id)representation error:(id *)error;
- (id)dataRepresentationWithError:(id *)error;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSKTRegistrationData

- (IDSKTRegistrationData)init
{
  v13.receiver = self;
  v13.super_class = IDSKTRegistrationData;
  v2 = [(IDSKTRegistrationData *)&v13 init];
  v3 = v2;
  if (v2)
  {
    ktDataForRegistration = v2->_ktDataForRegistration;
    v2->_ktDataForRegistration = 0;

    ktPublicAccountKey = v3->_ktPublicAccountKey;
    v3->_ktPublicAccountKey = 0;

    ktDataSignature = v3->_ktDataSignature;
    v3->_ktDataSignature = 0;

    v3->_uploadedToKVS = 0;
    registeredTime = v3->_registeredTime;
    v3->_registeredTime = 0;

    ktAccountKeyTimestamp = v3->_ktAccountKeyTimestamp;
    v3->_ktAccountKeyTimestamp = 0;

    ktOptInTimestamp = v3->_ktOptInTimestamp;
    v3->_ktOptInTimestamp = 0;

    v3->_ktOptInStatus = 0;
    ktOptInErrorCode = v3->_ktOptInErrorCode;
    v3->_ktOptInErrorCode = 0;

    ktAccountKeyErrorCode = v3->_ktAccountKeyErrorCode;
    v3->_ktAccountKeyErrorCode = 0;
  }

  return v3;
}

- (IDSKTRegistrationData)initWithDataRepresentation:(id)representation error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v32 = 0;
  v7 = [MEMORY[0x1E696AE40] propertyListWithData:representationCopy options:0 format:0 error:&v32];
  v8 = v32;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v7 _dataForKey:@"kKTDataForReg"];
    v10 = [v7 _dataForKey:@"kKTDataPubKeyForReg"];
    v11 = [v7 _dataForKey:@"kKTDataSigForReg"];
    v12 = [v7 _numberForKey:@"kKTDataKVSUploaded"];
    v28 = v12;
    if (v12)
    {
      bOOLValue = [v12 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v29 = v10;
    v16 = [v7 _numberForKey:@"kKTDataRegTime"];
    v17 = v16;
    if (v16)
    {
      [v16 doubleValue];
      if (v18 > 0.0)
      {
        [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      }
    }

    obj = [v7 objectForKey:@"kKTDataAccountKeyTimestamp"];
    v19 = [v7 objectForKey:@"kKTDataOptInTimestamp"];
    v20 = [v7 _numberForKey:@"kKTDataOptInStatus"];
    unsignedIntegerValue = [v20 unsignedIntegerValue];

    v21 = [v7 _numberForKey:@"kKTDataOptInErrorCode"];
    v22 = [v7 _numberForKey:@"kKTDataAccountKeyErrorCode"];
    v31.receiver = self;
    v31.super_class = IDSKTRegistrationData;
    v23 = [(IDSKTRegistrationData *)&v31 init];
    v24 = v23;
    if (v23)
    {
      objc_storeStrong(&v23->_ktDataForRegistration, v9);
      objc_storeStrong(&v24->_ktPublicAccountKey, v29);
      objc_storeStrong(&v24->_ktDataSignature, v11);
      v24->_uploadedToKVS = bOOLValue;
      objc_storeStrong(&v24->_ktAccountKeyTimestamp, obj);
      objc_storeStrong(&v24->_ktOptInTimestamp, v19);
      v24->_ktOptInStatus = unsignedIntegerValue;
      objc_storeStrong(&v24->_ktOptInErrorCode, v21);
      objc_storeStrong(&v24->_ktAccountKeyErrorCode, v22);
    }

    self = v24;

    selfCopy = self;
  }

  else
  {
    v13 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v34 = v8;
      v35 = 2112;
      v36 = representationCopy;
      v37 = 2112;
      v38 = v7;
      _os_log_error_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_ERROR, "Failed to deserialize plist - failed to create IDSKTRegistrationData from data { error: %@, dataRepresentation: %@, dict: %@ }", buf, 0x20u);
    }

    if (error)
    {
      v14 = v8;
      selfCopy = 0;
      *error = v8;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_uploadedToKVS)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: %p; ktDataForRegistration: %@; ktPublicAccountKey: %@; ktDataSignature: %@; uploadedToKVS: %@; ktAccountKeyTimestamp: %@; ktOptInTimestamp: %@; ktOptInStatus: %lu; ktOptInAbsentReason: %@; ktAccountKeyAbsentReason: %@ >", v4, self, *&self->_ktDataForRegistration, self->_ktDataSignature, v5, self->_ktAccountKeyTimestamp, self->_ktOptInTimestamp, self->_ktOptInStatus, self->_ktOptInErrorCode, self->_ktAccountKeyErrorCode];
}

- (id)dataRepresentationWithError:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = v5;
  ktDataForRegistration = self->_ktDataForRegistration;
  if (ktDataForRegistration)
  {
    [v5 setObject:ktDataForRegistration forKeyedSubscript:@"kKTDataForReg"];
  }

  ktPublicAccountKey = self->_ktPublicAccountKey;
  if (ktPublicAccountKey)
  {
    [v6 setObject:ktPublicAccountKey forKeyedSubscript:@"kKTDataPubKeyForReg"];
  }

  ktDataSignature = self->_ktDataSignature;
  if (ktDataSignature)
  {
    [v6 setObject:ktDataSignature forKeyedSubscript:@"kKTDataSigForReg"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_uploadedToKVS];
  [v6 setObject:v10 forKeyedSubscript:@"kKTDataKVSUploaded"];

  [(NSDate *)self->_registeredTime timeIntervalSinceReferenceDate];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [v6 setObject:v11 forKeyedSubscript:@"kKTDataRegTime"];

  ktAccountKeyTimestamp = self->_ktAccountKeyTimestamp;
  if (ktAccountKeyTimestamp)
  {
    [v6 setObject:ktAccountKeyTimestamp forKeyedSubscript:@"kKTDataAccountKeyTimestamp"];
  }

  ktOptInTimestamp = self->_ktOptInTimestamp;
  if (ktOptInTimestamp)
  {
    [v6 setObject:ktOptInTimestamp forKeyedSubscript:@"kKTDataOptInTimestamp"];
  }

  if (self->_ktOptInStatus)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v6 setObject:v14 forKeyedSubscript:@"kKTDataOptInStatus"];
  }

  ktOptInErrorCode = self->_ktOptInErrorCode;
  if (ktOptInErrorCode)
  {
    [v6 setObject:ktOptInErrorCode forKeyedSubscript:@"kKTDataOptInErrorCode"];
  }

  ktAccountKeyErrorCode = self->_ktAccountKeyErrorCode;
  if (ktAccountKeyErrorCode)
  {
    [v6 setObject:ktAccountKeyErrorCode forKeyedSubscript:@"kKTDataAccountKeyErrorCode"];
  }

  v17 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:200 options:0 error:error];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v20 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v22 = *error;
      }

      else
      {
        v22 = 0;
      }

      v23 = 138412802;
      v24 = v22;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_ERROR, "Failed to create plist - failed to serialize IDSKTRegistrationData { error: %@, dict: %@, ktRegistrationData: %@ }", &v23, 0x20u);
    }
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  ktDataForRegistration = self->_ktDataForRegistration;
  coderCopy = coder;
  [coderCopy encodeObject:ktDataForRegistration forKey:@"kKTDataForReg"];
  [coderCopy encodeObject:self->_ktPublicAccountKey forKey:@"kKTDataPubKeyForReg"];
  [coderCopy encodeObject:self->_ktDataSignature forKey:@"kKTDataSigForReg"];
  [coderCopy encodeBool:self->_uploadedToKVS forKey:@"kKTDataKVSUploaded"];
  [coderCopy encodeObject:self->_registeredTime forKey:@"kKTDataRegTime"];
  [coderCopy encodeObject:self->_ktAccountKeyTimestamp forKey:@"kKTDataAccountKeyTimestamp"];
  [coderCopy encodeObject:self->_ktOptInTimestamp forKey:@"kKTDataOptInTimestamp"];
  [coderCopy encodeInteger:self->_ktOptInStatus forKey:@"kKTDataOptInStatus"];
  [coderCopy encodeObject:self->_ktOptInErrorCode forKey:@"kKTDataOptInErrorCode"];
  [coderCopy encodeObject:self->_ktAccountKeyErrorCode forKey:@"kKTDataAccountKeyErrorCode"];
}

- (IDSKTRegistrationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = IDSKTRegistrationData;
  v5 = [(IDSKTRegistrationData *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kKTDataForReg"];
    ktDataForRegistration = v5->_ktDataForRegistration;
    v5->_ktDataForRegistration = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kKTDataPubKeyForReg"];
    ktPublicAccountKey = v5->_ktPublicAccountKey;
    v5->_ktPublicAccountKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kKTDataSigForReg"];
    ktDataSignature = v5->_ktDataSignature;
    v5->_ktDataSignature = v10;

    v5->_uploadedToKVS = [coderCopy decodeBoolForKey:@"kKTDataKVSUploaded"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kKTDataRegTime"];
    registeredTime = v5->_registeredTime;
    v5->_registeredTime = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kKTDataAccountKeyTimestamp"];
    ktAccountKeyTimestamp = v5->_ktAccountKeyTimestamp;
    v5->_ktAccountKeyTimestamp = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kKTDataOptInTimestamp"];
    ktOptInTimestamp = v5->_ktOptInTimestamp;
    v5->_ktOptInTimestamp = v16;

    v5->_ktOptInStatus = [coderCopy decodeIntegerForKey:@"kKTDataOptInStatus"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kKTDataOptInErrorCode"];
    ktOptInErrorCode = v5->_ktOptInErrorCode;
    v5->_ktOptInErrorCode = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kKTDataAccountKeyErrorCode"];
    ktAccountKeyErrorCode = v5->_ktAccountKeyErrorCode;
    v5->_ktAccountKeyErrorCode = v20;
  }

  return v5;
}

@end