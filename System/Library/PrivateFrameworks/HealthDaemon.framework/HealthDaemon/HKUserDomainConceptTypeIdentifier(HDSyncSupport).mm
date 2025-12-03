@interface HKUserDomainConceptTypeIdentifier(HDSyncSupport)
+ (id)createWithCodable:()HDSyncSupport;
- (HDCodableUserDomainConceptTypeIdentifier)codableRepresentationForSync;
@end

@implementation HKUserDomainConceptTypeIdentifier(HDSyncSupport)

- (HDCodableUserDomainConceptTypeIdentifier)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableUserDomainConceptTypeIdentifier);
  schema = [self schema];
  [(HDCodableUserDomainConceptTypeIdentifier *)v2 setSchema:schema];

  -[HDCodableUserDomainConceptTypeIdentifier setCode:](v2, "setCode:", [self code]);

  return v2;
}

+ (id)createWithCodable:()HDSyncSupport
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = objc_alloc(MEMORY[0x277CCDB50]);
    code = [v3 code];
    schema = [v3 schema];
    v7 = [v4 initWithCode:code schema:schema];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end