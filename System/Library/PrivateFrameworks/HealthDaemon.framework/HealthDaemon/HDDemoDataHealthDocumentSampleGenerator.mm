@interface HDDemoDataHealthDocumentSampleGenerator
- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5;
@end

@implementation HDDemoDataHealthDocumentSampleGenerator

- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v28.receiver = self;
  v28.super_class = HDDemoDataHealthDocumentSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v28 generateFirstRunObjectsForDemoPerson:a3 firstDate:v8 objectCollection:v9];
  v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [v10 BOOLForKey:@"HealthDemoDataGenerateHealthDocumentsKey"];

  if (v11)
  {
    _HKInitializeLogging();
    v12 = MEMORY[0x277CCC2B8];
    v13 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v8;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "Generating demo CDA documents for date: %@", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 URLForResource:@"demo_cdas" withExtension:@"zip"];
    v16 = [v15 path];
    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x277CCDE88]) initWithPathname:v16];
      v27 = 0;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __107__HDDemoDataHealthDocumentSampleGenerator_generateFirstRunObjectsForDemoPerson_firstDate_objectCollection___block_invoke;
      v24[3] = &unk_278622098;
      v25 = v8;
      v26 = v9;
      v18 = [v17 enumerateEntriesWithError:&v27 block:v24];
      v19 = v27;
      if ((v18 & 1) == 0)
      {
        _HKInitializeLogging();
        v20 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v30 = v17;
          v31 = 2112;
          v32 = v19;
          _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "Error enumerating contents of %@: %@", buf, 0x16u);
        }
      }

      _HKInitializeLogging();
      v21 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "Generation of demo CDA documents completed", buf, 2u);
      }
    }

    else
    {
      _HKInitializeLogging();
      v22 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "Could not locate zip file containing CDA demo documents; aborting generation", buf, 2u);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __107__HDDemoDataHealthDocumentSampleGenerator_generateFirstRunObjectsForDemoPerson_firstDate_objectCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pathname];
  v5 = [v4 lowercaseString];
  v6 = [v5 hasSuffix:@".xml"];

  if (v6)
  {
    v7 = [v3 dataWithMaxSizeBytes:100000 error:0];
    if (v7)
    {
      v8 = *(a1 + 32);
      v11 = 0;
      v9 = [MEMORY[0x277CCD098] CDADocumentSampleWithData:v7 startDate:v8 endDate:v8 metadata:0 validationError:&v11];
      v10 = v11;
      [*(a1 + 40) addObjectFromPhone:v9];
    }
  }
}

@end