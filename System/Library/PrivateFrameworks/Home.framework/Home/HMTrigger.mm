@interface HMTrigger
@end

@implementation HMTrigger

void __66__HMTrigger_NaturalLanguage__hf_naturalLangugeDetailsWithOptions___block_invoke_2()
{
  v0 = objc_alloc_init(HFListFormatter);
  v1 = qword_280E02DD8;
  qword_280E02DD8 = v0;
}

void __84__HMTrigger_NaturalLanguage___hf_naturalLanguageDetailsSentenceElementsWithOptions___block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB70] orderedSet];
  v1 = qword_280E02DE8;
  qword_280E02DE8 = v0;
}

void __45__HMTrigger_HFAdditions__hf_anonymousActions__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] set];
  v1 = qword_280E03338;
  qword_280E03338 = v0;
}

id __45__HMTrigger_HFAdditions__hf_anonymousActions__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isAnonymous])
  {
    v3 = [v2 actions];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __49__HMTrigger_HFAdditions__hf_shouldDisplayTrigger__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __49__HMTrigger_HFAdditions__hf_shouldDisplayTrigger__block_invoke_2(uint64_t a1, void *a2)
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

  if (v5)
  {
    v6 = [v5 characteristic];
    v7 = [v6 service];
    v8 = [v7 hf_isProgrammableSwitch] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

id __48__HMTrigger_HFAdditions__hf_forceDisableReasons__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 authorizationStatus];
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 homeManager];
  v5 = [v4 isAccessAllowedWhenLocked];

  v6 = 2;
  if (v2 != 2)
  {
    v6 = 3;
  }

  if (v5)
  {
    v7 = v2 != 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = MEMORY[0x277D2C900];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v10 = [v8 futureWithResult:v9];

  return v10;
}

uint64_t __52__HMTrigger_HFAdditions__hf_affectsMatterAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HMTrigger_HFAdditions__hf_affectsMatterAccessory___block_invoke_2;
  v6[3] = &unk_277DF6308;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __52__HMTrigger_HFAdditions__hf_affectsMatterAccessory___block_invoke_2(uint64_t a1, void *a2)
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

  if (v6)
  {
    v7 = [v6 commands];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__HMTrigger_HFAdditions__hf_affectsMatterAccessory___block_invoke_3;
    v10[3] = &unk_277DFDA08;
    v11 = *(a1 + 32);
    v8 = [v7 na_any:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __52__HMTrigger_HFAdditions__hf_affectsMatterAccessory___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 isEqual:v5];

  return v6;
}

uint64_t __52__HMTrigger_HFAdditions__hf_affectsCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_affectedCharacteristics];
  v4 = [v3 intersectsSet:*(a1 + 32)];

  return v4;
}

uint64_t __45__HMTrigger_HFAdditions__hf_affectsProfiles___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_affectedProfiles];
  v4 = [v3 intersectsSet:*(a1 + 32)];

  return v4;
}

@end