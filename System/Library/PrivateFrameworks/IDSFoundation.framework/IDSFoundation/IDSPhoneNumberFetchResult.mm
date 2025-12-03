@interface IDSPhoneNumberFetchResult
- (IDSPhoneNumberFetchResult)initWithCoder:(id)coder;
- (IDSPhoneNumberFetchResult)initWithTelURI:(id)i fetchType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPhoneNumberFetchResult

- (IDSPhoneNumberFetchResult)initWithTelURI:(id)i fetchType:(int64_t)type
{
  iCopy = i;
  v11.receiver = self;
  v11.super_class = IDSPhoneNumberFetchResult;
  v8 = [(IDSPhoneNumberFetchResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_telURI, i);
    v9->_fetchType = type;
  }

  return v9;
}

- (IDSPhoneNumberFetchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = IDSPhoneNumberFetchResult;
  v5 = [(IDSPhoneNumberFetchResult *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TelURI"];
    telURI = v5->_telURI;
    v5->_telURI = v6;

    v5->_fetchType = [coderCopy decodeIntegerForKey:@"FetchType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  telURI = self->_telURI;
  coderCopy = coder;
  [coderCopy encodeObject:telURI forKey:@"TelURI"];
  [coderCopy encodeInteger:self->_fetchType forKey:@"FetchType"];
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