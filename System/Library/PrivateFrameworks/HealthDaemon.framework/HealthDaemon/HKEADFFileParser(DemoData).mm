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
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"HKEADFFileParser+DemoData.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"fileName != nil"}];
  }

  v6 = HDHealthDaemonFrameworkBundle();
  v7 = [v6 URLForResource:v5 withExtension:@"eadf"];

  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7];
  if (v8)
  {
    v9 = [a1 initWithData:v8];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogDemoDataCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v14 = [v7 absoluteString];
      *buf = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = a1;
      _os_log_fault_impl(&dword_228986000, v10, OS_LOG_TYPE_FAULT, "Bad EADFFile %{public}@,  %{public}@", buf, 0x16u);
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEA90]);
    v9 = [a1 initWithData:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

@end