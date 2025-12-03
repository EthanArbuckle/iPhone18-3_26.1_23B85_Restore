@interface IDSPhoneNumberCredential
- (IDSPhoneNumberCredential)initWithCoder:(id)coder;
- (IDSPhoneNumberCredential)initWithTelURI:(id)i credential:(id)credential credentialType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPhoneNumberCredential

- (IDSPhoneNumberCredential)initWithTelURI:(id)i credential:(id)credential credentialType:(int64_t)type
{
  iCopy = i;
  credentialCopy = credential;
  v14.receiver = self;
  v14.super_class = IDSPhoneNumberCredential;
  v11 = [(IDSPhoneNumberCredential *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_telURI, i);
    objc_storeStrong(&v12->_credential, credential);
    v12->_credentialType = type;
  }

  return v12;
}

- (IDSPhoneNumberCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = IDSPhoneNumberCredential;
  v5 = [(IDSPhoneNumberCredential *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TelURI"];
    telURI = v5->_telURI;
    v5->_telURI = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Credential"];
    credential = v5->_credential;
    v5->_credential = v8;

    v5->_credentialType = [coderCopy decodeIntegerForKey:@"CredentialType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  telURI = self->_telURI;
  coderCopy = coder;
  [coderCopy encodeObject:telURI forKey:@"TelURI"];
  [coderCopy encodeObject:self->_credential forKey:@"Credential"];
  [coderCopy encodeInteger:self->_credentialType forKey:@"CredentialType"];
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