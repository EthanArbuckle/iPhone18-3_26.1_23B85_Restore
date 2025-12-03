@interface IDSStewiePhoneNumberInfo
- (BOOL)isEqual:(id)equal;
- (IDSStewiePhoneNumberInfo)initWithCoder:(id)coder;
- (IDSStewiePhoneNumberInfo)initWithPhoneNumber:(id)number uniqueIdentifier:(id)identifier authenticationCertificate:(id)certificate index:(id)index;
- (IDSStewiePhoneNumberInfo)initWithUser:(id)user authenticationCertificate:(id)certificate;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSStewiePhoneNumberInfo

- (IDSStewiePhoneNumberInfo)initWithPhoneNumber:(id)number uniqueIdentifier:(id)identifier authenticationCertificate:(id)certificate index:(id)index
{
  numberCopy = number;
  identifierCopy = identifier;
  certificateCopy = certificate;
  indexCopy = index;
  v18.receiver = self;
  v18.super_class = IDSStewiePhoneNumberInfo;
  v15 = [(IDSStewiePhoneNumberInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_phoneNumber, number);
    objc_storeStrong(&v16->_uniqueIdentifier, identifier);
    objc_storeStrong(&v16->_authenticationCertificate, certificate);
    objc_storeStrong(&v16->_index, index);
  }

  return v16;
}

- (IDSStewiePhoneNumberInfo)initWithUser:(id)user authenticationCertificate:(id)certificate
{
  certificateCopy = certificate;
  userCopy = user;
  phoneNumber = [userCopy phoneNumber];
  uniqueIdentifier = [userCopy uniqueIdentifier];

  v10 = [(IDSStewiePhoneNumberInfo *)self initWithPhoneNumber:phoneNumber uniqueIdentifier:uniqueIdentifier authenticationCertificate:certificateCopy index:0];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    authenticationCertificate = [equalCopy authenticationCertificate];
    dataRepresentation = [authenticationCertificate dataRepresentation];
    authenticationCertificate2 = [(IDSStewiePhoneNumberInfo *)self authenticationCertificate];
    dataRepresentation2 = [authenticationCertificate2 dataRepresentation];
    v9 = [dataRepresentation isEqual:dataRepresentation2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  authenticationCertificate = [(IDSStewiePhoneNumberInfo *)self authenticationCertificate];
  dataRepresentation = [authenticationCertificate dataRepresentation];
  v4 = [dataRepresentation hash];

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  authenticationCertificate = [(IDSStewiePhoneNumberInfo *)self authenticationCertificate];
  if (authenticationCertificate)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  phoneNumber = [(IDSStewiePhoneNumberInfo *)self phoneNumber];
  index = [(IDSStewiePhoneNumberInfo *)self index];
  v8 = [NSString stringWithFormat:@"<%@: %p { sig: %@, pn: %@, index: %@ }>", v3, self, v5, phoneNumber, index];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phoneNumber = [(IDSStewiePhoneNumberInfo *)self phoneNumber];
  [coderCopy encodeObject:phoneNumber forKey:@"phoneNumber"];

  uniqueIdentifier = [(IDSStewiePhoneNumberInfo *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"id"];

  authenticationCertificate = [(IDSStewiePhoneNumberInfo *)self authenticationCertificate];
  dataRepresentation = [authenticationCertificate dataRepresentation];
  [coderCopy encodeObject:dataRepresentation forKey:@"cert"];

  index = [(IDSStewiePhoneNumberInfo *)self index];
  [coderCopy encodeObject:index forKey:@"index"];
}

- (IDSStewiePhoneNumberInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cert"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"index"];

  v9 = [[IDSAuthenticationCertificate alloc] initWithDataRepresentation:v7];
  v10 = [(IDSStewiePhoneNumberInfo *)self initWithPhoneNumber:v5 uniqueIdentifier:v6 authenticationCertificate:v9 index:v8];

  return v10;
}

@end