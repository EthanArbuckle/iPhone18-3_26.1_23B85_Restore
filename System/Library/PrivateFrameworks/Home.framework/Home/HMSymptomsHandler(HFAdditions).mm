@interface HMSymptomsHandler(HFAdditions)
+ (id)hf_nextSymptomAfterInternetOutageInSortedList:()HFAdditions;
+ (id)hf_symptomArraySortComparator;
+ (id)hf_symptomTypesSortedByPriority;
+ (void)initialize;
- (id)hf_fakeSymptomsImplementationUsedForDebuggingPleaseDontTouchThisItIsFragileSwizzlingIsBadMKay;
- (id)hf_symptomsSortedByPriority;
@end

@implementation HMSymptomsHandler(HFAdditions)

+ (void)initialize
{
  if (objc_opt_class() == self && HFPreferencesInternalDebuggingEnabled())
  {
    v1 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__HMSymptomsHandler_HFAdditions__initialize__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v1;
    if (initialize_onceToken != -1)
    {
      dispatch_once(&initialize_onceToken, block);
    }
  }
}

+ (id)hf_symptomTypesSortedByPriority
{
  if (_MergedGlobals_238 != -1)
  {
    dispatch_once(&_MergedGlobals_238, &__block_literal_global_83_0);
  }

  v1 = qword_280E02DC8;

  return v1;
}

+ (id)hf_symptomArraySortComparator
{
  hf_symptomTypesSortedByPriority = [objc_opt_class() hf_symptomTypesSortedByPriority];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__HMSymptomsHandler_HFAdditions__hf_symptomArraySortComparator__block_invoke;
  aBlock[3] = &unk_277DF7538;
  v5 = hf_symptomTypesSortedByPriority;
  v1 = hf_symptomTypesSortedByPriority;
  v2 = _Block_copy(aBlock);

  return v2;
}

+ (id)hf_nextSymptomAfterInternetOutageInSortedList:()HFAdditions
{
  v3 = a3;
  firstObject = [v3 na_firstObjectPassingTest:&__block_literal_global_150_2];
  if (!firstObject)
  {
    firstObject = [v3 firstObject];
  }

  return firstObject;
}

- (id)hf_symptomsSortedByPriority
{
  symptoms = [self symptoms];
  v3 = +[HFSymptomFixManager sharedManager];
  v4 = [v3 shouldSuppressNetworkDiagnosticsSymptomsForSymptomsHandler:self];

  if (v4)
  {
    v5 = [symptoms na_filter:&__block_literal_global_153];

    symptoms = v5;
  }

  allObjects = [symptoms allObjects];
  hf_symptomArraySortComparator = [objc_opt_class() hf_symptomArraySortComparator];
  v8 = [allObjects sortedArrayUsingComparator:hf_symptomArraySortComparator];

  return v8;
}

- (id)hf_fakeSymptomsImplementationUsedForDebuggingPleaseDontTouchThisItIsFragileSwizzlingIsBadMKay
{
  hf_fakeSymptomsImplementationUsedForDebuggingPleaseDontTouchThisItIsFragileSwizzlingIsBadMKay = [self hf_fakeSymptomsImplementationUsedForDebuggingPleaseDontTouchThisItIsFragileSwizzlingIsBadMKay];
  v3 = [hf_fakeSymptomsImplementationUsedForDebuggingPleaseDontTouchThisItIsFragileSwizzlingIsBadMKay mutableCopy];

  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v4 home];
  v6 = [home hf_mediaProfileContainerForSymptomsHandler:self];

  hf_fakeDebugSymptoms = [v6 hf_fakeDebugSymptoms];
  [v3 unionSet:hf_fakeDebugSymptoms];

  return v3;
}

@end