@interface ICASCollapsibleSectionData
- (ICASCollapsibleSectionData)initWithSectionAffordanceExposures:(id)exposures sectionAffordanceUsages:(id)usages;
- (id)toDict;
@end

@implementation ICASCollapsibleSectionData

- (ICASCollapsibleSectionData)initWithSectionAffordanceExposures:(id)exposures sectionAffordanceUsages:(id)usages
{
  exposuresCopy = exposures;
  usagesCopy = usages;
  v12.receiver = self;
  v12.super_class = ICASCollapsibleSectionData;
  v9 = [(ICASCollapsibleSectionData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sectionAffordanceExposures, exposures);
    objc_storeStrong(&v10->_sectionAffordanceUsages, usages);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"sectionAffordanceExposures";
  sectionAffordanceExposures = [(ICASCollapsibleSectionData *)self sectionAffordanceExposures];
  if (sectionAffordanceExposures)
  {
    sectionAffordanceExposures2 = [(ICASCollapsibleSectionData *)self sectionAffordanceExposures];
  }

  else
  {
    sectionAffordanceExposures2 = objc_opt_new();
  }

  v5 = sectionAffordanceExposures2;
  v12[1] = @"sectionAffordanceUsages";
  v13[0] = sectionAffordanceExposures2;
  sectionAffordanceUsages = [(ICASCollapsibleSectionData *)self sectionAffordanceUsages];
  if (sectionAffordanceUsages)
  {
    sectionAffordanceUsages2 = [(ICASCollapsibleSectionData *)self sectionAffordanceUsages];
  }

  else
  {
    sectionAffordanceUsages2 = objc_opt_new();
  }

  v8 = sectionAffordanceUsages2;
  v13[1] = sectionAffordanceUsages2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end