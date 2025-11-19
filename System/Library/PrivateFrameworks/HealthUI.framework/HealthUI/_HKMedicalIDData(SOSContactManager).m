@interface _HKMedicalIDData(SOSContactManager)
- (uint64_t)consolidateSOSAndEmergencyContacts;
@end

@implementation _HKMedicalIDData(SOSContactManager)

- (uint64_t)consolidateSOSAndEmergencyContacts
{
  if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] != 3)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x1E696B968];
    if (os_log_type_enabled(*MEMORY[0x1E696B968], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_1C3942000, v9, OS_LOG_TYPE_DEFAULT, "Contacts access not authorized, skipping SOS contact consolidation", v11, 2u);
    }

    return 0;
  }

  if (!getSOSUtilitiesClass() || ([getSOSUtilitiesClass() isAllowedToMessageSOSContacts] & 1) != 0)
  {
    return 0;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v2 = getSOSContactsManagerClass_softClass;
  v15 = getSOSContactsManagerClass_softClass;
  if (!getSOSContactsManagerClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getSOSContactsManagerClass_block_invoke;
    v11[3] = &unk_1E81B5C18;
    v11[4] = &v12;
    __getSOSContactsManagerClass_block_invoke(v11);
    v2 = v13[3];
  }

  v3 = v2;
  _Block_object_dispose(&v12, 8);
  v4 = objc_alloc_init(v2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [a1 consolidatedSOSContactsWithSOSContactsManager:v4];
  v7 = [v6 mutableCopy];

  [a1 setEmergencyContacts:v7];
  v8 = 1;
  [getSOSUtilitiesClass() setAllowedToMessageSOSContacts:1];

  return v8;
}

@end