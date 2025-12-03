@interface NSURL(CRKProfileAdditions)
+ (id)crk_macOSProfileURL;
@end

@implementation NSURL(CRKProfileAdditions)

+ (id)crk_macOSProfileURL
{
  v7[4] = *MEMORY[0x277D85DE8];
  crk_nonContainerizedHomeDirectoryURL = [MEMORY[0x277CCAA00] crk_nonContainerizedHomeDirectoryURL];
  v1 = MEMORY[0x277CCACA8];
  path = [crk_nonContainerizedHomeDirectoryURL path];
  v7[0] = path;
  v7[1] = @"Library";
  v7[2] = @"Apple Education Configuration";
  v7[3] = @"Configuration.plist";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v1 pathWithComponents:v3];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];

  return v5;
}

@end