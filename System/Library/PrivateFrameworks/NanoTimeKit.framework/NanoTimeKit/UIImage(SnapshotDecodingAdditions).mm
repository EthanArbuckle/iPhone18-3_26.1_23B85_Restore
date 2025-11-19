@interface UIImage(SnapshotDecodingAdditions)
+ (id)imageFromSnapshotResultFileURL:()SnapshotDecodingAdditions;
@end

@implementation UIImage(SnapshotDecodingAdditions)

+ (id)imageFromSnapshotResultFileURL:()SnapshotDecodingAdditions
{
  v3 = a3;
  v4 = [v3 absoluteURL];
  v5 = [v4 path];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (v7)
  {
    ImagesFromPath = CPBitmapCreateImagesFromPath();
    v9 = [MEMORY[0x277D755B8] imageWithCGImage:CFArrayGetValueAtIndex(ImagesFromPath scale:0) orientation:{0, 2.0}];
    if (ImagesFromPath)
    {
      CFRelease(ImagesFromPath);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)imageFromSnapshotResultFileURL:()SnapshotDecodingAdditions .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_22D9C5000, log, OS_LOG_TYPE_FAULT, "UIImage: File %@ exception while reading, removing… %@", &v3, 0x16u);
}

@end