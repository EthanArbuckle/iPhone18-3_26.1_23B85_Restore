@interface DSAppPermissionsDescriptor
@end

@implementation DSAppPermissionsDescriptor

uint64_t __78__DSAppPermissionsDescriptor_DigitalSeparationUI__iconAppBundleForPermission___block_invoke()
{
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"com.apple.camera", *MEMORY[0x277D6C120], @"com.apple.mobileslideshow", *MEMORY[0x277D6C1D0], @"com.apple.Music", *MEMORY[0x277D6C1A0], @"com.apple.Home", *MEMORY[0x277D6C258], @"com.apple.mobilecal", *MEMORY[0x277D6C118], @"com.apple.reminders", *MEMORY[0x277D6C1E0], @"com.apple.MobileAddressBook", @"DSContacts", @"com.apple.Health", @"DSHealth", 0}];
  v1 = iconAppBundleForPermission__icons;
  iconAppBundleForPermission__icons = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __78__DSAppPermissionsDescriptor_DigitalSeparationUI__iconAssetNameForPermission___block_invoke()
{
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"camera", *MEMORY[0x277D6C120], @"photos", *MEMORY[0x277D6C1D0], @"music", *MEMORY[0x277D6C1A0], @"home", *MEMORY[0x277D6C258], @"calendar", *MEMORY[0x277D6C118], @"reminders", *MEMORY[0x277D6C1E0], @"contacts", @"DSContacts", @"health", @"DSHealth", @"location", @"DSLocationAlways", @"bluetooth", *MEMORY[0x277D6C110], @"location", @"DSLocationWhenInUse", @"microphone", *MEMORY[0x277D6C1A8], @"localNetwork", @"DSLocalNetwork", @"nearbyInteraction", *MEMORY[0x277D6C1B8], @"sensorKit", *MEMORY[0x277D6C1F8], 0}];
  v1 = iconAssetNameForPermission__icons;
  iconAssetNameForPermission__icons = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __74__DSAppPermissionsDescriptor_DigitalSeparationUI__stringKeyForPermission___block_invoke()
{
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"DSLocationAlways", @"BLUETOOTH", *MEMORY[0x277D6C110], @"LOCATION", @"DSLocationWhenInUse", @"MICROPHONE", *MEMORY[0x277D6C1A8], @"CAMERA", *MEMORY[0x277D6C120], @"PHOTOS", *MEMORY[0x277D6C1D0], @"MEDIA", *MEMORY[0x277D6C1A0], @"HOME", *MEMORY[0x277D6C258], @"CALENDAR", *MEMORY[0x277D6C118], @"REMINDERS", *MEMORY[0x277D6C1E0], @"CONTACTS", @"DSContacts", @"HEALTH", @"DSHealth", @"LOCALNETWORK", @"DSLocalNetwork", @"NEARBYINTERACTION", *MEMORY[0x277D6C1B8], @"SENSORKIT", *MEMORY[0x277D6C1F8], 0}];
  v1 = stringKeyForPermission__icons;
  stringKeyForPermission__icons = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end