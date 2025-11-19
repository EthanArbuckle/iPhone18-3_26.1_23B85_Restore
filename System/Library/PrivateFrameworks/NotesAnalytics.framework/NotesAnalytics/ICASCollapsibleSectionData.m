@interface ICASCollapsibleSectionData
- (ICASCollapsibleSectionData)initWithSectionAffordanceExposures:(id)a3 sectionAffordanceUsages:(id)a4;
- (id)toDict;
@end

@implementation ICASCollapsibleSectionData

- (ICASCollapsibleSectionData)initWithSectionAffordanceExposures:(id)a3 sectionAffordanceUsages:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICASCollapsibleSectionData;
  v9 = [(ICASCollapsibleSectionData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sectionAffordanceExposures, a3);
    objc_storeStrong(&v10->_sectionAffordanceUsages, a4);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"sectionAffordanceExposures";
  v3 = [(ICASCollapsibleSectionData *)self sectionAffordanceExposures];
  if (v3)
  {
    v4 = [(ICASCollapsibleSectionData *)self sectionAffordanceExposures];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v12[1] = @"sectionAffordanceUsages";
  v13[0] = v4;
  v6 = [(ICASCollapsibleSectionData *)self sectionAffordanceUsages];
  if (v6)
  {
    v7 = [(ICASCollapsibleSectionData *)self sectionAffordanceUsages];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end