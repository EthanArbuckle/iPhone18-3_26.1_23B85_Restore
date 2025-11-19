@interface NTKBundleIDToComplicationTypesMappingGizmo
@end

@implementation NTKBundleIDToComplicationTypesMappingGizmo

id ___NTKBundleIDToComplicationTypesMappingGizmo_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKComplicationFamilyUtilitarianLargeNarrow_block_invoke_2_lock);
  if (NTKComplicationFamilyUtilitarianLargeNarrow_block_invoke_2___cachedDevice)
  {
    v3 = NTKComplicationFamilyUtilitarianLargeNarrow_block_invoke_2___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != NTKComplicationFamilyUtilitarianLargeNarrow_block_invoke_2___previousCLKDeviceVersion))
  {
    NTKComplicationFamilyUtilitarianLargeNarrow_block_invoke_2___cachedDevice = v2;
    NTKComplicationFamilyUtilitarianLargeNarrow_block_invoke_2___previousCLKDeviceVersion = [v2 version];
    v5 = ___NTKBundleIDToComplicationTypesMappingGizmo_block_invoke_2(NTKComplicationFamilyUtilitarianLargeNarrow_block_invoke_2___previousCLKDeviceVersion, v2);
    v6 = NTKComplicationFamilyUtilitarianLargeNarrow_block_invoke_2_value;
    NTKComplicationFamilyUtilitarianLargeNarrow_block_invoke_2_value = v5;
  }

  v7 = NTKComplicationFamilyUtilitarianLargeNarrow_block_invoke_2_value;
  os_unfair_lock_unlock(&NTKComplicationFamilyUtilitarianLargeNarrow_block_invoke_2_lock);

  return v7;
}

id ___NTKBundleIDToComplicationTypesMappingGizmo_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [&unk_284189E58 mutableCopy];
  v4 = [v2 supportsPDRCapability:710010803];

  if (v4)
  {
    v5 = &unk_28418BD10;
    v6 = @"com.apple.Mind";
  }

  else
  {
    v5 = &unk_28418BD28;
    v6 = @"com.apple.DeepBreathing";
  }

  [v3 setObject:v5 forKeyedSubscript:v6];
  v7 = [v3 copy];

  return v7;
}

@end