@interface HMNetworkConfigurationProfile
@end

@implementation HMNetworkConfigurationProfile

void __91__HMNetworkConfigurationProfile_HFAdditions__hf_localizedDescriptionForAllowedHostPurpose___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v7 = v3;
  if (([v3 unsignedIntegerValue] & v4) != 0)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
    [v5 addObject:v6];

    *(*(*(a1 + 48) + 8) + 24) &= ~[v7 unsignedIntegerValue];
  }
}

void __78__HMNetworkConfigurationProfile_HFAdditions___validCurrentModesForTargetModes__block_invoke_2()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_282524648;
  v3[1] = &unk_282524660;
  v4[0] = &unk_282525870;
  v4[1] = &unk_282525888;
  v3[2] = &unk_2825246A8;
  v4[2] = &unk_2825258A0;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = qword_280E037B0;
  qword_280E037B0 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __72__HMNetworkConfigurationProfile_HFAdditions___localizedStringForPurpose__block_invoke_2()
{
  v17[13] = *MEMORY[0x277D85DE8];
  v16[0] = &unk_2825246C0;
  v15 = _HFLocalizedStringWithDefaultValue(@"HFNetworkConfigurationAllowedHostPurpose_FirmwareUpdate", @"HFNetworkConfigurationAllowedHostPurpose_FirmwareUpdate", 1);
  v17[0] = v15;
  v16[1] = &unk_2825246D8;
  v14 = _HFLocalizedStringWithDefaultValue(@"HFNetworkConfigurationAllowedHostPurpose_AccountManagement", @"HFNetworkConfigurationAllowedHostPurpose_AccountManagement", 1);
  v17[1] = v14;
  v16[2] = &unk_2825246F0;
  v13 = _HFLocalizedStringWithDefaultValue(@"HFNetworkConfigurationAllowedHostPurpose_PeerToPeer", @"HFNetworkConfigurationAllowedHostPurpose_PeerToPeer", 1);
  v17[2] = v13;
  v16[3] = &unk_282524708;
  v0 = _HFLocalizedStringWithDefaultValue(@"HFNetworkConfigurationAllowedHostPurpose_UserEvents", @"HFNetworkConfigurationAllowedHostPurpose_UserEvents", 1);
  v17[3] = v0;
  v16[4] = &unk_282524720;
  v1 = _HFLocalizedStringWithDefaultValue(@"HFNetworkConfigurationAllowedHostPurpose_UserStorage", @"HFNetworkConfigurationAllowedHostPurpose_UserStorage", 1);
  v17[4] = v1;
  v16[5] = &unk_282524738;
  v2 = _HFLocalizedStringWithDefaultValue(@"HFNetworkConfigurationAllowedHostPurpose_Notifications", @"HFNetworkConfigurationAllowedHostPurpose_Notifications", 1);
  v17[5] = v2;
  v16[6] = &unk_282524750;
  v3 = _HFLocalizedStringWithDefaultValue(@"HFNetworkConfigurationAllowedHostPurpose_UsageMetrics", @"HFNetworkConfigurationAllowedHostPurpose_UsageMetrics", 1);
  v17[6] = v3;
  v16[7] = &unk_282524768;
  v4 = _HFLocalizedStringWithDefaultValue(@"HFNetworkConfigurationAllowedHostPurpose_Diagnostics", @"HFNetworkConfigurationAllowedHostPurpose_Diagnostics", 1);
  v17[7] = v4;
  v16[8] = &unk_282524780;
  v5 = _HFLocalizedStringWithDefaultValue(@"HFNetworkConfigurationAllowedHostPurpose_RemoteAccess", @"HFNetworkConfigurationAllowedHostPurpose_RemoteAccess", 1);
  v17[8] = v5;
  v16[9] = &unk_282524798;
  v6 = _HFLocalizedStringWithDefaultValue(@"HFNetworkConfigurationAllowedHostPurpose_HomeEcosystem", @"HFNetworkConfigurationAllowedHostPurpose_HomeEcosystem", 1);
  v17[9] = v6;
  v16[10] = &unk_2825247B0;
  v7 = _HFLocalizedStringWithDefaultValue(@"HFNetworkConfigurationAllowedHostPurpose_TimeSynchronization", @"HFNetworkConfigurationAllowedHostPurpose_TimeSynchronization", 1);
  v17[10] = v7;
  v16[11] = &unk_2825247C8;
  v8 = _HFLocalizedStringWithDefaultValue(@"HFNetworkConfigurationAllowedHostPurpose_ConnectivityChecks", @"HFNetworkConfigurationAllowedHostPurpose_ConnectivityChecks", 1);
  v17[11] = v8;
  v16[12] = &unk_282524630;
  v9 = _HFLocalizedStringWithDefaultValue(@"HFNetworkConfigurationAllowedHostPurpose_Other", @"HFNetworkConfigurationAllowedHostPurpose_Other", 1);
  v17[12] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:13];
  v11 = qword_280E037C0;
  qword_280E037C0 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

@end