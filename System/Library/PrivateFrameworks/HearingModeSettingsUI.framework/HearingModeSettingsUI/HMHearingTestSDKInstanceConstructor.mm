@interface HMHearingTestSDKInstanceConstructor
+ (id)makeStandardViewController;
+ (id)makeStandardViewControllerAudioGramImportFlowProvider:(id)provider;
+ (id)makeTestResultsControllerWithSample:(id)sample bluetoothAddress:(id)address;
@end

@implementation HMHearingTestSDKInstanceConstructor

+ (id)makeStandardViewController
{
  if (dlopen("/System/Library/PrivateFrameworks/HearingTestUI.framework/HearingTestUI", 1))
  {
    v2 = NSClassFromString(&cfstr_HearingtestuiH.isa);
    none = [NSClassFromString(&cfstr_HearingtestuiH_0.isa) none];
    v4 = objc_alloc_init(MEMORY[0x277CCD4D8]);
    v5 = [(objc_class *)v2 makeStandardViewControllerWithHealthStore:v4 entryPoint:0 options:none articleProvider:0 importFlowProvider:0];
  }

  else
  {
    v6 = hearing_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(HMHearingTestSDKInstanceConstructor *)v6 makeStandardViewController:v7];
    }

    v5 = 0;
  }

  return v5;
}

+ (id)makeStandardViewControllerAudioGramImportFlowProvider:(id)provider
{
  providerCopy = provider;
  if (dlopen("/System/Library/PrivateFrameworks/HearingTestUI.framework/HearingTestUI", 1))
  {
    v4 = NSClassFromString(&cfstr_HearingtestuiH.isa);
    showAudiogramImport = [NSClassFromString(&cfstr_HearingtestuiH_0.isa) showAudiogramImport];
    v6 = objc_alloc_init(MEMORY[0x277CCD4D8]);
    v7 = [(objc_class *)v4 makeStandardViewControllerWithHealthStore:v6 entryPoint:2 options:showAudiogramImport articleProvider:0 importFlowProvider:providerCopy];
  }

  else
  {
    v8 = hearing_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(HMHearingTestSDKInstanceConstructor *)v8 makeStandardViewController:v9];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)makeTestResultsControllerWithSample:(id)sample bluetoothAddress:(id)address
{
  sampleCopy = sample;
  addressCopy = address;
  if (dlopen("/System/Library/PrivateFrameworks/HearingTestUI.framework/HearingTestUI", 1))
  {
    v7 = objc_alloc(NSClassFromString(&cfstr_HearingtestuiH_1.isa));
    v8 = objc_alloc_init(MEMORY[0x277CCD4D8]);
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __92__HMHearingTestSDKInstanceConstructor_makeTestResultsControllerWithSample_bluetoothAddress___block_invoke;
    v20[3] = &unk_2796F1D48;
    v21 = addressCopy;
    v10 = [v7 initWithAudiogram:sampleCopy healthStore:v8 isHearingAssistAvailable:1 application:mEMORY[0x277D75128] deviceBluetoothUUID:v20];

    v11 = v21;
  }

  else
  {
    v11 = hearing_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(HMHearingTestSDKInstanceConstructor *)v11 makeTestResultsControllerWithSample:v12 bluetoothAddress:v13, v14, v15, v16, v17, v18];
    }

    v10 = 0;
  }

  return v10;
}

@end