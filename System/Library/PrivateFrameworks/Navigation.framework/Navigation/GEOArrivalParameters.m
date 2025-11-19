@interface GEOArrivalParameters
@end

@implementation GEOArrivalParameters

void __96__GEOArrivalParameters_MNExtras__regionContainmentTypeForLocation_arrivalRegionType_parameters___block_invoke()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F4EE2A10, &unk_1F4EE2A28, &unk_1F4EE2A40, 0, &unk_1F4EE29F8}];
  v5[1] = &unk_1F4EE2A28;
  v6[0] = v0;
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F4EE2A10, &unk_1F4EE2A40, 0}];
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = regionContainmentTypeForLocation_arrivalRegionType_parameters__excludedTypesLookup;
  regionContainmentTypeForLocation_arrivalRegionType_parameters__excludedTypesLookup = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end