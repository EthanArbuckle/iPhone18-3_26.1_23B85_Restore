@interface CRKASMConcreteUserDirectory
+ (id)instructorDirectoryWithRosterRequirements:(id)requirements locationIDs:(id)ds;
+ (id)studentDirectoryWithRosterRequirements:(id)requirements locationIDs:(id)ds;
- (CRKASMConcreteUserDirectory)initWithRosterRequirements:(id)requirements queryGenerator:(id)generator;
- (id)iteratorForSearchString:(id)string sortingGivenNameFirst:(BOOL)first pageSize:(int64_t)size;
@end

@implementation CRKASMConcreteUserDirectory

- (CRKASMConcreteUserDirectory)initWithRosterRequirements:(id)requirements queryGenerator:(id)generator
{
  requirementsCopy = requirements;
  generatorCopy = generator;
  v14.receiver = self;
  v14.super_class = CRKASMConcreteUserDirectory;
  v9 = [(CRKASMConcreteUserDirectory *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requirements, requirements);
    v11 = MEMORY[0x245D3AAD0](generatorCopy);
    queryGenerator = v10->_queryGenerator;
    v10->_queryGenerator = v11;
  }

  return v10;
}

+ (id)studentDirectoryWithRosterRequirements:(id)requirements locationIDs:(id)ds
{
  requirementsCopy = requirements;
  dsCopy = ds;
  v8 = [self alloc];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__CRKASMConcreteUserDirectory_studentDirectoryWithRosterRequirements_locationIDs___block_invoke;
  v13[3] = &unk_278DC36A0;
  v14 = requirementsCopy;
  v15 = dsCopy;
  v9 = dsCopy;
  v10 = requirementsCopy;
  v11 = [v8 initWithRosterRequirements:v10 queryGenerator:v13];

  return v11;
}

+ (id)instructorDirectoryWithRosterRequirements:(id)requirements locationIDs:(id)ds
{
  requirementsCopy = requirements;
  dsCopy = ds;
  v8 = [self alloc];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__CRKASMConcreteUserDirectory_instructorDirectoryWithRosterRequirements_locationIDs___block_invoke;
  v13[3] = &unk_278DC36A0;
  v14 = requirementsCopy;
  v15 = dsCopy;
  v9 = dsCopy;
  v10 = requirementsCopy;
  v11 = [v8 initWithRosterRequirements:v10 queryGenerator:v13];

  return v11;
}

- (id)iteratorForSearchString:(id)string sortingGivenNameFirst:(BOOL)first pageSize:(int64_t)size
{
  stringCopy = string;
  requirements = [(CRKASMConcreteUserDirectory *)self requirements];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__CRKASMConcreteUserDirectory_iteratorForSearchString_sortingGivenNameFirst_pageSize___block_invoke;
  v13[3] = &unk_278DC36C8;
  v13[4] = self;
  v14 = stringCopy;
  firstCopy = first;
  sizeCopy = size;
  v10 = stringCopy;
  v11 = [CRKASMConcreteUserDirectoryIterator iteratorWithRosterRequirements:requirements queryGenerator:v13];

  return v11;
}

id __86__CRKASMConcreteUserDirectory_iteratorForSearchString_sortingGivenNameFirst_pageSize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queryGenerator];
  v3 = v2[2](v2, *(a1 + 40), *(a1 + 56), *(a1 + 48));

  return v3;
}

@end