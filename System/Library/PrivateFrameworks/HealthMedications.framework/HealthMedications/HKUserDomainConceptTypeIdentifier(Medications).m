@interface HKUserDomainConceptTypeIdentifier(Medications)
+ (id)medicationUserDomainConceptTypeIdentifier;
- (uint64_t)isMedicationTypeIdentifier;
@end

@implementation HKUserDomainConceptTypeIdentifier(Medications)

+ (id)medicationUserDomainConceptTypeIdentifier
{
  v1 = [[a1 alloc] initWithCode:0 schema:@"medication"];

  return v1;
}

- (uint64_t)isMedicationTypeIdentifier
{
  if ([a1 code])
  {
    return 0;
  }

  v3 = [a1 schema];
  if (v3 == @"medication")
  {
    v2 = 1;
  }

  else if (@"medication")
  {
    v4 = [a1 schema];
    v2 = [v4 isEqualToString:@"medication"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end