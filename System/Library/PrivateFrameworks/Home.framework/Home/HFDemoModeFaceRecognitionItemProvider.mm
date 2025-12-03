@interface HFDemoModeFaceRecognitionItemProvider
- (HFDemoModeFaceRecognitionItemProvider)init;
- (id)initForMode:(int64_t)mode home:(id)home;
- (id)reloadItems;
@end

@implementation HFDemoModeFaceRecognitionItemProvider

- (id)initForMode:(int64_t)mode home:(id)home
{
  homeCopy = home;
  v15.receiver = self;
  v15.super_class = HFDemoModeFaceRecognitionItemProvider;
  v8 = [(HFItemProvider *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_mode = mode;
    v10 = [MEMORY[0x277CBEB58] set];
    personItems = v9->_personItems;
    v9->_personItems = v10;

    v12 = objc_alloc_init(HFDemoModeFaceRecognitionDataSource);
    dataSource = v9->_dataSource;
    v9->_dataSource = v12;

    objc_storeStrong(&v9->_home, home);
  }

  return v9;
}

- (HFDemoModeFaceRecognitionItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initForMode_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFDemoModeFaceRecognitionItemProvider.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HFDemoModeFaceRecognitionItemProvider init]", v5}];

  return 0;
}

- (id)reloadItems
{
  mode = [(HFDemoModeFaceRecognitionItemProvider *)self mode];
  dataSource = [(HFDemoModeFaceRecognitionItemProvider *)self dataSource];
  v5 = dataSource;
  if (mode)
  {
    [dataSource knownToHouseholdEntries];
  }

  else
  {
    [dataSource recentsEntries];
  }
  v6 = ;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HFDemoModeFaceRecognitionItemProvider_reloadItems__block_invoke_3;
  v11[3] = &unk_277E00590;
  v11[4] = self;
  v7 = [(HFItemProvider *)self reloadItemsWithObjects:v6 keyAdaptor:&__block_literal_global_197 itemAdaptor:&__block_literal_global_12_8 filter:0 itemMap:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HFDemoModeFaceRecognitionItemProvider_reloadItems__block_invoke_4;
  v10[3] = &unk_277DF6960;
  v10[4] = self;
  v8 = [v7 flatMap:v10];

  return v8;
}

id __52__HFDemoModeFaceRecognitionItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 uuid];

  return v6;
}

id __52__HFDemoModeFaceRecognitionItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 demoRecentsEntry];
  v3 = [v2 uuid];

  return v3;
}

HFDemoModeFaceRecognitionItem *__52__HFDemoModeFaceRecognitionItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [HFDemoModeFaceRecognitionItem alloc];
  v8 = [*(a1 + 32) home];
  v9 = [(HFDemoModeFaceRecognitionItem *)v7 initWithRecentsData:v6 home:v8];

  return v9;
}

id __52__HFDemoModeFaceRecognitionItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 personItems];
  v6 = [v4 addedItems];
  [v5 unionSet:v6];

  v7 = [*(a1 + 32) personItems];
  v8 = [v4 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v9;
}

@end