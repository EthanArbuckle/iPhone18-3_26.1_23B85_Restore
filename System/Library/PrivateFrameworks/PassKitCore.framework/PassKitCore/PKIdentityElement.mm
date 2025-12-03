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
- (PKIdentityElement)initWithDIIdentityElement:(id)element;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKIdentityElement

- (PKIdentityElement)initWithDIIdentityElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = PKIdentityElement;
  v5 = [(PKIdentityElement *)&v8 init];
  wrapped = v5->_wrapped;
  v5->_wrapped = elementCopy;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [PKIdentityElement alloc];
  v6 = [(DIIdentityElement *)self->_wrapped copyWithZone:zone];
  v7 = [(PKIdentityElement *)v5 initWithDIIdentityElement:v6];

  return v7;
}

+ (PKIdentityElement)givenNameElement
{
  v2 = [PKIdentityElement alloc];
  givenNameElement = [MEMORY[0x1E6997DB8] givenNameElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:givenNameElement];

  return v4;
}

+ (PKIdentityElement)familyNameElement
{
  v2 = [PKIdentityElement alloc];
  familyNameElement = [MEMORY[0x1E6997DB8] familyNameElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:familyNameElement];

  return v4;
}

+ (PKIdentityElement)portraitElement
{
  v2 = [PKIdentityElement alloc];
  portraitElement = [MEMORY[0x1E6997DB8] portraitElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:portraitElement];

  return v4;
}

+ (PKIdentityElement)addressElement
{
  v2 = [PKIdentityElement alloc];
  addressElement = [MEMORY[0x1E6997DB8] addressElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:addressElement];

  return v4;
}

+ (PKIdentityElement)heightElement
{
  v2 = [PKIdentityElement alloc];
  heightElement = [MEMORY[0x1E6997DB8] heightElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:heightElement];

  return v4;
}

+ (PKIdentityElement)weightElement
{
  v2 = [PKIdentityElement alloc];
  weightElement = [MEMORY[0x1E6997DB8] weightElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:weightElement];

  return v4;
}

+ (PKIdentityElement)eyeColorElement
{
  v2 = [PKIdentityElement alloc];
  eyeColorElement = [MEMORY[0x1E6997DB8] eyeColorElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:eyeColorElement];

  return v4;
}

+ (PKIdentityElement)hairColorElement
{
  v2 = [PKIdentityElement alloc];
  hairColorElement = [MEMORY[0x1E6997DB8] hairColorElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:hairColorElement];

  return v4;
}

+ (PKIdentityElement)organDonorStatusElement
{
  v2 = [PKIdentityElement alloc];
  organDonorStatusElement = [MEMORY[0x1E6997DB8] organDonorStatusElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:organDonorStatusElement];

  return v4;
}

+ (PKIdentityElement)veteranStatusElement
{
  v2 = [PKIdentityElement alloc];
  veteranStatusElement = [MEMORY[0x1E6997DB8] veteranStatusElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:veteranStatusElement];

  return v4;
}

+ (PKIdentityElement)issuingAuthorityElement
{
  v2 = [PKIdentityElement alloc];
  issuingAuthorityElement = [MEMORY[0x1E6997DB8] issuingAuthorityElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:issuingAuthorityElement];

  return v4;
}

+ (PKIdentityElement)ageElement
{
  v2 = [PKIdentityElement alloc];
  ageElement = [MEMORY[0x1E6997DB8] ageElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:ageElement];

  return v4;
}

+ (PKIdentityElement)dateOfBirthElement
{
  v2 = [PKIdentityElement alloc];
  dateOfBirthElement = [MEMORY[0x1E6997DB8] dateOfBirthElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:dateOfBirthElement];

  return v4;
}

+ (PKIdentityElement)sexElement
{
  v2 = [PKIdentityElement alloc];
  sexElement = [MEMORY[0x1E6997DB8] sexElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:sexElement];

  return v4;
}

+ (PKIdentityElement)documentIssueDateElement
{
  v2 = [PKIdentityElement alloc];
  documentIssueDateElement = [MEMORY[0x1E6997DB8] documentIssueDateElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:documentIssueDateElement];

  return v4;
}

+ (PKIdentityElement)documentExpirationDateElement
{
  v2 = [PKIdentityElement alloc];
  documentExpirationDateElement = [MEMORY[0x1E6997DB8] documentExpirationDateElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:documentExpirationDateElement];

  return v4;
}

+ (PKIdentityElement)documentDHSComplianceStatusElement
{
  v2 = [PKIdentityElement alloc];
  documentDHSComplianceStatusElement = [MEMORY[0x1E6997DB8] documentDHSComplianceStatusElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:documentDHSComplianceStatusElement];

  return v4;
}

+ (PKIdentityElement)documentNumberElement
{
  v2 = [PKIdentityElement alloc];
  documentNumberElement = [MEMORY[0x1E6997DB8] documentNumberElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:documentNumberElement];

  return v4;
}

+ (PKIdentityElement)drivingPrivilegesElement
{
  v2 = [PKIdentityElement alloc];
  drivingPrivilegesElement = [MEMORY[0x1E6997DB8] drivingPrivilegesElement];
  v4 = [(PKIdentityElement *)v2 initWithDIIdentityElement:drivingPrivilegesElement];

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