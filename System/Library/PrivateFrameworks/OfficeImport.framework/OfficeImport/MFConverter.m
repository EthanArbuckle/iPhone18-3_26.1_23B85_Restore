@interface MFConverter
+ (CGRect)boundsInLogicalUnits:(id)a3;
+ (CGRect)boundsInPoints:(id)a3;
+ (id)play:(id)a3 frame:(CGRect)a4 colorMap:(id)a5 fillMap:(id)a6;
+ (id)playToPDF:(id)a3 frame:(CGRect)a4 colorMap:(id)a5 fillMap:(id)a6;
+ (void)fromBinary:(id)a3 toXml:(id)a4;
+ (void)playInCurrentContext:(id)a3 frame:(CGRect)a4 colorMap:(id)a5 fillMap:(id)a6;
@end

@implementation MFConverter

+ (id)playToPDF:(id)a3 frame:(CGRect)a4 colorMap:(id)a5 fillMap:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  if (width > 1024.0)
  {
    height = height * (1024.0 / width);
    width = 1024.0;
  }

  if (height > 1024.0)
  {
    width = width * (1024.0 / height);
    height = 1024.0;
  }

  v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:0];
  if (!v16)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Failed to create target data"];
  }

  v17 = CGDataConsumerCreateWithCFData(v16);
  if (!v17)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Failed to create data consumer"];
  }

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v18 = CGPDFContextCreate(v17, &v22, 0);
  if (!v18)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Failed to create PDF context"];
  }

  CGPDFContextBeginPage(v18, 0);
  MidY = CGRectGetMidY(v22);
  CGContextTranslateCTM(v18, 0.0, MidY);
  CGContextScaleCTM(v18, 1.0, -1.0);
  v20 = CGRectGetMidY(v22);
  CGContextTranslateCTM(v18, 0.0, -v20);
  TCGraphicsPushContext(v18);
  [a1 playInCurrentContext:v13 frame:v14 colorMap:v15 fillMap:{x, y, width, height}];
  if (v18)
  {
    TCGraphicsPopContext();
    CGPDFContextEndPage(v18);
    CGPDFContextClose(v18);
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v16;
}

+ (id)play:(id)a3 frame:(CGRect)a4 colorMap:(id)a5 fillMap:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  if (width != 0.0 && height != 0.0)
  {
LABEL_6:
    v25 = objc_autoreleasePoolPush();
    if ([a1 mapToPdf:v13])
    {
      [a1 playToPDF:v13 frame:v14 colorMap:v15 fillMap:{x, y, width, height}];
    }

    else
    {
      [a1 playToBitmap:v13 frame:v14 colorMap:v15 fillMap:{x, y, width, height}];
    }
    v24 = ;
    objc_autoreleasePoolPop(v25);
    goto LABEL_10;
  }

  [a1 boundsInPoints:v13];
  v20 = NSNonNegativeSizeRect(v16, v17, v18, v19);
  width = v23;
  v24 = 0;
  if (v23 != 0.0)
  {
    height = v22;
    if (v22 != 0.0)
    {
      x = v20;
      y = v21;
      goto LABEL_6;
    }
  }

LABEL_10:

  return v24;
}

+ (void)playInCurrentContext:(id)a3 frame:(CGRect)a4 colorMap:(id)a5 fillMap:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v21 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [[MFGraphicsDevice alloc] initWithCanvas:x, y, width, height];
  [(MFGraphicsDevice *)v14 setColorMap:v12 fillMap:v13];
  v15 = [MFSniffer fileType:v21];
  if (!v15)
  {
    v16 = [[WMFPlayer alloc] initWithGraphicsDevice:v14];
    v17 = [[WMFReader alloc] initWithWMFPlayer:v16];
    goto LABEL_5;
  }

  if (v15 == 1)
  {
    v16 = [[EMFPlayer alloc] initWithGraphicsDevice:v14];
    v17 = [[EMFReader alloc] initWithEMFPlayer:v16];
LABEL_5:
    v18 = v17;

    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  [(WMFReader *)v18 play:v21];
  v20 = UIGraphicsGetCurrentContext();
  CGContextRestoreGState(v20);
}

+ (CGRect)boundsInPoints:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [MFSniffer fileType:v3];
  if (!v8)
  {
    [WMFPlayer boundsInPoints:v3];
    goto LABEL_5;
  }

  if (v8 == 1)
  {
    [EMFPlayer boundsInPoints:v3];
LABEL_5:
    v4 = v9;
    v5 = v10;
    v6 = v11;
    v7 = v12;
  }

  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (CGRect)boundsInLogicalUnits:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [MFSniffer fileType:v3];
  if (!v8)
  {
    [WMFPlayer boundsInLogicalUnits:v3];
    goto LABEL_5;
  }

  if (v8 == 1)
  {
    [EMFPlayer boundsInLogicalUnits:v3];
LABEL_5:
    v4 = v9;
    v5 = v10;
    v6 = v11;
    v7 = v12;
  }

  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (void)fromBinary:(id)a3 toXml:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 pathExtension];
  v7 = [v6 lowercaseString];
  v8 = [v7 isEqualToString:@"emf"];

  if (v8)
  {
    [EMFPlayer fromBinary:v9 toXml:v5];
  }
}

@end