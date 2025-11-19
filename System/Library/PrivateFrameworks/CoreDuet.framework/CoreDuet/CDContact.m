@interface CDContact
@end

@implementation CDContact

void __52___CDContact_BackwardCompatability__typeFromString___block_invoke(uint64_t a1)
{
  v28[24] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v26 = getCNContactPhoneNumbersKey();
  v25 = [v2 normalizedStringKey:v26];
  v27[0] = v25;
  v28[0] = &unk_1F05EE670;
  v3 = *(a1 + 32);
  v24 = getCNContactEmailAddressesKey();
  v23 = [v3 normalizedStringKey:v24];
  v27[1] = v23;
  v28[1] = &unk_1F05EE688;
  v4 = *(a1 + 32);
  v22 = getCNContactInstantMessageAddressesKey();
  v21 = [v4 normalizedStringKey:v22];
  v27[2] = v21;
  v28[2] = &unk_1F05EE6A0;
  v5 = *(a1 + 32);
  v20 = getCNContactGivenNameKey();
  v19 = [v5 normalizedStringKey:v20];
  v27[3] = v19;
  v28[3] = &unk_1F05EE6B8;
  v6 = *(a1 + 32);
  v7 = getCNContactSocialProfilesKey();
  v8 = [v6 normalizedStringKey:v7];
  v27[4] = v8;
  v28[4] = &unk_1F05EE6D0;
  v9 = *(a1 + 32);
  v10 = getCNContactUrlAddressesKey();
  v11 = [v9 normalizedStringKey:v10];
  v27[5] = v11;
  v28[5] = &unk_1F05EE6E8;
  v12 = *(a1 + 32);
  v13 = getCNContactPostalAddressesKey();
  v14 = [v12 normalizedStringKey:v13];
  v27[6] = v14;
  v27[7] = @"phone";
  v28[6] = &unk_1F05EE700;
  v28[7] = &unk_1F05EE670;
  v27[8] = @"phone number";
  v27[9] = @"telelphone";
  v28[8] = &unk_1F05EE670;
  v28[9] = &unk_1F05EE670;
  v27[10] = @"telelphone number";
  v27[11] = @"email";
  v28[10] = &unk_1F05EE670;
  v28[11] = &unk_1F05EE688;
  v27[12] = @"email address";
  v27[13] = @"instantmessage";
  v28[12] = &unk_1F05EE688;
  v28[13] = &unk_1F05EE6A0;
  v27[14] = @"im";
  v27[15] = @"instant message";
  v28[14] = &unk_1F05EE6A0;
  v28[15] = &unk_1F05EE6A0;
  v27[16] = @"name";
  v27[17] = @"twitter";
  v28[16] = &unk_1F05EE6B8;
  v28[17] = &unk_1F05EE6D0;
  v27[18] = @"facebook";
  v27[19] = @"url";
  v28[18] = &unk_1F05EE6D0;
  v28[19] = &unk_1F05EE6E8;
  v27[20] = @"map";
  v27[21] = @"location";
  v28[20] = &unk_1F05EE700;
  v28[21] = &unk_1F05EE700;
  v27[22] = @"map-location";
  v28[22] = &unk_1F05EE700;
  v15 = [*(a1 + 32) normalizedStringKey:0];
  v27[23] = v15;
  v28[23] = &unk_1F05EE718;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:24];
  v17 = typeFromString__lookup;
  typeFromString__lookup = v16;

  v18 = *MEMORY[0x1E69E9840];
}

@end