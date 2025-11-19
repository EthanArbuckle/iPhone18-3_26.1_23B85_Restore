@interface HKEmergencyCardEditMedicalIDFooterTableItem
- (void)setProfileFirstName:(id)a3;
@end

@implementation HKEmergencyCardEditMedicalIDFooterTableItem

- (void)setProfileFirstName:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"MEDICAL_ID_EDIT_%@%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];

  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"MEDICAL_ID_EDIT_APPLE_WATCH_APP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];

  v10 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v7, v5, v9];

  v11 = [v10 rangeOfString:v9];
  v13 = v12;
  v14 = objc_alloc(MEMORY[0x1E696AD40]);
  v20[0] = *MEMORY[0x1E69DB650];
  v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v21[0] = v15;
  v20[1] = *MEMORY[0x1E69DB648];
  v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v21[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18 = [v14 initWithString:v10 attributes:v17];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"bridge:root=ActiveWatch"];
    [v18 addAttribute:*MEMORY[0x1E69DB670] value:v19 range:{v11, v13}];
  }

  [(HKEmergencyCardFooterTableItem *)self setAttributedTitleForFooter:v18];
  [(HKEmergencyCardFooterTableItem *)self setShouldInteractWithURLBlock:&__block_literal_global_7];
}

uint64_t __67__HKEmergencyCardEditMedicalIDFooterTableItem_setProfileFirstName___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6963608];
  v3 = a2;
  v4 = [v2 defaultWorkspace];
  [v4 openSensitiveURL:v3 withOptions:MEMORY[0x1E695E0F8]];

  return 0;
}

@end