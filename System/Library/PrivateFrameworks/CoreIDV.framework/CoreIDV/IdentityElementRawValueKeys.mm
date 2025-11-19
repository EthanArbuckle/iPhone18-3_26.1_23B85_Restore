@interface IdentityElementRawValueKeys
+ (NSString)address;
+ (NSString)age;
+ (NSString)dateOfBirth;
+ (NSString)documentDHSComplianceStatus;
+ (NSString)documentExpirationDate;
+ (NSString)documentIssueDate;
+ (NSString)documentNumber;
+ (NSString)drivingPrivileges;
+ (NSString)eyeColor;
+ (NSString)familyName;
+ (NSString)givenName;
+ (NSString)hairColor;
+ (NSString)height;
+ (NSString)issuingAuthority;
+ (NSString)organDonorStatus;
+ (NSString)portrait;
+ (NSString)sex;
+ (NSString)veteranStatus;
+ (NSString)weight;
+ (id)ageIsOver:(int64_t)a3;
- (_TtC7CoreIDV27IdentityElementRawValueKeys)init;
@end

@implementation IdentityElementRawValueKeys

+ (NSString)givenName
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)familyName
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)sex
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)portrait
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)address
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)height
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)weight
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)eyeColor
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)hairColor
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)organDonorStatus
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)veteranStatus
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)issuingAuthority
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)documentDHSComplianceStatus
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)documentExpirationDate
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)documentNumber
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)documentIssueDate
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)drivingPrivileges
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)age
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)dateOfBirth
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (id)ageIsOver:(int64_t)a3
{
  v3 = sub_21CD84174();
  MEMORY[0x21CF175E0](v3);

  MEMORY[0x21CF175E0](41, 0xE100000000000000);
  v4 = sub_21CD83B04();

  return v4;
}

- (_TtC7CoreIDV27IdentityElementRawValueKeys)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IdentityElementRawValueKeys();
  return [(IdentityElementRawValueKeys *)&v3 init];
}

@end