@interface TDCustomAsset
- (CGSize)sourceImageSizeWithDocument:(id)document;
- (id)sourceImageWithDocument:(id)document;
@end

@implementation TDCustomAsset

- (CGSize)sourceImageSizeWithDocument:(id)document
{
  v3 = [objc_msgSend(document "customAssetProvider")];

  [v3 customAssetSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)sourceImageWithDocument:(id)document
{
  v3 = [objc_msgSend(objc_msgSend(document "customAssetProvider")];
  v4 = [MEMORY[0x277D02678] imageWithCGImage:v3];
  CGImageRelease(v3);
  return v4;
}

@end