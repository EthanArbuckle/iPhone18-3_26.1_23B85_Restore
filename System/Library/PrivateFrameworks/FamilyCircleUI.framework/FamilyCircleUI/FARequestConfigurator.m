@interface FARequestConfigurator
@end

@implementation FARequestConfigurator

void __74__FARequestConfigurator_FamilyCircleUI__requestForContext_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v10];
    [v6 setHTTPMethod:@"POST"];
    v7 = *(a1 + 32);
    v8 = [v6 copy];
    (*(v7 + 16))(v7, v8, v5);

LABEL_3:
    goto LABEL_6;
  }

  v9 = *(a1 + 32);
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA9B8] fa_familyErrorWithCode:-1008];
    (*(v9 + 16))(v9, 0, v6);
    goto LABEL_3;
  }

  (*(v9 + 16))(v9, 0, v5);
LABEL_6:
}

void __66__FARequestConfigurator_FamilyCircleUI___urlEndpointForEventType___block_invoke()
{
  v21[18] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D081B8];
  v20[0] = @"FACircleEventTypeInitiate";
  v20[1] = @"FACircleEventTypeAcceptInvitation";
  v1 = *MEMORY[0x277D08148];
  v21[0] = v0;
  v21[1] = v1;
  v2 = *MEMORY[0x277D081E0];
  v20[2] = @"FACircleEventTypeAcceptInvitationFromMessages";
  v20[3] = @"FACircleEventTypeManageCircle";
  v3 = *MEMORY[0x277D081A8];
  v21[2] = v2;
  v21[3] = v3;
  v4 = *MEMORY[0x277D08158];
  v20[4] = @"FACircleEventTypeAddFamilyMember";
  v20[5] = @"FACircleEventTypeAddFamilyMemberV3";
  v5 = *MEMORY[0x277D08160];
  v21[4] = v4;
  v21[5] = v5;
  v6 = *MEMORY[0x277D081C0];
  v20[6] = @"FACircleEventTypeInviteViaMessages";
  v20[7] = @"FACircleEventTypeGetFamilyInvitationsUI";
  v7 = *MEMORY[0x277D081B0];
  v21[6] = v6;
  v21[7] = v7;
  v8 = *MEMORY[0x277D08150];
  v20[8] = @"FACircleEventTypeAddMemberInline";
  v20[9] = @"FACircleEventTypeFamilyRepair";
  v9 = *MEMORY[0x277D081A0];
  v21[8] = v8;
  v21[9] = v9;
  v10 = *MEMORY[0x277D081D8];
  v20[10] = @"FACircleEventTypeParentalControls";
  v20[11] = @"FACircleEventTypeConnectWithFamily";
  v11 = *MEMORY[0x277D08178];
  v21[10] = v10;
  v21[11] = v11;
  v12 = *MEMORY[0x277D08190];
  v20[12] = @"FACircleEventTypeFamilyPicker";
  v20[13] = @"FACircleEventTypeMercuryJourney";
  v13 = *MEMORY[0x277D081C8];
  v21[12] = v12;
  v21[13] = v13;
  v14 = *MEMORY[0x277D08188];
  v20[14] = @"FACircleEventTypeViewMemberDetail";
  v20[15] = @"FACircleEventTypeAddRemoteGuardian";
  v15 = *MEMORY[0x277D08168];
  v21[14] = v14;
  v21[15] = v15;
  v20[16] = @"FACircleEventTypeShowPrivacySafetyUI";
  v20[17] = @"FACircleEventTypeFamilyPrivacyDisclosureUI";
  v16 = *MEMORY[0x277D08198];
  v21[16] = *MEMORY[0x277D081E8];
  v21[17] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:18];
  v18 = _urlEndpointForEventType__eventTypeToEndpointMap;
  _urlEndpointForEventType__eventTypeToEndpointMap = v17;

  v19 = *MEMORY[0x277D85DE8];
}

@end