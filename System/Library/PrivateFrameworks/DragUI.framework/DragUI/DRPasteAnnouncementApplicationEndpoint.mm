@interface DRPasteAnnouncementApplicationEndpoint
+ (id)homeScreenEndpoint;
- (BOOL)isSimilarToApplicationEndpoint:(id)a3;
- (DRPasteAnnouncementApplicationEndpoint)initWithCoder:(id)a3;
- (DRPasteAnnouncementApplicationEndpoint)initWithLocalizedName:(id)a3 persistentIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DRPasteAnnouncementApplicationEndpoint

- (DRPasteAnnouncementApplicationEndpoint)initWithLocalizedName:(id)a3 persistentIdentifier:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = DRPasteAnnouncementApplicationEndpoint;
  v7 = [(DRPasteAnnouncementEndpoint *)&v11 _initWithLocalizedName:a3];
  if (v7)
  {
    v8 = [v6 copy];
    persistentIdentifier = v7->_persistentIdentifier;
    v7->_persistentIdentifier = v8;
  }

  return v7;
}

+ (id)homeScreenEndpoint
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DRPasteAnnouncementApplicationEndpoint_homeScreenEndpoint__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (homeScreenEndpoint_onceToken != -1)
  {
    dispatch_once(&homeScreenEndpoint_onceToken, block);
  }

  v2 = homeScreenEndpoint_sharedInstance;

  return v2;
}

void __60__DRPasteAnnouncementApplicationEndpoint_homeScreenEndpoint__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v2 localizedStringForKey:@"SYSTEM_APP_NAME" value:@"Home Screen" table:@"Localizable"];

  v3 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:@"com.apple.springboard" allowPlaceholder:0 error:0];
  v4 = [v3 persistentIdentifier];
  v5 = [[DRPasteAnnouncementApplicationEndpoint alloc] initWithLocalizedName:v7 persistentIdentifier:v4];
  v6 = homeScreenEndpoint_sharedInstance;
  homeScreenEndpoint_sharedInstance = v5;

  *(homeScreenEndpoint_sharedInstance + 16) |= 1u;
}

- (DRPasteAnnouncementApplicationEndpoint)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DRPasteAnnouncementApplicationEndpoint;
  v5 = [(DRPasteAnnouncementEndpoint *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persistentIdentifier"];
    persistentIdentifier = v5->_persistentIdentifier;
    v5->_persistentIdentifier = v6;

    *&v5->_flags = *&v5->_flags & 0xFE | [v4 decodeBoolForKey:@"isHomeScreen"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = DRPasteAnnouncementApplicationEndpoint;
  [(DRPasteAnnouncementEndpoint *)&v6 encodeWithCoder:v4];
  persistentIdentifier = self->_persistentIdentifier;
  if (persistentIdentifier)
  {
    [v4 encodeObject:persistentIdentifier forKey:@"persistentIdentifier"];
    [v4 encodeBool:*&self->_flags & 1 forKey:@"isHomeScreen"];
  }
}

- (BOOL)isSimilarToApplicationEndpoint:(id)a3
{
  v3 = a3;
  v4 = [v3 persistentIdentifier];
  LODWORD(self) = [v4 isEqualToData:self->_persistentIdentifier];

  if (self)
  {
    self = objc_alloc(MEMORY[0x277CC1EE8]);
    v6 = [v3 persistentIdentifier];
    v7 = [(DRPasteAnnouncementApplicationEndpoint *)self initWithPersistentIdentifier:v6];

    objc_opt_class();
    LOBYTE(self) = objc_opt_isKindOfClass();
  }

  return self & 1;
}

@end