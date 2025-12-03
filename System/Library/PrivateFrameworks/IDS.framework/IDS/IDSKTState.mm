@interface IDSKTState
- (IDSKTState)initWithCoder:(id)coder;
- (IDSKTState)initWithUserID:(id)d registrationType:(int)type registrationStatus:(int)status ktAccountKey:(id)key accountKeyTimestamp:(id)timestamp accountKeyErrorCode:(id)code deviceSignature:(id)signature ktDataForRegistration:(id)self0 optedIn:(unint64_t)self1 optedInTimestamp:(id)self2 optedInErrorCode:(id)self3 dsid:(id)self4;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSKTState

- (IDSKTState)initWithUserID:(id)d registrationType:(int)type registrationStatus:(int)status ktAccountKey:(id)key accountKeyTimestamp:(id)timestamp accountKeyErrorCode:(id)code deviceSignature:(id)signature ktDataForRegistration:(id)self0 optedIn:(unint64_t)self1 optedInTimestamp:(id)self2 optedInErrorCode:(id)self3 dsid:(id)self4
{
  dCopy = d;
  obj = key;
  keyCopy = key;
  timestampCopy = timestamp;
  codeCopy = code;
  signatureCopy = signature;
  registrationCopy = registration;
  inTimestampCopy = inTimestamp;
  errorCodeCopy = errorCode;
  dsidCopy = dsid;
  v34.receiver = self;
  v34.super_class = IDSKTState;
  v24 = [(IDSKTState *)&v34 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_userID, d);
    v25->_registrationType = type;
    v25->_status = status;
    objc_storeStrong(&v25->_ktAccountKey, obj);
    objc_storeStrong(&v25->_ktAccountKeyTimestamp, timestamp);
    objc_storeStrong(&v25->_ktAccountKeyErrorCode, code);
    objc_storeStrong(&v25->_deviceSignature, signature);
    objc_storeStrong(&v25->_ktDataForRegistration, registration);
    v25->_optedIn = in;
    objc_storeStrong(&v25->_ktOptInTimestamp, inTimestamp);
    objc_storeStrong(&v25->_ktOptInErrorCode, errorCode);
    objc_storeStrong(&v25->_dsid, dsid);
  }

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  userID = self->_userID;
  coderCopy = coder;
  [coderCopy encodeObject:userID forKey:@"userID"];
  [coderCopy encodeInt32:self->_registrationType forKey:@"regType"];
  [coderCopy encodeInt32:self->_status forKey:@"status"];
  [coderCopy encodeObject:self->_ktAccountKey forKey:@"accountKey"];
  [coderCopy encodeObject:self->_ktAccountKeyTimestamp forKey:@"accountKeyTimestamp"];
  [coderCopy encodeObject:self->_ktAccountKeyErrorCode forKey:@"accountKeyErrorCode"];
  [coderCopy encodeObject:self->_deviceSignature forKey:@"deviceSignature"];
  [coderCopy encodeObject:self->_ktDataForRegistration forKey:@"ktDataForRegistration"];
  [coderCopy encodeInteger:self->_optedIn forKey:@"optedIn"];
  [coderCopy encodeObject:self->_ktOptInTimestamp forKey:@"optedInTimestamp"];
  [coderCopy encodeObject:self->_ktOptInErrorCode forKey:@"optedInErrorCode"];
  [coderCopy encodeObject:self->_dsid forKey:@"DSID"];
}

- (IDSKTState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
  v16 = [coderCopy decodeInt32ForKey:@"regType"];
  v15 = [coderCopy decodeInt32ForKey:@"status"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKey"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyTimestamp"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyErrorCode"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceSignature"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ktDataForRegistration"];
  v9 = [coderCopy decodeIntegerForKey:@"optedIn"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"optedInTimestamp"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"optedInErrorCode"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DSID"];

  v13 = [(IDSKTState *)self initWithUserID:v17 registrationType:v16 registrationStatus:v15 ktAccountKey:v4 accountKeyTimestamp:v5 accountKeyErrorCode:v6 deviceSignature:v7 ktDataForRegistration:v8 optedIn:v9 optedInTimestamp:v10 optedInErrorCode:v11 dsid:v12];
  return v13;
}

@end