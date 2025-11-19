@interface IDSStewiePhoneNumberInfo
- (BOOL)isEqual:(id)a3;
- (IDSStewiePhoneNumberInfo)initWithCoder:(id)a3;
- (IDSStewiePhoneNumberInfo)initWithPhoneNumber:(id)a3 uniqueIdentifier:(id)a4 authenticationCertificate:(id)a5 index:(id)a6;
- (IDSStewiePhoneNumberInfo)initWithUser:(id)a3 authenticationCertificate:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSStewiePhoneNumberInfo

- (IDSStewiePhoneNumberInfo)initWithPhoneNumber:(id)a3 uniqueIdentifier:(id)a4 authenticationCertificate:(id)a5 index:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IDSStewiePhoneNumberInfo;
  v15 = [(IDSStewiePhoneNumberInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_phoneNumber, a3);
    objc_storeStrong(&v16->_uniqueIdentifier, a4);
    objc_storeStrong(&v16->_authenticationCertificate, a5);
    objc_storeStrong(&v16->_index, a6);
  }

  return v16;
}

- (IDSStewiePhoneNumberInfo)initWithUser:(id)a3 authenticationCertificate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 phoneNumber];
  v9 = [v7 uniqueIdentifier];

  v10 = [(IDSStewiePhoneNumberInfo *)self initWithPhoneNumber:v8 uniqueIdentifier:v9 authenticationCertificate:v6 index:0];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 authenticationCertificate];
    v6 = [v5 dataRepresentation];
    v7 = [(IDSStewiePhoneNumberInfo *)self authenticationCertificate];
    v8 = [v7 dataRepresentation];
    v9 = [v6 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(IDSStewiePhoneNumberInfo *)self authenticationCertificate];
  v3 = [v2 dataRepresentation];
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSStewiePhoneNumberInfo *)self authenticationCertificate];
  if (v4)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(IDSStewiePhoneNumberInfo *)self phoneNumber];
  v7 = [(IDSStewiePhoneNumberInfo *)self index];
  v8 = [NSString stringWithFormat:@"<%@: %p { sig: %@, pn: %@, index: %@ }>", v3, self, v5, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSStewiePhoneNumberInfo *)self phoneNumber];
  [v4 encodeObject:v5 forKey:@"phoneNumber"];

  v6 = [(IDSStewiePhoneNumberInfo *)self uniqueIdentifier];
  [v4 encodeObject:v6 forKey:@"id"];

  v7 = [(IDSStewiePhoneNumberInfo *)self authenticationCertificate];
  v8 = [v7 dataRepresentation];
  [v4 encodeObject:v8 forKey:@"cert"];

  v9 = [(IDSStewiePhoneNumberInfo *)self index];
  [v4 encodeObject:v9 forKey:@"index"];
}

- (IDSStewiePhoneNumberInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cert"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"index"];

  v9 = [[IDSAuthenticationCertificate alloc] initWithDataRepresentation:v7];
  v10 = [(IDSStewiePhoneNumberInfo *)self initWithPhoneNumber:v5 uniqueIdentifier:v6 authenticationCertificate:v9 index:v8];

  return v10;
}

@end