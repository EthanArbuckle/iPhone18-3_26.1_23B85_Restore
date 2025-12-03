@interface HKUserDomainConceptLink(HDSyncSupport)
+ (id)createWithCodable:()HDSyncSupport;
- (HDCodableUserDomainConceptLink)codableRepresentationForSync;
@end

@implementation HKUserDomainConceptLink(HDSyncSupport)

- (HDCodableUserDomainConceptLink)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableUserDomainConceptLink);
  targetUUID = [self targetUUID];
  hk_dataForUUIDBytes = [targetUUID hk_dataForUUIDBytes];
  [(HDCodableUserDomainConceptLink *)v2 setTargetUUID:hk_dataForUUIDBytes];

  -[HDCodableUserDomainConceptLink setType:](v2, "setType:", [self type]);

  return v2;
}

+ (id)createWithCodable:()HDSyncSupport
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = objc_alloc(MEMORY[0x277CCDB00]);
    v5 = MEMORY[0x277CCAD78];
    targetUUID = [v3 targetUUID];
    v7 = [v5 hk_UUIDWithData:targetUUID];
    v8 = [v4 initWithTarget:v7 type:{objc_msgSend(v3, "type")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end