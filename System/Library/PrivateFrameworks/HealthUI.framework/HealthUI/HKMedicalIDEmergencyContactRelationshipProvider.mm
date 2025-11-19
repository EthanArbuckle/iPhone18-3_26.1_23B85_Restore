@interface HKMedicalIDEmergencyContactRelationshipProvider
- (HKMedicalIDEmergencyContactRelationshipProvider)init;
- (id)localizedRelationshipAtIndex:(int64_t)a3;
@end

@implementation HKMedicalIDEmergencyContactRelationshipProvider

- (HKMedicalIDEmergencyContactRelationshipProvider)init
{
  v36[25] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = HKMedicalIDEmergencyContactRelationshipProvider;
  v2 = [(HKMedicalIDEmergencyContactRelationshipProvider *)&v35 init];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x1E695C720];
    v36[0] = *MEMORY[0x1E695C870];
    v36[1] = v4;
    v5 = *MEMORY[0x1E695C540];
    v36[2] = *MEMORY[0x1E695C8F8];
    v36[3] = v5;
    v6 = *MEMORY[0x1E695C958];
    v36[4] = *MEMORY[0x1E695C970];
    v36[5] = v6;
    v7 = *MEMORY[0x1E695C658];
    v36[6] = *MEMORY[0x1E695C9C0];
    v36[7] = v7;
    v8 = *MEMORY[0x1E695C760];
    v36[8] = *MEMORY[0x1E695C590];
    v36[9] = v8;
    v9 = *MEMORY[0x1E695C950];
    v36[10] = *MEMORY[0x1E695C9E0];
    v36[11] = v9;
    v10 = *MEMORY[0x1E695C868];
    v36[12] = *MEMORY[0x1E695C4C0];
    v36[13] = v10;
    v36[14] = *MEMORY[0x1E695CB68];
    v34 = v2;
    v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v32 = [v33 localizedStringForKey:@"relationship_roommate" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v36[15] = v32;
    v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v30 = [v31 localizedStringForKey:@"relationship_doctor" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v36[16] = v30;
    v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v28 = [v29 localizedStringForKey:@"relationship_emergency" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v36[17] = v28;
    v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v26 = [v27 localizedStringForKey:@"relationship_family_member" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    v36[18] = v26;
    v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v24 = [v25 localizedStringForKey:@"relationship_teacher" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    v36[19] = v24;
    v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v22 = [v23 localizedStringForKey:@"relationship_caretaker" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    v36[20] = v22;
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [v11 localizedStringForKey:@"relationship_guardian" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    v36[21] = v12;
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [v13 localizedStringForKey:@"relationship_social_worker" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    v36[22] = v14;
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = [v15 localizedStringForKey:@"relationship_school" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    v36[23] = v16;
    v3 = v34;
    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v18 = [v17 localizedStringForKey:@"relationship_daycare" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    v36[24] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:25];
    tokens = v34->_tokens;
    v34->_tokens = v19;
  }

  return v3;
}

- (id)localizedRelationshipAtIndex:(int64_t)a3
{
  v3 = MEMORY[0x1E695CEE0];
  v4 = [(NSArray *)self->_tokens objectAtIndexedSubscript:a3];
  v5 = [v3 localizedStringForLabel:v4];

  return v5;
}

@end