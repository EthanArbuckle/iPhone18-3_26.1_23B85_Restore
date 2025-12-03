@interface DIIdentityElement
+ (DIIdentityElement)addressElement;
+ (DIIdentityElement)ageElement;
+ (DIIdentityElement)dateOfBirthElement;
+ (DIIdentityElement)documentDHSComplianceStatusElement;
+ (DIIdentityElement)documentExpirationDateElement;
+ (DIIdentityElement)documentIssueDateElement;
+ (DIIdentityElement)documentNumberElement;
+ (DIIdentityElement)drivingPrivilegesElement;
+ (DIIdentityElement)eyeColorElement;
+ (DIIdentityElement)familyNameElement;
+ (DIIdentityElement)givenNameElement;
+ (DIIdentityElement)hairColorElement;
+ (DIIdentityElement)heightElement;
+ (DIIdentityElement)issuingAuthorityElement;
+ (DIIdentityElement)organDonorStatusElement;
+ (DIIdentityElement)portraitElement;
+ (DIIdentityElement)sexElement;
+ (DIIdentityElement)veteranStatusElement;
+ (DIIdentityElement)weightElement;
+ (id)ageThresholdElementWithAge:(int64_t)age;
- (DIIdentityElement)initWithIdentifier:(id)identifier;
@end

@implementation DIIdentityElement

- (DIIdentityElement)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = DIIdentityElement;
  v5 = [(DIIdentityElement *)&v8 init];
  identifier = v5->_identifier;
  v5->_identifier = identifierCopy;

  return v5;
}

+ (DIIdentityElement)givenNameElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys givenName];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)familyNameElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys familyName];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)sexElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys sex];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)portraitElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys portrait];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)addressElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys address];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)heightElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys height];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)weightElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys weight];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)eyeColorElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys eyeColor];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)hairColorElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys hairColor];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)organDonorStatusElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys organDonorStatus];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)veteranStatusElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys veteranStatus];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)issuingAuthorityElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys issuingAuthority];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)documentDHSComplianceStatusElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys documentDHSComplianceStatus];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)documentExpirationDateElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys documentExpirationDate];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)documentNumberElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys documentNumber];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)documentIssueDateElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys documentIssueDate];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)drivingPrivilegesElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys drivingPrivileges];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)ageElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys age];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityElement)dateOfBirthElement
{
  v2 = [DIIdentityElement alloc];
  v3 = +[_TtC7CoreIDV27IdentityElementRawValueKeys dateOfBirth];
  v4 = [(DIIdentityElement *)v2 initWithIdentifier:v3];

  return v4;
}

+ (id)ageThresholdElementWithAge:(int64_t)age
{
  v4 = [DIIdentityElement alloc];
  v5 = [_TtC7CoreIDV27IdentityElementRawValueKeys ageIsOver:age];
  v6 = [(DIIdentityElement *)v4 initWithIdentifier:v5];

  return v6;
}

@end