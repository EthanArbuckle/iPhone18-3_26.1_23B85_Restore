@interface TLAlert
@end

@implementation TLAlert

void __62__TLAlert_BulletinBoard__bb_toneLibraryAlertTypeForSectionID___block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"com.apple.mobilemail";
  v3[1] = @"com.apple.MobileSMS";
  v4[0] = &unk_28542E800;
  v4[1] = &unk_28542E818;
  v3[2] = @"com.apple.mobilephone";
  v3[3] = @"com.apple.facetime";
  v4[2] = &unk_28542E830;
  v4[3] = &unk_28542E830;
  v3[4] = @"com.apple.mobilecal";
  v3[5] = @"com.apple.reminders";
  v4[4] = &unk_28542E848;
  v4[5] = &unk_28542E860;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = bb_toneLibraryAlertTypeForSectionID____sectionIDToAlertType;
  bb_toneLibraryAlertTypeForSectionID____sectionIDToAlertType = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end