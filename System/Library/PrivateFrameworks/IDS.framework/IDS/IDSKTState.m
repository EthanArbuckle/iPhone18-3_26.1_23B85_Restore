@interface IDSKTState
- (IDSKTState)initWithCoder:(id)a3;
- (IDSKTState)initWithUserID:(id)a3 registrationType:(int)a4 registrationStatus:(int)a5 ktAccountKey:(id)a6 accountKeyTimestamp:(id)a7 accountKeyErrorCode:(id)a8 deviceSignature:(id)a9 ktDataForRegistration:(id)a10 optedIn:(unint64_t)a11 optedInTimestamp:(id)a12 optedInErrorCode:(id)a13 dsid:(id)a14;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSKTState

- (IDSKTState)initWithUserID:(id)a3 registrationType:(int)a4 registrationStatus:(int)a5 ktAccountKey:(id)a6 accountKeyTimestamp:(id)a7 accountKeyErrorCode:(id)a8 deviceSignature:(id)a9 ktDataForRegistration:(id)a10 optedIn:(unint64_t)a11 optedInTimestamp:(id)a12 optedInErrorCode:(id)a13 dsid:(id)a14
{
  v30 = a3;
  obj = a6;
  v19 = a6;
  v33 = a7;
  v32 = a8;
  v31 = a9;
  v20 = a10;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v34.receiver = self;
  v34.super_class = IDSKTState;
  v24 = [(IDSKTState *)&v34 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_userID, a3);
    v25->_registrationType = a4;
    v25->_status = a5;
    objc_storeStrong(&v25->_ktAccountKey, obj);
    objc_storeStrong(&v25->_ktAccountKeyTimestamp, a7);
    objc_storeStrong(&v25->_ktAccountKeyErrorCode, a8);
    objc_storeStrong(&v25->_deviceSignature, a9);
    objc_storeStrong(&v25->_ktDataForRegistration, a10);
    v25->_optedIn = a11;
    objc_storeStrong(&v25->_ktOptInTimestamp, a12);
    objc_storeStrong(&v25->_ktOptInErrorCode, a13);
    objc_storeStrong(&v25->_dsid, a14);
  }

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  userID = self->_userID;
  v5 = a3;
  [v5 encodeObject:userID forKey:@"userID"];
  [v5 encodeInt32:self->_registrationType forKey:@"regType"];
  [v5 encodeInt32:self->_status forKey:@"status"];
  [v5 encodeObject:self->_ktAccountKey forKey:@"accountKey"];
  [v5 encodeObject:self->_ktAccountKeyTimestamp forKey:@"accountKeyTimestamp"];
  [v5 encodeObject:self->_ktAccountKeyErrorCode forKey:@"accountKeyErrorCode"];
  [v5 encodeObject:self->_deviceSignature forKey:@"deviceSignature"];
  [v5 encodeObject:self->_ktDataForRegistration forKey:@"ktDataForRegistration"];
  [v5 encodeInteger:self->_optedIn forKey:@"optedIn"];
  [v5 encodeObject:self->_ktOptInTimestamp forKey:@"optedInTimestamp"];
  [v5 encodeObject:self->_ktOptInErrorCode forKey:@"optedInErrorCode"];
  [v5 encodeObject:self->_dsid forKey:@"DSID"];
}

- (IDSKTState)initWithCoder:(id)a3
{
  v3 = a3;
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
  v16 = [v3 decodeInt32ForKey:@"regType"];
  v15 = [v3 decodeInt32ForKey:@"status"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"accountKey"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyTimestamp"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyErrorCode"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"deviceSignature"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ktDataForRegistration"];
  v9 = [v3 decodeIntegerForKey:@"optedIn"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"optedInTimestamp"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"optedInErrorCode"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"DSID"];

  v13 = [(IDSKTState *)self initWithUserID:v17 registrationType:v16 registrationStatus:v15 ktAccountKey:v4 accountKeyTimestamp:v5 accountKeyErrorCode:v6 deviceSignature:v7 ktDataForRegistration:v8 optedIn:v9 optedInTimestamp:v10 optedInErrorCode:v11 dsid:v12];
  return v13;
}

@end