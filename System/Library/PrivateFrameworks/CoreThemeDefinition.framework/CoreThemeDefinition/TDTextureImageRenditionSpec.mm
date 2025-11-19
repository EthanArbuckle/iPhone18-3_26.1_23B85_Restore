@interface TDTextureImageRenditionSpec
- (BOOL)isCubeMap;
- (BOOL)updatePackingPropertiesWithDocument:(id)a3;
- (CGImage)_createImageRefWithURL:(id)a3 andDocument:(id)a4 format:(int *)a5;
- (TDTextureRenditionSpec)texture;
- (id)associatedFileModificationDateWithDocument:(id)a3;
- (id)textureFacesWithDocument:(id)a3;
- (int)_pixelFormatOfCGImage:(CGImage *)a3;
@end

@implementation TDTextureImageRenditionSpec

- (TDTextureRenditionSpec)texture
{
  v2 = [(TDTextureImageRenditionSpec *)self textureLevelAssignment];

  return [v2 texture];
}

- (BOOL)isCubeMap
{
  v2 = [-[TDTextureImageRenditionSpec textureLevelAssignment](self "textureLevelAssignment")];

  return [v2 cubeMap];
}

- (id)textureFacesWithDocument:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"textureLevelAssignment.texture = %@ AND textureLevelAssignment.level=%d", -[TDTextureImageRenditionSpec texture](self, "texture"), objc_msgSend(-[TDTextureImageRenditionSpec textureLevelAssignment](self, "textureLevelAssignment"), "level")];
  v9[0] = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"textureLevelAssignment.face.identifier" ascending:1];
  v6 = [a3 objectsForEntity:@"TextureImageRenditionSpec" withPredicate:v5 sortDescriptors:objc_msgSend(MEMORY[0x277CBEA60] withContext:"arrayWithObjects:count:" error:{v9, 1), -[TDTextureImageRenditionSpec managedObjectContext](self, "managedObjectContext"), 0}];
  [v6 count];
  [v6 objectAtIndexedSubscript:0];
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)associatedFileModificationDateWithDocument:(id)a3
{
  v3 = [objc_msgSend(-[TDTextureImageRenditionSpec asset](self "asset")];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];
  if (v5)
  {
    v6 = [v4 attributesOfItemAtPath:v3 error:0];
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

- (int)_pixelFormatOfCGImage:(CGImage *)a3
{
  v4 = [(TDTextureImageRenditionSpec *)self monochrome];
  BitsPerComponent = CGImageGetBitsPerComponent(a3);
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

  if (v4)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (CGImage)_createImageRefWithURL:(id)a3 andDocument:(id)a4 format:(int *)a5
{
  v10 = [(TDTextureImageRenditionSpec *)self asset];
  v11 = [a3 pathExtension];
  if (![v11 length] || objc_msgSend(v11, "caseInsensitiveCompare:", @"PNG") && objc_msgSend(v11, "caseInsensitiveCompare:", @"JPG") && objc_msgSend(v11, "caseInsensitiveCompare:", @"JPEG") && objc_msgSend(v11, "caseInsensitiveCompare:", @"TIFF") && objc_msgSend(v11, "caseInsensitiveCompare:", @"TGA"))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    NSLog(&cfstr_TextureImageAs.isa, v13, v14, a3);
    return 0;
  }

  v15 = [v10 sourceImageWithDocument:a4];
  v16 = [v15 image];
  if (!v15)
  {
    return 0;
  }

  v17 = v16;
  if (a5)
  {
    *a5 = [(TDTextureImageRenditionSpec *)self _pixelFormatOfCGImage:v16];
  }

  CGImageRetain(v17);
  return v17;
}

- (BOOL)updatePackingPropertiesWithDocument:(id)a3
{
  v5 = [(TDTextureImageRenditionSpec *)self asset];
  v11 = 0;
  v10.receiver = self;
  v10.super_class = TDTextureImageRenditionSpec;
  [(TDRenditionSpec *)&v10 updatePackingPropertiesWithDocument:a3];
  v6 = -[TDTextureImageRenditionSpec _createImageRefWithURL:andDocument:format:](self, "_createImageRefWithURL:andDocument:format:", [v5 fileURLWithDocument:a3], a3, &v11);
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