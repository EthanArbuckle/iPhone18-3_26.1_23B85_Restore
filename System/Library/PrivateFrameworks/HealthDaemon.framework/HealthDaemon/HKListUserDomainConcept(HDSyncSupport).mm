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
    name = [(HDCodableListUserDomainConcept *)v6 name];
    [self _setListName:name];

    [self _setListType:{-[HDCodableListUserDomainConcept type](v6, "type")}];
  }
}

- (id)codableSubclassData
{
  v2 = objc_alloc_init(HDCodableListUserDomainConcept);
  listName = [self listName];
  [(HDCodableListUserDomainConcept *)v2 setName:listName];

  -[HDCodableListUserDomainConcept setType:](v2, "setType:", [self listType]);
  data = [(HDCodableListUserDomainConcept *)v2 data];

  return data;
}

@end