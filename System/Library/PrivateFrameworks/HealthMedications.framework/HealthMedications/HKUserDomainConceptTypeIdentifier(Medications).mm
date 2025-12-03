@interface HKUserDomainConceptTypeIdentifier(Medications)
+ (id)medicationUserDomainConceptTypeIdentifier;
- (uint64_t)isMedicationTypeIdentifier;
@end

@implementation HKUserDomainConceptTypeIdentifier(Medications)

+ (id)medicationUserDomainConceptTypeIdentifier
{
  v1 = [[self alloc] initWithCode:0 schema:@"medication"];

  return v1;
}

- (uint64_t)isMedicationTypeIdentifier
{
  if ([self code])
  {
    return 0;
  }

  schema = [self schema];
  if (schema == @"medication")
  {
    v2 = 1;
  }

  else if (@"medication")
  {
    schema2 = [self schema];
    v2 = [schema2 isEqualToString:@"medication"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end