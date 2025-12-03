@interface TDPNGAsset
- (BOOL)hasProduction;
- (CGSize)sourceImageSizeWithDocument:(id)document;
- (id)sourceImageWithDocument:(id)document;
- (int)exifOrientation;
- (unsigned)fileScaleFactor;
- (void)setFileScaleFactor:(unsigned int)factor;
@end

@implementation TDPNGAsset

- (CGSize)sourceImageSizeWithDocument:(id)document
{
  v37[3] = *MEMORY[0x277D85DE8];
  Width = *MEMORY[0x277CBF3A8];
  Height = *(MEMORY[0x277CBF3A8] + 8);
  valuePtr = 0;
  v6 = [(TDAsset *)self fileURLWithDocument:document];
  if ([-[__CFURL pathExtension](v6 "pathExtension")])
  {
    if ([-[__CFURL pathExtension](v6 "pathExtension")])
    {
      if ([(TDAsset *)self scaleFactor]< 1)
      {
        v7 = 72;
      }

      else
      {
        v7 = 72 * [(TDAsset *)self scaleFactor];
      }

      valuePtr = v7;
      v24 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
      v25 = *MEMORY[0x277CD3618];
      v36[0] = *MEMORY[0x277CD35D0];
      v36[1] = v25;
      v26 = *MEMORY[0x277CBED10];
      v37[0] = v24;
      v37[1] = v26;
      v36[2] = *MEMORY[0x277CD3648];
      v37[2] = *MEMORY[0x277CBED28];
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
      CFRelease(v24);
      v28 = CGImageSourceCreateWithURL(v6, 0);
      if (v28)
      {
        v29 = v28;
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v28, 0, v27);
        if (ImageAtIndex)
        {
          v31 = ImageAtIndex;
          Width = CGImageGetWidth(ImageAtIndex);
          Height = CGImageGetHeight(v31);
          CGImageRelease(v31);
        }

        CFRelease(v29);
        goto LABEL_27;
      }

LABEL_26:
      -[TDPNGAsset _logError:](self, "_logError:", [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to get image dimensions for %@", v6]);
      goto LABEL_27;
    }

    if (!CGSVGDocumentCreateFromURL())
    {
      goto LABEL_26;
    }

    CGSVGDocumentGetCanvasSize();
    v18 = v17;
    v20 = v19;
    scaleFactor = [(TDAsset *)self scaleFactor];
    v22 = scaleFactor;
    fileScaleFactor = [(TDPNGAsset *)self fileScaleFactor];
    if (!scaleFactor)
    {
      v22 = 1.0;
      fileScaleFactor = 1;
    }

    if (!fileScaleFactor)
    {
      fileScaleFactor = [TDAsset scaleFactorFromImageFilename:[(__CFURL *)v6 path]];
    }

    Width = round(v22 * (v18 / fileScaleFactor));
    Height = round(v22 * (v20 / fileScaleFactor));
    CGSVGDocumentRelease();
  }

  else
  {
    v8 = CGPDFDocumentCreateWithURL(v6);
    if (!v8)
    {
      goto LABEL_26;
    }

    v9 = v8;
    scaleFactor2 = [(TDAsset *)self scaleFactor];
    fileScaleFactor2 = [(TDPNGAsset *)self fileScaleFactor];
    if (scaleFactor2)
    {
      v12 = scaleFactor2;
    }

    else
    {
      v12 = 1.0;
    }

    if (scaleFactor2)
    {
      v13 = fileScaleFactor2;
    }

    else
    {
      v13 = 1;
    }

    Page = CGPDFDocumentGetPage(v9, 1uLL);
    BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
    v15 = BoxRect.size.width;
    v16 = BoxRect.size.height;
    if (!v13)
    {
      v13 = [TDAsset scaleFactorFromImageFilename:[(__CFURL *)v6 path:BoxRect.origin.x]];
    }

    Width = round(v12 * (v15 / v13));
    Height = round(v12 * (v16 / v13));
    CGPDFDocumentRelease(v9);
  }

LABEL_27:
  if ([-[TDPNGAsset scaledWidth](self "scaledWidth")] || objc_msgSend(-[TDPNGAsset scaledHeight](self, "scaledHeight"), "intValue"))
  {
    Width = [-[TDPNGAsset scaledWidth](self "scaledWidth")];
    Height = [-[TDPNGAsset scaledHeight](self "scaledHeight")];
  }

  v32 = *MEMORY[0x277D85DE8];
  v33 = Width;
  v34 = Height;
  result.height = v34;
  result.width = v33;
  return result;
}

- (id)sourceImageWithDocument:(id)document
{
  v31[4] = *MEMORY[0x277D85DE8];
  v4 = [(TDAsset *)self fileURLWithDocument:document];
  v5 = CGImageSourceCreateWithURL(v4, 0);
  if ([-[TDPNGAsset scaledWidth](self "scaledWidth")] || objc_msgSend(-[TDPNGAsset scaledHeight](self, "scaledHeight"), "intValue"))
  {
    v6 = *MEMORY[0x277CBED28];
    v7 = *MEMORY[0x277CD3578];
    v30[0] = *MEMORY[0x277CD3568];
    v30[1] = v7;
    v31[0] = v6;
    v31[1] = v6;
    v31[2] = v6;
    v8 = *MEMORY[0x277CD3660];
    v30[2] = *MEMORY[0x277CD3620];
    v30[3] = v8;
    v9 = MEMORY[0x277CCABB0];
    v10 = [-[TDPNGAsset scaledWidth](self "scaledWidth")];
    if (v10 <= [-[TDPNGAsset scaledHeight](self "scaledHeight")])
    {
      scaledHeight = [(TDPNGAsset *)self scaledHeight];
    }

    else
    {
      scaledHeight = [(TDPNGAsset *)self scaledWidth];
    }

    v31[3] = [v9 numberWithInteger:{objc_msgSend(scaledHeight, "intValue")}];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
    if (!v5)
    {
      goto LABEL_19;
    }

    v13 = v12;
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v5, 0, v12);
  }

  else
  {
    v24 = *MEMORY[0x277CBED28];
    v25 = *MEMORY[0x277CD3618];
    v28[0] = *MEMORY[0x277CD3648];
    v28[1] = v25;
    v26 = *MEMORY[0x277CBED10];
    v29[0] = v24;
    v29[1] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    if (!v5)
    {
      goto LABEL_19;
    }

    v13 = v27;
    ThumbnailAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, v27);
  }

  v15 = ThumbnailAtIndex;
  if (!ThumbnailAtIndex)
  {
    CFRelease(v5);
LABEL_19:
    -[TDPNGAsset _logError:](self, "_logError:", [MEMORY[0x277CCACA8] stringWithFormat:@"CoreThemeDefinition: Unable to create image for %@", v4]);
    v21 = 0;
    goto LABEL_20;
  }

  *(&self->super._scaleFactor + 1) = 1;
  v16 = CGImageSourceCopyPropertiesAtIndex(v5, 0, v13);
  if (v16)
  {
    v17 = v16;
    v18 = *MEMORY[0x277CD3410];
    Value = CFDictionaryGetValue(v16, *MEMORY[0x277CD3410]);
    if (Value && !CFNumberGetValue(Value, kCFNumberSInt32Type, &self->super._scaleFactor + 1))
    {
      *(&self->super._scaleFactor + 1) = 1;
    }

    v20 = CFDictionaryGetValue(v17, v18);
    if (v20 && !CFNumberGetValue(v20, kCFNumberSInt32Type, &self->super._scaleFactor + 1))
    {
      *(&self->super._scaleFactor + 1) = 1;
    }

    CFRelease(v17);
  }

  CFRelease(v5);
  v21 = [MEMORY[0x277D02678] imageWithCGImage:v15];
  CGImageRelease(v15);
LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (int)exifOrientation
{
  v2 = *(&self->super._scaleFactor + 1);
  if (!v2)
  {
    v2 = 1;
    *(&self->super._scaleFactor + 1) = 1;
  }

  return v2;
}

- (void)setFileScaleFactor:(unsigned int)factor
{
  [(TDPNGAsset *)self willChangeValueForKey:@"fileScaleFactor"];
  self->_exifOrientation = factor;

  [(TDPNGAsset *)self didChangeValueForKey:@"fileScaleFactor"];
}

- (unsigned)fileScaleFactor
{
  [(TDPNGAsset *)self willAccessValueForKey:@"fileScaleFactor"];
  exifOrientation = self->_exifOrientation;
  [(TDPNGAsset *)self didAccessValueForKey:@"fileScaleFactor"];
  return exifOrientation;
}

- (BOOL)hasProduction
{
  renditions = [(TDPNGAsset *)self renditions];
  if (renditions)
  {
    LOBYTE(renditions) = [-[TDPNGAsset renditions](self "renditions")] != 0;
  }

  return renditions;
}

@end