@interface ICASImportData
- (ICASImportData)initWithImportSummary:(id)a3;
- (id)toDict;
@end

@implementation ICASImportData

- (ICASImportData)initWithImportSummary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICASImportData;
  v6 = [(ICASImportData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_importSummary, a3);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"importSummary";
  v3 = [(ICASImportData *)self importSummary];
  if (v3)
  {
    v4 = [(ICASImportData *)self importSummary];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end