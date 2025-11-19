@interface CRKASMConcreteUserDirectory
+ (id)instructorDirectoryWithRosterRequirements:(id)a3 locationIDs:(id)a4;
+ (id)studentDirectoryWithRosterRequirements:(id)a3 locationIDs:(id)a4;
- (CRKASMConcreteUserDirectory)initWithRosterRequirements:(id)a3 queryGenerator:(id)a4;
- (id)iteratorForSearchString:(id)a3 sortingGivenNameFirst:(BOOL)a4 pageSize:(int64_t)a5;
@end

@implementation CRKASMConcreteUserDirectory

- (CRKASMConcreteUserDirectory)initWithRosterRequirements:(id)a3 queryGenerator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CRKASMConcreteUserDirectory;
  v9 = [(CRKASMConcreteUserDirectory *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requirements, a3);
    v11 = MEMORY[0x245D3AAD0](v8);
    queryGenerator = v10->_queryGenerator;
    v10->_queryGenerator = v11;
  }

  return v10;
}

+ (id)studentDirectoryWithRosterRequirements:(id)a3 locationIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__CRKASMConcreteUserDirectory_studentDirectoryWithRosterRequirements_locationIDs___block_invoke;
  v13[3] = &unk_278DC36A0;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 initWithRosterRequirements:v10 queryGenerator:v13];

  return v11;
}

+ (id)instructorDirectoryWithRosterRequirements:(id)a3 locationIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__CRKASMConcreteUserDirectory_instructorDirectoryWithRosterRequirements_locationIDs___block_invoke;
  v13[3] = &unk_278DC36A0;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 initWithRosterRequirements:v10 queryGenerator:v13];

  return v11;
}

- (id)iteratorForSearchString:(id)a3 sortingGivenNameFirst:(BOOL)a4 pageSize:(int64_t)a5
{
  v8 = a3;
  v9 = [(CRKASMConcreteUserDirectory *)self requirements];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__CRKASMConcreteUserDirectory_iteratorForSearchString_sortingGivenNameFirst_pageSize___block_invoke;
  v13[3] = &unk_278DC36C8;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = a5;
  v10 = v8;
  v11 = [CRKASMConcreteUserDirectoryIterator iteratorWithRosterRequirements:v9 queryGenerator:v13];

  return v11;
}

id __86__CRKASMConcreteUserDirectory_iteratorForSearchString_sortingGivenNameFirst_pageSize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queryGenerator];
  v3 = v2[2](v2, *(a1 + 40), *(a1 + 56), *(a1 + 48));

  return v3;
}

@end