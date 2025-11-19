@interface NSBundle
@end

@implementation NSBundle

void __44__NSBundle_DoNotDisturb__dnd_locationBundle__block_invoke()
{
  v7[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSSystemRootDirectory();
  v7[0] = v1;
  v7[1] = @"System";
  v7[2] = @"Library";
  v7[3] = @"LocationBundles";
  v7[4] = @"DoNotDisturb.bundle";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
  v5 = dnd_locationBundle_bundle;
  dnd_locationBundle_bundle = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __60__NSBundle_DoNotDisturb__dnd_doNotDisturbLocalizationBundle__block_invoke()
{
  v7[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSSystemRootDirectory();
  v7[0] = v1;
  v7[1] = @"System";
  v7[2] = @"Library";
  v7[3] = @"PrivateFrameworks";
  v7[4] = @"DoNotDisturb.framework";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
  v5 = dnd_doNotDisturbLocalizationBundle_bundle;
  dnd_doNotDisturbLocalizationBundle_bundle = v4;

  v6 = *MEMORY[0x277D85DE8];
}

@end