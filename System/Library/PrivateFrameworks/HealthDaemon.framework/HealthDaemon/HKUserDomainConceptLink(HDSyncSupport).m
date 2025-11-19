@interface HKUserDomainConceptLink(HDSyncSupport)
+ (id)createWithCodable:()HDSyncSupport;
- (HDCodableUserDomainConceptLink)codableRepresentationForSync;
@end

@implementation HKUserDomainConceptLink(HDSyncSupport)

- (HDCodableUserDomainConceptLink)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableUserDomainConceptLink);
  v3 = [a1 targetUUID];
  v4 = [v3 hk_dataForUUIDBytes];
  [(HDCodableUserDomainConceptLink *)v2 setTargetUUID:v4];

  -[HDCodableUserDomainConceptLink setType:](v2, "setType:", [a1 type]);

  return v2;
}

+ (id)createWithCodable:()HDSyncSupport
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = objc_alloc(MEMORY[0x277CCDB00]);
    v5 = MEMORY[0x277CCAD78];
    v6 = [v3 targetUUID];
    v7 = [v5 hk_UUIDWithData:v6];
    v8 = [v4 initWithTarget:v7 type:{objc_msgSend(v3, "type")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end