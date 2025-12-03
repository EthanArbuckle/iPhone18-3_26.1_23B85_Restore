@interface MEEmailAddress
+ (id)emailAddressesForAddresses:(id)addresses;
- (BOOL)isEqual:(id)equal;
- (MEEmailAddress)initWithCoder:(id)coder;
- (MEEmailAddress)initWithRawString:(NSString *)rawString;
- (NSString)addressString;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MEEmailAddress

+ (id)emailAddressesForAddresses:(id)addresses
{
  v3 = [addresses ef_map:&__block_literal_global_1];

  return v3;
}

MEEmailAddress *__45__MEEmailAddress_emailAddressesForAddresses___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MEEmailAddress alloc] initWithRawString:v2];

  return v3;
}

- (MEEmailAddress)initWithRawString:(NSString *)rawString
{
  v4 = rawString;
  v10.receiver = self;
  v10.super_class = MEEmailAddress;
  v5 = [(MEEmailAddress *)&v10 init];
  if (v5)
  {
    emailAddressValue = [(NSString *)v4 emailAddressValue];
    v7 = emailAddressValue;
    if (emailAddressValue)
    {
      v8 = emailAddressValue;
    }

    else
    {
      v8 = v4;
    }

    objc_storeStrong(&v5->_convertible, v8);
  }

  return v5;
}

- (NSString)addressString
{
  emailAddressValue = [(ECEmailAddressConvertible *)self->_convertible emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];

  return simpleAddress;
}

- (MEEmailAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_rawString"];
  v6 = [(MEEmailAddress *)self initWithRawString:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rawString = [(MEEmailAddress *)self rawString];
  [coderCopy encodeObject:rawString forKey:@"EFPropertyKey_rawString"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = equalCopy;
    rawString = [(MEEmailAddress *)self rawString];
    rawString2 = [v6 rawString];
    v9 = [rawString isEqual:rawString2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  rawString = [(MEEmailAddress *)self rawString];
  v3 = [rawString hash];

  return v3 + 177573;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  rawString = [(MEEmailAddress *)self rawString];
  v6 = [v4 initWithRawString:rawString];

  return v6;
}

@end