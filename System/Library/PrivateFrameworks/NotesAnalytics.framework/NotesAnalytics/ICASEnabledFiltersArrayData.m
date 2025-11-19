@interface ICASEnabledFiltersArrayData
- (ICASEnabledFiltersArrayData)initWithFilterType:(id)a3 filterValue:(id)a4;
- (id)toDict;
@end

@implementation ICASEnabledFiltersArrayData

- (ICASEnabledFiltersArrayData)initWithFilterType:(id)a3 filterValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICASEnabledFiltersArrayData;
  v9 = [(ICASEnabledFiltersArrayData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_filterType, a3);
    objc_storeStrong(&v10->_filterValue, a4);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"filterType";
  v3 = [(ICASEnabledFiltersArrayData *)self filterType];
  if (v3)
  {
    v4 = [(ICASEnabledFiltersArrayData *)self filterType];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v12[1] = @"filterValue";
  v13[0] = v4;
  v6 = [(ICASEnabledFiltersArrayData *)self filterValue];
  if (v6)
  {
    v7 = [(ICASEnabledFiltersArrayData *)self filterValue];
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