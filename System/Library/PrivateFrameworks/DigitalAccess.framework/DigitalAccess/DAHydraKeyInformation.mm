@interface DAHydraKeyInformation
+ (id)withEndpoint:(id)a3;
- (DAHydraKeyInformation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAHydraKeyInformation

+ (id)withEndpoint:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 certificates];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [v3 appletIdentifier];

  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  certificateChain = self->_certificateChain;
  v5 = a3;
  [v5 encodeObject:certificateChain forKey:@"certificateChain"];
  [v5 encodeObject:self->_appletIdentifier forKey:@"appletIdentifier"];
}

- (DAHydraKeyInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DAHydraKeyInformation;
  v5 = [(DAHydraKeyInformation *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"certificateChain"];
    certificateChain = v5->_certificateChain;
    v5->_certificateChain = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v8;
  }

  return v5;
}

@end