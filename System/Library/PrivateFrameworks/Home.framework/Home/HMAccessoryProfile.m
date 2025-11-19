@interface HMAccessoryProfile
@end

@implementation HMAccessoryProfile

void __64__HMAccessoryProfile_AbstractionAdditions__hf_containedServices__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] set];
  v1 = qword_280E02B88;
  qword_280E02B88 = v0;
}

void __71__HMAccessoryProfile_AbstractionAdditions__hf_containedCharacteristics__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] set];
  v1 = qword_280E02B98;
  qword_280E02B98 = v0;
}

void __65__HMAccessoryProfile_HFAdditions___profilesWithNonStandardTileUI__block_invoke_2()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = qword_280E02BB8;
  qword_280E02BB8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HMAccessoryProfile_HFHomeKitObjectConformance__hf_isValidObject__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 profiles];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HMAccessoryProfile_HFHomeKitObjectConformance__hf_isValidObject__block_invoke_2;
  v14[3] = &unk_277DF4178;
  v15 = *(a1 + 32);
  v5 = [v4 na_any:v14];

  if (v5 & 1) != 0 || ([v3 mediaProfile], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "uniqueIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", *(a1 + 32)), v7, v6, (v8))
  {
    v9 = 1;
  }

  else
  {
    v10 = [v3 cameraProfiles];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__HMAccessoryProfile_HFHomeKitObjectConformance__hf_isValidObject__block_invoke_3;
    v12[3] = &unk_277DF8038;
    v13 = *(a1 + 32);
    v9 = [v10 na_any:v12];
  }

  return v9;
}

uint64_t __66__HMAccessoryProfile_HFHomeKitObjectConformance__hf_isValidObject__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __66__HMAccessoryProfile_HFHomeKitObjectConformance__hf_isValidObject__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

@end