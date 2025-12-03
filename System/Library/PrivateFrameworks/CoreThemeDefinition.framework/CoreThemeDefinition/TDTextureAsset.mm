@interface TDTextureAsset
- (CGSize)sourceImageSizeWithDocument:(id)document;
- (id)sourceImageWithDocument:(id)document;
@end

@implementation TDTextureAsset

- (CGSize)sourceImageSizeWithDocument:(id)document
{
  v22[3] = *MEMORY[0x277D85DE8];
  *v20 = *MEMORY[0x277CBF3A8];
  v4 = [(TDAsset *)self fileURLWithDocument:document];
  if ([(TDAsset *)self scaleFactor]< 1)
  {
    v5 = 72;
  }

  else
  {
    v5 = 72 * [(TDAsset *)self scaleFactor];
  }

  valuePtr = v5;
  v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  v7 = *MEMORY[0x277CD3618];
  v21[0] = *MEMORY[0x277CD35D0];
  v21[1] = v7;
  v8 = *MEMORY[0x277CBED10];
  v22[0] = v6;
  v22[1] = v8;
  v21[2] = *MEMORY[0x277CD3648];
  v22[2] = *MEMORY[0x277CBED28];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  CFRelease(v6);
  v10 = CGImageSourceCreateWithURL(v4, 0);
  if (v10)
  {
    v11 = v10;
    v12 = CGImageSourceCopyPropertiesAtIndex(v10, 0, v9);
    if (v12)
    {
      v13 = v12;
      number = 0;
      value = 0;
      if (CFDictionaryGetValueIfPresent(v12, *MEMORY[0x277CD3450], &value) && CFDictionaryGetValueIfPresent(v13, *MEMORY[0x277CD3448], &number))
      {
        CFNumberGetValue(value, kCFNumberCGFloatType, v20);
        CFNumberGetValue(number, kCFNumberCGFloatType, &v20[1]);
      }

      CFRelease(v13);
    }

    CFRelease(v11);
  }

  else
  {
    -[TDTextureAsset _logError:](self, "_logError:", [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to get image dimensions for %@", v4]);
  }

  v15 = v20[1];
  v14 = v20[0];
  v16 = *MEMORY[0x277D85DE8];
  result.height = v15;
  result.width = v14;
  return result;
}

- (id)sourceImageWithDocument:(id)document
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = [(TDAsset *)self fileURLWithDocument:document];
  v5 = CGImageSourceCreateWithURL(v4, 0);
  v21 = *MEMORY[0x277CD3648];
  v22[0] = *MEMORY[0x277CBED28];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  if (!v5)
  {
    goto LABEL_17;
  }

  v7 = v6;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, v6);
  if (!ImageAtIndex)
  {
    CFRelease(v5);
LABEL_17:
    -[TDTextureAsset _logError:](self, "_logError:", [MEMORY[0x277CCACA8] stringWithFormat:@"CoreThemeDefinition: Unable to create image for %@", v4]);
    v17 = 0;
    goto LABEL_18;
  }

  v9 = ImageAtIndex;
  [(TDTextureAsset *)self setExifOrientation:1];
  valuePtr = 0;
  v10 = CGImageSourceCopyPropertiesAtIndex(v5, 0, v7);
  if (v10)
  {
    v11 = v10;
    v12 = *MEMORY[0x277CD3410];
    Value = CFDictionaryGetValue(v10, *MEMORY[0x277CD3410]);
    if (Value)
    {
      if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
      {
        v14 = valuePtr;
      }

      else
      {
        v14 = 1;
      }

      [(TDTextureAsset *)self setExifOrientation:v14];
    }

    v15 = CFDictionaryGetValue(v11, v12);
    if (v15)
    {
      if (CFNumberGetValue(v15, kCFNumberSInt32Type, &valuePtr))
      {
        v16 = valuePtr;
      }

      else
      {
        v16 = 1;
      }

      [(TDTextureAsset *)self setExifOrientation:v16];
    }

    CFRelease(v11);
  }

  v17 = [MEMORY[0x277D02678] imageWithCGImage:v9];
  CGImageRelease(v9);
  CFRelease(v5);
LABEL_18:
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

@end