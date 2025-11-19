@interface HKOntologyLocalizedEducationContent
@end

@implementation HKOntologyLocalizedEducationContent

id __72__HKOntologyLocalizedEducationContent_HDSyncSupport__createWithCodable___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_self();
  v5 = [v3 sectionType];
  v6 = [v3 sectionDatas];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HKOntologyLocalizedEducationContent_HDSyncSupport___createSectionWithCodable___block_invoke;
  v11[3] = &__block_descriptor_40_e30__16__0__HDCodableSectionData_8l;
  v11[4] = v4;
  v7 = [v6 hk_map:v11];

  v8 = [v7 hk_mapToDictionary:&__block_literal_global_387];
  v9 = [objc_alloc(MEMORY[0x277CCD758]) initWithSectionDataTypeMapping:v8 sectionType:v5];

  return v9;
}

id __80__HKOntologyLocalizedEducationContent_HDSyncSupport___createSectionWithCodable___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  objc_opt_self();
  v4 = objc_alloc(MEMORY[0x277CCD748]);
  v5 = [v3 stringValues];
  v6 = [v3 sectionDataType];
  v7 = [v3 version];
  [v3 timestamp];
  v9 = v8;
  v10 = [v3 deleted];

  v11 = [v4 initWithStringValues:v5 sectionDataType:v6 version:v7 timestamp:v10 deleted:v9];

  return v11;
}

void __80__HKOntologyLocalizedEducationContent_HDSyncSupport___createSectionWithCodable___block_invoke_2(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 numberWithLongLong:{objc_msgSend(v7, "sectionDataType")}];
  (a3)[2](v6, v8, v7);
}

@end