@interface PKIdentityElement
+ (PKIdentityElement)addressElement;
+ (PKIdentityElement)ageElement;
+ (PKIdentityElement)ageThresholdElementWithAge:(NSInteger)age;
+ (PKIdentityElement)dateOfBirthElement;
+ (PKIdentityElement)documentDHSComplianceStatusElement;
+ (PKIdentityElement)documentExpirationDateElement;
+ (PKIdentityElement)documentIssueDateElement;
+ (PKIdentityElement)documentNumberElement;
+ (PKIdentityElement)drivingPrivilegesElement;
+ (PKIdentityElement)eyeColorElement;
+ (PKIdentityElement)familyNameElement;
+ (PKIdentityElement)givenNameElement;
+ (PKIdentityElement)hairColorElement;
+ (PKIdentityElement)heightElement;
+ (PKIdentityElement)issuingAuthorityElement;
+ (PKIdentityElement)organDonorStatusElement;
+ (PKIdentityElement)portraitElement;
+ (PKIdentityElement)sexElement;
+ (PKIdentityElement)veteranStatusElement;
+ (PKIdentityElement)weightElement;
- (PKIdentityElement)initWithDIIdentityElement:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKIdentityElement

- (PKIdentityElement)initWithDIIdentityElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKIdentityElement;
  v5 = [(PKIdentityElement *)&v8 init];
  wrapped = v5->_wrapped;
  v5->_wrapped = v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [PKIdentityElement alloc];
  v6 = [(DIIdentityElement *)self->_wrapped copyWithZone:a3];
  v7 = [(PKIdentityElement *)v5 initWithDIIdentityElement:v6];

  return v7;
}

+ (PKIdentityElement)givenNameElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] givenNameElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)familyNameElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] familyNameElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)portraitElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] portraitElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)addressElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] addressElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)heightElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] heightElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)weightElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] weightElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)eyeColorElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] eyeColorElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)hairColorElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] hairColorElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)organDonorStatusElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] organDonorStatusElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)veteranStatusElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] veteranStatusElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)issuingAuthorityElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] issuingAuthorityElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)ageElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] ageElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)dateOfBirthElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] dateOfBirthElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)sexElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] sexElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)documentIssueDateElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] documentIssueDateElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)documentExpirationDateElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] documentExpirationDateElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)documentDHSComplianceStatusElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] documentDHSComplianceStatusElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)documentNumberElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] documentNumberElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)drivingPrivilegesElement
{
  v2 = [PKIdentityElement alloc];
  v3 = [MEMORY[0x1E6997DB8] drivingPrivilegesElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:v3];

  return v4;
}

+ (PKIdentityElement)ageThresholdElementWithAge:(NSInteger)age
{
  v4 = [PKIdentityElement alloc];
  v5 = [MEMORY[0x1E6997DB8] ageThresholdElementWithAge:age];
  v6 = [(PKIdentityElement *)v4 initWithDIIdentityElement:v5];

  return v6;
}

@end