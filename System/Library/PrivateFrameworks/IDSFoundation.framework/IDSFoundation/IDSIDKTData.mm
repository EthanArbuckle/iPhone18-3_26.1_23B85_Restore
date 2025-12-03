@interface IDSIDKTData
- (BOOL)isEqual:(id)equal;
- (IDSIDKTData)initWithCoder:(id)coder;
- (IDSIDKTData)initWithVerifierResult:(id)result requestID:(id)d;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSIDKTData

- (IDSIDKTData)initWithVerifierResult:(id)result requestID:(id)d
{
  resultCopy = result;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = IDSIDKTData;
  v9 = [(IDSIDKTData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_verifierResult, result);
    objc_storeStrong(&v10->_verificationRequestID, d);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  verificationRequestID = [(IDSIDKTData *)self verificationRequestID];
  [coderCopy encodeObject:verificationRequestID forKey:@"IDSIDKTDataVerificationRequestID"];

  verifierResult = [(IDSIDKTData *)self verifierResult];
  [coderCopy encodeObject:verifierResult forKey:@"IDSIDKTDataVerifierResult"];
}

- (IDSIDKTData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"IDSIDKTDataVerificationRequestID"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v6 = qword_1EB2BBBD8;
  v15 = qword_1EB2BBBD8;
  if (!qword_1EB2BBBD8)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A7BF0B50;
    v11[3] = &unk_1E77E1708;
    v11[4] = &v12;
    sub_1A7BF0B50(v11);
    v6 = v13[3];
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:@"IDSIDKTDataVerifierResult"];
  v9 = [(IDSIDKTData *)self initWithVerifierResult:v8 requestID:v5];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  verifierResult = [(IDSIDKTData *)self verifierResult];
  verificationRequestID = [(IDSIDKTData *)self verificationRequestID];
  v6 = [v3 stringWithFormat:@"Verifier Result: %@, Request ID: %@", verifierResult, verificationRequestID];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      verifierResult = self->_verifierResult;
      verifierResult = [(IDSIDKTData *)v5 verifierResult];
      v8 = [(KTVerifierResult *)verifierResult isEqual:verifierResult];
      if ((v8 & 1) != 0 || (v9 = self->_verifierResult, [(IDSIDKTData *)v5 verifierResult], verifierResult = objc_claimAutoreleasedReturnValue(), v9 == verifierResult))
      {
        verificationRequestID = self->_verificationRequestID;
        verificationRequestID = [(IDSIDKTData *)v5 verificationRequestID];
        if (([(NSUUID *)verificationRequestID isEqual:verificationRequestID]& 1) != 0)
        {
          v10 = 1;
        }

        else
        {
          v13 = self->_verificationRequestID;
          verificationRequestID2 = [(IDSIDKTData *)v5 verificationRequestID];
          v10 = v13 == verificationRequestID2;
        }

        if (v8)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

@end