@interface DUInformationExtractor
+ (id)sharedExtractor;
+ (id)supportedLanguages;
- (id)mockAttributes;
- (void)requestExtractionOfPersonalIDFromDocument:(id)a3 completion:(id)a4;
@end

@implementation DUInformationExtractor

- (void)requestExtractionOfPersonalIDFromDocument:(id)a3 completion:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (+[_TtC27DocumentUnderstandingClient38DocumentUnderstandingFeatureFlagReader isFoundInUseLLMEnabled])
  {
    v8 = [(DUInformationExtractor *)self mockAttributes];
    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[DUInformationExtractor] Returns DUMockPersonalIDResult from user defaults, skipping XPC call to textunderstandingd", buf, 2u);
      }

      v9 = -[DUPersonalIDResult initWithResultType:attributes:isPartialExtraction:]([DUPersonalIDResult alloc], "initWithResultType:attributes:isPartialExtraction:", [v6 type], v8, 0);
      v7[2](v7, v9, 0);
    }

    else
    {
      v12 = +[DUXPCClient sharedInstance];
      v13 = getpid();
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_249D1F0F0;
      v15[3] = &unk_278FB5158;
      v16 = v7;
      [v12 requestExtractionOfPersonalIDFromDocument:v6 pid:v13 completion:v15];

      v9 = v16;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[DUInformationExtractor] FoundInUseLLM disabled, skipping XPC call to textunderstandingd", buf, 2u);
    }

    v10 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Extraction feature is not enabled";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v8 = [v10 errorWithDomain:@"DUInformationExtractorErrorDomain" code:0 userInfo:v11];

    (v7)[2](v7, 0, v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)mockAttributes
{
  if (qword_280D9DE30 != -1)
  {
    dispatch_once(&qword_280D9DE30, &unk_285CF0750);
  }

  v3 = qword_27EF1AAC0;

  return v3;
}

+ (id)sharedExtractor
{
  if (qword_280D9DE28 != -1)
  {
    dispatch_once(&qword_280D9DE28, &unk_285CF0730);
  }

  v3 = qword_280D9DE20;

  return v3;
}

+ (id)supportedLanguages
{
  if (qword_280D9DE18 != -1)
  {
    dispatch_once(&qword_280D9DE18, &unk_285CF0710);
  }

  v3 = qword_280D9DE10;

  return v3;
}

@end