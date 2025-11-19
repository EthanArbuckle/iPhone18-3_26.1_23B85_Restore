@interface IDSPhoneNumberCredential
- (IDSPhoneNumberCredential)initWithCoder:(id)a3;
- (IDSPhoneNumberCredential)initWithTelURI:(id)a3 credential:(id)a4 credentialType:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSPhoneNumberCredential

- (IDSPhoneNumberCredential)initWithTelURI:(id)a3 credential:(id)a4 credentialType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = IDSPhoneNumberCredential;
  v11 = [(IDSPhoneNumberCredential *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_telURI, a3);
    objc_storeStrong(&v12->_credential, a4);
    v12->_credentialType = a5;
  }

  return v12;
}

- (IDSPhoneNumberCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IDSPhoneNumberCredential;
  v5 = [(IDSPhoneNumberCredential *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TelURI"];
    telURI = v5->_telURI;
    v5->_telURI = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Credential"];
    credential = v5->_credential;
    v5->_credential = v8;

    v5->_credentialType = [v4 decodeIntegerForKey:@"CredentialType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  telURI = self->_telURI;
  v5 = a3;
  [v5 encodeObject:telURI forKey:@"TelURI"];
  [v5 encodeObject:self->_credential forKey:@"Credential"];
  [v5 encodeInteger:self->_credentialType forKey:@"CredentialType"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  telURI = self->_telURI;
  credential = self->_credential;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_credentialType];
  v8 = [v3 stringWithFormat:@"<%@: %p { telURI: %@, credential: %@, credentialType: %@ }", v4, self, telURI, credential, v7];;

  return v8;
}

@end