@interface HKListUserDomainConcept(HDSyncSupport)
- (id)codableSubclassData;
- (void)applyCodableSubclassData:()HDSyncSupport mutableUserDomainConceptProperties:;
@end

@implementation HKListUserDomainConcept(HDSyncSupport)

- (void)applyCodableSubclassData:()HDSyncSupport mutableUserDomainConceptProperties:
{
  v4 = a3;
  v6 = [[HDCodableListUserDomainConcept alloc] initWithData:v4];

  if (v6)
  {
    v5 = [(HDCodableListUserDomainConcept *)v6 name];
    [a1 _setListName:v5];

    [a1 _setListType:{-[HDCodableListUserDomainConcept type](v6, "type")}];
  }
}

- (id)codableSubclassData
{
  v2 = objc_alloc_init(HDCodableListUserDomainConcept);
  v3 = [a1 listName];
  [(HDCodableListUserDomainConcept *)v2 setName:v3];

  -[HDCodableListUserDomainConcept setType:](v2, "setType:", [a1 listType]);
  v4 = [(HDCodableListUserDomainConcept *)v2 data];

  return v4;
}

@end