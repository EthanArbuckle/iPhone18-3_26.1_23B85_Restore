@interface DAHomeKeyInformation
+ (id)withEndpoint:(id)a3;
- (DAHomeKeyInformation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAHomeKeyInformation

+ (id)withEndpoint:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 appletIdentifier];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [v3 publicKey];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [v3 readerIdentifier];

  v10 = v4[3];
  v4[3] = v9;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  appletIdentifier = self->_appletIdentifier;
  v5 = a3;
  [v5 encodeObject:appletIdentifier forKey:@"appletIdentifier"];
  [v5 encodeObject:self->_publicKey forKey:@"publicKey"];
  [v5 encodeObject:self->_readerIdentifier forKey:@"readerIdentifier"];
}

- (DAHomeKeyInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DAHomeKeyInformation;
  v5 = [(DAHomeKeyInformation *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v10;
  }

  return v5;
}

@end