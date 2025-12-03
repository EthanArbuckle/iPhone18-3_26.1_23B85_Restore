@interface MFConverter
+ (CGRect)boundsInLogicalUnits:(id)units;
+ (CGRect)boundsInPoints:(id)points;
+ (id)play:(id)play frame:(CGRect)frame colorMap:(id)map fillMap:(id)fillMap;
+ (id)playToPDF:(id)f frame:(CGRect)frame colorMap:(id)map fillMap:(id)fillMap;
+ (void)fromBinary:(id)binary toXml:(id)xml;
+ (void)playInCurrentContext:(id)context frame:(CGRect)frame colorMap:(id)map fillMap:(id)fillMap;
@end

@implementation MFConverter

+ (id)playToPDF:(id)f frame:(CGRect)frame colorMap:(id)map fillMap:(id)fillMap
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  fCopy = f;
  mapCopy = map;
  fillMapCopy = fillMap;
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
  [self playInCurrentContext:fCopy frame:mapCopy colorMap:fillMapCopy fillMap:{x, y, width, height}];
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

+ (id)play:(id)play frame:(CGRect)frame colorMap:(id)map fillMap:(id)fillMap
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  playCopy = play;
  mapCopy = map;
  fillMapCopy = fillMap;
  if (width != 0.0 && height != 0.0)
  {
LABEL_6:
    v25 = objc_autoreleasePoolPush();
    if ([self mapToPdf:playCopy])
    {
      [self playToPDF:playCopy frame:mapCopy colorMap:fillMapCopy fillMap:{x, y, width, height}];
    }

    else
    {
      [self playToBitmap:playCopy frame:mapCopy colorMap:fillMapCopy fillMap:{x, y, width, height}];
    }
    v24 = ;
    objc_autoreleasePoolPop(v25);
    goto LABEL_10;
  }

  [self boundsInPoints:playCopy];
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

+ (void)playInCurrentContext:(id)context frame:(CGRect)frame colorMap:(id)map fillMap:(id)fillMap
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  contextCopy = context;
  mapCopy = map;
  fillMapCopy = fillMap;
  height = [[MFGraphicsDevice alloc] initWithCanvas:x, y, width, height];
  [(MFGraphicsDevice *)height setColorMap:mapCopy fillMap:fillMapCopy];
  v15 = [MFSniffer fileType:contextCopy];
  if (!v15)
  {
    v16 = [[WMFPlayer alloc] initWithGraphicsDevice:height];
    v17 = [[WMFReader alloc] initWithWMFPlayer:v16];
    goto LABEL_5;
  }

  if (v15 == 1)
  {
    v16 = [[EMFPlayer alloc] initWithGraphicsDevice:height];
    v17 = [[EMFReader alloc] initWithEMFPlayer:v16];
LABEL_5:
    v18 = v17;

    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  [(WMFReader *)v18 play:contextCopy];
  v20 = UIGraphicsGetCurrentContext();
  CGContextRestoreGState(v20);
}

+ (CGRect)boundsInPoints:(id)points
{
  pointsCopy = points;
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [MFSniffer fileType:pointsCopy];
  if (!v8)
  {
    [WMFPlayer boundsInPoints:pointsCopy];
    goto LABEL_5;
  }

  if (v8 == 1)
  {
    [EMFPlayer boundsInPoints:pointsCopy];
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

+ (CGRect)boundsInLogicalUnits:(id)units
{
  unitsCopy = units;
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [MFSniffer fileType:unitsCopy];
  if (!v8)
  {
    [WMFPlayer boundsInLogicalUnits:unitsCopy];
    goto LABEL_5;
  }

  if (v8 == 1)
  {
    [EMFPlayer boundsInLogicalUnits:unitsCopy];
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

+ (void)fromBinary:(id)binary toXml:(id)xml
{
  binaryCopy = binary;
  xmlCopy = xml;
  pathExtension = [binaryCopy pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  v8 = [lowercaseString isEqualToString:@"emf"];

  if (v8)
  {
    [EMFPlayer fromBinary:binaryCopy toXml:xmlCopy];
  }
}

@end