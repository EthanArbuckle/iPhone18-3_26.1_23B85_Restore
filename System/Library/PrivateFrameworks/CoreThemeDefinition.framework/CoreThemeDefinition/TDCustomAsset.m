@interface TDCustomAsset
- (CGSize)sourceImageSizeWithDocument:(id)a3;
- (id)sourceImageWithDocument:(id)a3;
@end

@implementation TDCustomAsset

- (CGSize)sourceImageSizeWithDocument:(id)a3
{
  v3 = [objc_msgSend(a3 "customAssetProvider")];

  [v3 customAssetSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)sourceImageWithDocument:(id)a3
{
  v3 = [objc_msgSend(objc_msgSend(a3 "customAssetProvider")];
  v4 = [MEMORY[0x277D02678] imageWithCGImage:v3];
  CGImageRelease(v3);
  return v4;
}

@end