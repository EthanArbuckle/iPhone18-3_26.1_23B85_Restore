@interface IDSIDKTData
- (BOOL)isEqual:(id)a3;
- (IDSIDKTData)initWithCoder:(id)a3;
- (IDSIDKTData)initWithVerifierResult:(id)a3 requestID:(id)a4;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSIDKTData

- (IDSIDKTData)initWithVerifierResult:(id)a3 requestID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSIDKTData;
  v9 = [(IDSIDKTData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_verifierResult, a3);
    objc_storeStrong(&v10->_verificationRequestID, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSIDKTData *)self verificationRequestID];
  [v4 encodeObject:v5 forKey:@"IDSIDKTDataVerificationRequestID"];

  v6 = [(IDSIDKTData *)self verifierResult];
  [v4 encodeObject:v6 forKey:@"IDSIDKTDataVerifierResult"];
}

- (IDSIDKTData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"IDSIDKTDataVerificationRequestID"];
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
  v8 = [v4 decodeObjectOfClass:v6 forKey:@"IDSIDKTDataVerifierResult"];
  v9 = [(IDSIDKTData *)self initWithVerifierResult:v8 requestID:v5];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSIDKTData *)self verifierResult];
  v5 = [(IDSIDKTData *)self verificationRequestID];
  v6 = [v3 stringWithFormat:@"Verifier Result: %@, Request ID: %@", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      verifierResult = self->_verifierResult;
      v7 = [(IDSIDKTData *)v5 verifierResult];
      v8 = [(KTVerifierResult *)verifierResult isEqual:v7];
      if ((v8 & 1) != 0 || (v9 = self->_verifierResult, [(IDSIDKTData *)v5 verifierResult], verifierResult = objc_claimAutoreleasedReturnValue(), v9 == verifierResult))
      {
        verificationRequestID = self->_verificationRequestID;
        v12 = [(IDSIDKTData *)v5 verificationRequestID];
        if (([(NSUUID *)verificationRequestID isEqual:v12]& 1) != 0)
        {
          v10 = 1;
        }

        else
        {
          v13 = self->_verificationRequestID;
          v14 = [(IDSIDKTData *)v5 verificationRequestID];
          v10 = v13 == v14;
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