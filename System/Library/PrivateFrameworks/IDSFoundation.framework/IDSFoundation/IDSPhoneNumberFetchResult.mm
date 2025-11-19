@interface IDSPhoneNumberFetchResult
- (IDSPhoneNumberFetchResult)initWithCoder:(id)a3;
- (IDSPhoneNumberFetchResult)initWithTelURI:(id)a3 fetchType:(int64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSPhoneNumberFetchResult

- (IDSPhoneNumberFetchResult)initWithTelURI:(id)a3 fetchType:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IDSPhoneNumberFetchResult;
  v8 = [(IDSPhoneNumberFetchResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_telURI, a3);
    v9->_fetchType = a4;
  }

  return v9;
}

- (IDSPhoneNumberFetchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IDSPhoneNumberFetchResult;
  v5 = [(IDSPhoneNumberFetchResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TelURI"];
    telURI = v5->_telURI;
    v5->_telURI = v6;

    v5->_fetchType = [v4 decodeIntegerForKey:@"FetchType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  telURI = self->_telURI;
  v5 = a3;
  [v5 encodeObject:telURI forKey:@"TelURI"];
  [v5 encodeInteger:self->_fetchType forKey:@"FetchType"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  telURI = self->_telURI;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_fetchType];
  v7 = [v3 stringWithFormat:@"<%@: %p { telURI: %@, fetchType: %@ }", v4, self, telURI, v6];;

  return v7;
}

@end