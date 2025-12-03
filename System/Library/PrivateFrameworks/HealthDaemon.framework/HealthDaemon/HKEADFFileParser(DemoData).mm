@interface HKEADFFileParser(DemoData)
- (id)initWithDataFileName:()DemoData;
@end

@implementation HKEADFFileParser(DemoData)

- (id)initWithDataFileName:()DemoData
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKEADFFileParser+DemoData.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"fileName != nil"}];
  }

  v6 = HDHealthDaemonFrameworkBundle();
  v7 = [v6 URLForResource:v5 withExtension:@"eadf"];

  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7];
  if (v8)
  {
    v9 = [self initWithData:v8];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogDemoDataCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      absoluteString = [v7 absoluteString];
      *buf = 138543618;
      v17 = absoluteString;
      v18 = 2114;
      selfCopy = self;
      _os_log_fault_impl(&dword_228986000, v10, OS_LOG_TYPE_FAULT, "Bad EADFFile %{public}@,  %{public}@", buf, 0x16u);
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEA90]);
    v9 = [self initWithData:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

@end