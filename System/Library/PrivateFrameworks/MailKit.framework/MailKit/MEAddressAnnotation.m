@interface MEAddressAnnotation
+ (MEAddressAnnotation)errorWithLocalizedDescription:(NSString *)localizedDescription;
+ (MEAddressAnnotation)successWithLocalizedDescription:(NSString *)localizedDescription;
+ (MEAddressAnnotation)warningWithLocalizedDescription:(NSString *)localizedDescription;
- (MEAddressAnnotation)initWithCoder:(id)a3;
- (MEAddressAnnotation)initWithEmailAddressTokenIconType:(int64_t)a3 localizedDescription:(id)a4;
- (id)_iconTypeDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MEAddressAnnotation

- (MEAddressAnnotation)initWithEmailAddressTokenIconType:(int64_t)a3 localizedDescription:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MEAddressAnnotation;
  v8 = [(MEAddressAnnotation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_iconType = a3;
    objc_storeStrong(&v8->_localizedDescription, a4);
  }

  return v9;
}

- (MEAddressAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"EFPropertyKey_iconType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_localizedDescription"];
  v7 = [(MEAddressAnnotation *)self initWithEmailAddressTokenIconType:v5 localizedDescription:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[MEAddressAnnotation iconType](self forKey:{"iconType"), @"EFPropertyKey_iconType"}];
  v4 = [(MEAddressAnnotation *)self localizedDescription];
  [v5 encodeObject:v4 forKey:@"EFPropertyKey_localizedDescription"];
}

- (id)_iconTypeDescription
{
  iconType = self->_iconType;
  if (iconType > 2)
  {
    return &stru_2869277F8;
  }

  else
  {
    return off_279858D30[iconType];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  originatorExtensionDisplayName = self->_originatorExtensionDisplayName;
  v5 = [(MEAddressAnnotation *)self _iconTypeDescription];
  v6 = [v3 stringWithFormat:@"App Extension Name:%@ IconType:%@ Description:%@}", originatorExtensionDisplayName, v5, self->_localizedDescription];

  return v6;
}

+ (MEAddressAnnotation)errorWithLocalizedDescription:(NSString *)localizedDescription
{
  v3 = localizedDescription;
  v4 = [[MEAddressAnnotation alloc] initWithEmailAddressTokenIconType:0 localizedDescription:v3];

  return v4;
}

+ (MEAddressAnnotation)warningWithLocalizedDescription:(NSString *)localizedDescription
{
  v3 = localizedDescription;
  v4 = [[MEAddressAnnotation alloc] initWithEmailAddressTokenIconType:1 localizedDescription:v3];

  return v4;
}

+ (MEAddressAnnotation)successWithLocalizedDescription:(NSString *)localizedDescription
{
  v3 = localizedDescription;
  v4 = [[MEAddressAnnotation alloc] initWithEmailAddressTokenIconType:2 localizedDescription:v3];

  return v4;
}

@end