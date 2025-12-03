@interface TDTextureImageRenditionSpec
- (BOOL)isCubeMap;
- (BOOL)updatePackingPropertiesWithDocument:(id)document;
- (CGImage)_createImageRefWithURL:(id)l andDocument:(id)document format:(int *)format;
- (TDTextureRenditionSpec)texture;
- (id)associatedFileModificationDateWithDocument:(id)document;
- (id)textureFacesWithDocument:(id)document;
- (int)_pixelFormatOfCGImage:(CGImage *)image;
@end

@implementation TDTextureImageRenditionSpec

- (TDTextureRenditionSpec)texture
{
  textureLevelAssignment = [(TDTextureImageRenditionSpec *)self textureLevelAssignment];

  return [textureLevelAssignment texture];
}

- (BOOL)isCubeMap
{
  v2 = [-[TDTextureImageRenditionSpec textureLevelAssignment](self "textureLevelAssignment")];

  return [v2 cubeMap];
}

- (id)textureFacesWithDocument:(id)document
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"textureLevelAssignment.texture = %@ AND textureLevelAssignment.level=%d", -[TDTextureImageRenditionSpec texture](self, "texture"), objc_msgSend(-[TDTextureImageRenditionSpec textureLevelAssignment](self, "textureLevelAssignment"), "level")];
  v9[0] = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"textureLevelAssignment.face.identifier" ascending:1];
  v6 = [document objectsForEntity:@"TextureImageRenditionSpec" withPredicate:v5 sortDescriptors:objc_msgSend(MEMORY[0x277CBEA60] withContext:"arrayWithObjects:count:" error:{v9, 1), -[TDTextureImageRenditionSpec managedObjectContext](self, "managedObjectContext"), 0}];
  [v6 count];
  [v6 objectAtIndexedSubscript:0];
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)associatedFileModificationDateWithDocument:(id)document
{
  v3 = [objc_msgSend(-[TDTextureImageRenditionSpec asset](self "asset")];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];
  if (v5)
  {
    v6 = [defaultManager attributesOfItemAtPath:v3 error:0];
  }

  else
  {
    v6 = 0;
  }

  result = [v6 objectForKey:*MEMORY[0x277CCA150]];
  if (result)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (v8 == 1)
  {
    NSLog(&cfstr_Tdtextureimage.isa, v3);
    v9 = MEMORY[0x277CBEAA8];

    return [v9 distantFuture];
  }

  return result;
}

- (int)_pixelFormatOfCGImage:(CGImage *)image
{
  monochrome = [(TDTextureImageRenditionSpec *)self monochrome];
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  if (BitsPerComponent <= 15)
  {
    v6 = 1195456544;
  }

  else
  {
    v6 = 1195454774;
  }

  if (BitsPerComponent <= 15)
  {
    v7 = 1095911234;
  }

  else
  {
    v7 = 1380401751;
  }

  if (monochrome)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (CGImage)_createImageRefWithURL:(id)l andDocument:(id)document format:(int *)format
{
  asset = [(TDTextureImageRenditionSpec *)self asset];
  pathExtension = [l pathExtension];
  if (![pathExtension length] || objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"PNG") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"JPG") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"JPEG") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"TIFF") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"TGA"))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    NSLog(&cfstr_TextureImageAs.isa, v13, v14, l);
    return 0;
  }

  v15 = [asset sourceImageWithDocument:document];
  image = [v15 image];
  if (!v15)
  {
    return 0;
  }

  v17 = image;
  if (format)
  {
    *format = [(TDTextureImageRenditionSpec *)self _pixelFormatOfCGImage:image];
  }

  CGImageRetain(v17);
  return v17;
}

- (BOOL)updatePackingPropertiesWithDocument:(id)document
{
  asset = [(TDTextureImageRenditionSpec *)self asset];
  v11 = 0;
  v10.receiver = self;
  v10.super_class = TDTextureImageRenditionSpec;
  [(TDRenditionSpec *)&v10 updatePackingPropertiesWithDocument:document];
  v6 = -[TDTextureImageRenditionSpec _createImageRefWithURL:andDocument:format:](self, "_createImageRefWithURL:andDocument:format:", [asset fileURLWithDocument:document], document, &v11);
  AlphaInfo = CUICGImageGetAlphaInfo();
  if (AlphaInfo == 5 || AlphaInfo == 0)
  {
    [(TDTextureImageRenditionSpec *)self setOpaque:1];
  }

  if (CUIImageIsMonochrome())
  {
    [(TDTextureImageRenditionSpec *)self setMonochrome:1];
  }

  CGImageRelease(v6);
  return 1;
}

@end