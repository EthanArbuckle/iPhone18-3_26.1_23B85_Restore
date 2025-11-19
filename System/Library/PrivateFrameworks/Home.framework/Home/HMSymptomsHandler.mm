@interface HMSymptomsHandler
@end

@implementation HMSymptomsHandler

void __44__HMSymptomsHandler_HFAdditions__initialize__block_invoke(uint64_t a1)
{
  InstanceMethod = class_getInstanceMethod(*(a1 + 32), sel_symptoms);
  v3 = class_getInstanceMethod(*(a1 + 32), sel_hf_fakeSymptomsImplementationUsedForDebuggingPleaseDontTouchThisItIsFragileSwizzlingIsBadMKay);

  method_exchangeImplementations(InstanceMethod, v3);
}

void __65__HMSymptomsHandler_HFAdditions__hf_symptomTypesSortedByPriority__block_invoke_2()
{
  v0 = qword_280E02DC8;
  qword_280E02DC8 = &unk_282525768;
}

uint64_t __63__HMSymptomsHandler_HFAdditions__hf_symptomArraySortComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__HMSymptomsHandler_HFAdditions__hf_symptomArraySortComparator__block_invoke_2;
  aBlock[3] = &unk_277DF7510;
  v15 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = _Block_copy(aBlock);
  v8 = v7[2](v7, v6);

  v9 = v7[2](v7, v5);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  v12 = [v10 compare:v11];

  return v12;
}

uint64_t __63__HMSymptomsHandler_HFAdditions__hf_symptomArraySortComparator__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "type")}];
  v6 = [v4 indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v3 type] + 1000;
  }

  return v6;
}

@end