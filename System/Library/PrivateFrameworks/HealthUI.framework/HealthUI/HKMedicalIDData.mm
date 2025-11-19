@interface HKMedicalIDData
@end

@implementation HKMedicalIDData

void __79___HKMedicalIDData_HKMedicalIDAddressBookBridge__contactKeysToLoadForMedicalID__block_invoke()
{
  v6[7] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v1 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:1];
  v2 = *MEMORY[0x1E695C278];
  v6[0] = *MEMORY[0x1E695C1D0];
  v6[1] = v2;
  v3 = *MEMORY[0x1E695C330];
  v6[2] = *MEMORY[0x1E695C400];
  v6[3] = v3;
  v6[4] = *MEMORY[0x1E695C410];
  v6[5] = v0;
  v6[6] = v1;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:7];
  v5 = contactKeysToLoadForMedicalID_contactKeysToFetch;
  contactKeysToLoadForMedicalID_contactKeysToFetch = v4;
}

void __69___HKMedicalIDData_HKMedicalIDAddressBookBridge___contactKeysToFetch__block_invoke()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v1 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:1];
  v2 = *MEMORY[0x1E695C410];
  v5[0] = *MEMORY[0x1E695C330];
  v5[1] = v2;
  v5[2] = *MEMORY[0x1E695C258];
  v5[3] = v0;
  v5[4] = v1;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v4 = _contactKeysToFetch_contactKeys;
  _contactKeysToFetch_contactKeys = v3;
}

@end