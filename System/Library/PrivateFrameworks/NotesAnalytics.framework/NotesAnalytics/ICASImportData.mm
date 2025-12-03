@interface ICASImportData
- (ICASImportData)initWithImportSummary:(id)summary;
- (id)toDict;
@end

@implementation ICASImportData

- (ICASImportData)initWithImportSummary:(id)summary
{
  summaryCopy = summary;
  v9.receiver = self;
  v9.super_class = ICASImportData;
  v6 = [(ICASImportData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_importSummary, summary);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"importSummary";
  importSummary = [(ICASImportData *)self importSummary];
  if (importSummary)
  {
    importSummary2 = [(ICASImportData *)self importSummary];
  }

  else
  {
    importSummary2 = objc_opt_new();
  }

  v5 = importSummary2;
  v10[0] = importSummary2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end