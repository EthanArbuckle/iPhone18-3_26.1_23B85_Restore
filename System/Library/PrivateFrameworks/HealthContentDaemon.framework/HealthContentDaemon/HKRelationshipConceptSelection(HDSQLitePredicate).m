@interface HKRelationshipConceptSelection(HDSQLitePredicate)
- (id)predicateWithProfile:()HDSQLitePredicate;
@end

@implementation HKRelationshipConceptSelection(HDSQLitePredicate)

- (id)predicateWithProfile:()HDSQLitePredicate
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D10B80];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setEntityClass:objc_opt_class()];
  v7 = [a1 selection];
  v8 = [v7 predicateWithProfile:v5];

  [v6 setPredicate:v8];
  v9 = [a1 direction];
  v10 = HDSimpleGraphDatabaseRelationshipEntityPropertySubjectIdentifier;
  if (v9 != 1)
  {
    v10 = &HDSimpleGraphDatabaseRelationshipEntityPropertyObjectIdentifier;
  }

  v11 = [(HDSQLiteSchemaEntity *)HDSimpleGraphDatabaseRelationshipEntity disambiguatedSQLForProperty:*v10];
  v12 = MEMORY[0x277D10B18];
  v22[0] = *MEMORY[0x277D10A40];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = [v12 predicateWithProperty:v11 comparisonType:7 subqueryDescriptor:v6 subqueryProperties:v13];

  if ([a1 type] == -1)
  {
    v18 = v14;
  }

  else
  {
    v15 = MEMORY[0x277D10B20];
    v16 = HDSimpleGraphDatabaseNodeEntityPredicateForNodesWithRelationshipType([a1 type]);
    v21[0] = v16;
    v21[1] = v14;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v18 = [v15 predicateMatchingAllPredicates:v17];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end