@interface MEEmailAddress
+ (id)emailAddressesForAddresses:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MEEmailAddress)initWithCoder:(id)a3;
- (MEEmailAddress)initWithRawString:(NSString *)rawString;
- (NSString)addressString;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MEEmailAddress

+ (id)emailAddressesForAddresses:(id)a3
{
  v3 = [a3 ef_map:&__block_literal_global_1];

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
    v6 = [(NSString *)v4 emailAddressValue];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
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
  v2 = [(ECEmailAddressConvertible *)self->_convertible emailAddressValue];
  v3 = [v2 simpleAddress];

  return v3;
}

- (MEEmailAddress)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_rawString"];
  v6 = [(MEEmailAddress *)self initWithRawString:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(MEEmailAddress *)self rawString];
  [v5 encodeObject:v4 forKey:@"EFPropertyKey_rawString"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(MEEmailAddress *)self rawString];
    v8 = [v6 rawString];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(MEEmailAddress *)self rawString];
  v3 = [v2 hash];

  return v3 + 177573;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(MEEmailAddress *)self rawString];
  v6 = [v4 initWithRawString:v5];

  return v6;
}

@end