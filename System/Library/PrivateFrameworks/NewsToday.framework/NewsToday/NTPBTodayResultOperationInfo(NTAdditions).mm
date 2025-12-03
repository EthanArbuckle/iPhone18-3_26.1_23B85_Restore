@interface NTPBTodayResultOperationInfo(NTAdditions)
- (double)dynamicThumbnailSizeMinimumSizeInPixels;
- (id)assetsDirectoryFileURL;
- (uint64_t)setDynamicThumbnailSizeMinimumSizeInPixels:()NTAdditions;
- (void)setAssetsDirectoryFileURL:()NTAdditions;
@end

@implementation NTPBTodayResultOperationInfo(NTAdditions)

- (void)setAssetsDirectoryFileURL:()NTAdditions
{
  absoluteString = [a3 absoluteString];
  [self setAssetsDirectoryFileURLString:absoluteString];
}

- (id)assetsDirectoryFileURL
{
  assetsDirectoryFileURLString = [self assetsDirectoryFileURLString];
  if (assetsDirectoryFileURLString)
  {
    v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:assetsDirectoryFileURLString];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (double)dynamicThumbnailSizeMinimumSizeInPixels
{
  dynamicThumbnailSizePresetMinimumWidthInPixels = [self dynamicThumbnailSizePresetMinimumWidthInPixels];
  [self dynamicThumbnailSizePresetMinimumHeightInPixels];
  return dynamicThumbnailSizePresetMinimumWidthInPixels;
}

- (uint64_t)setDynamicThumbnailSizeMinimumSizeInPixels:()NTAdditions
{
  [self setDynamicThumbnailSizePresetMinimumWidthInPixels:a2];

  return [self setDynamicThumbnailSizePresetMinimumHeightInPixels:a3];
}

@end