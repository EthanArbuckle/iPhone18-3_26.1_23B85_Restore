@interface TDRadiosityImageRenditionSpec
- (id)createCSIRepresentationWithCompression:(BOOL)a3 colorSpaceID:(unint64_t)a4 document:(id)a5;
@end

@implementation TDRadiosityImageRenditionSpec

- (id)createCSIRepresentationWithCompression:(BOOL)a3 colorSpaceID:(unint64_t)a4 document:(id)a5
{
  v6 = a4;
  v7 = a3;
  if (![-[TDRadiosityImageRenditionSpec flattenedImage](self "flattenedImage")] && !objc_msgSend(objc_msgSend(-[TDRadiosityImageRenditionSpec flattenedImage](self, "flattenedImage"), "layerReferences"), "count"))
  {
    return 0;
  }

  v30 = v7;
  v9 = [objc_alloc(MEMORY[0x277D02668]) initWithCanvasSize:0 sliceCount:0 layout:{-[TDRadiosityImageRenditionSpec width](self, "width"), -[TDRadiosityImageRenditionSpec height](self, "height")}];
  v10 = [objc_msgSend(-[TDRadiosityImageRenditionSpec keySpec](self "keySpec")];
  [v9 setTargetPlatform:{objc_msgSend(a5, "targetPlatform")}];
  if ([(TDRadiosityImageRenditionSpec *)self monochrome])
  {
    v11 = 1195456544;
  }

  else
  {
    v11 = 1095911234;
  }

  [v9 setPixelFormat:v11];
  [v9 setName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"ZZZZRadiosityImage-%d.%d.%d", objc_msgSend(-[TDRadiosityImageRenditionSpec keySpec](self, "keySpec"), "scaleFactor"), -[TDRadiosityImageRenditionSpec opaque](self, "opaque"), -[TDRadiosityImageRenditionSpec monochrome](self, "monochrome"))}];
  if (v10 == 1)
  {
    v12 = 3;
  }

  else
  {
    v12 = v6;
  }

  [v9 setColorSpaceID:v12];
  [v9 setScaleFactor:{objc_msgSend(-[TDRadiosityImageRenditionSpec keySpec](self, "keySpec"), "scaleFactor")}];
  [v9 addSliceRect:{*MEMORY[0x277CCA868], *(MEMORY[0x277CCA868] + 8), *(MEMORY[0x277CCA868] + 16), *(MEMORY[0x277CCA868] + 24)}];
  [v9 setBlendMode:0];
  [v9 setOpacity:1.0];
  [v9 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](self, "propertiesAsDictionary")}];
  if ([-[TDRadiosityImageRenditionSpec compressionType](self "compressionType")] && objc_msgSend(-[TDRadiosityImageRenditionSpec compressionType](self, "compressionType"), "identifier") != 2)
  {
    v13 = [-[TDRadiosityImageRenditionSpec compressionType](self "compressionType")];
  }

  else
  {
    v13 = 6;
  }

  [v9 setCompressionType:v13];
  v14 = [objc_alloc(MEMORY[0x277D02660]) initWithPixelWidth:-[TDRadiosityImageRenditionSpec width](self pixelHeight:{"width"), -[TDRadiosityImageRenditionSpec height](self, "height")}];
  [v14 setTargetPlatform:{objc_msgSend(a5, "targetPlatform")}];
  [v14 setPixelFormat:objc_msgSend(v9, "pixelFormat")];
  if ([(TDRadiosityImageRenditionSpec *)self opaque])
  {
    v15 = 6;
  }

  else
  {
    v15 = 2;
  }

  [v14 setSourceAlphaInfo:v15];
  v16 = [v14 bitmapContext];
  [-[TDRadiosityImageRenditionSpec flattenedImage](self "flattenedImage")];
  Data = CGBitmapContextGetData(v16);
  BytesPerRow = CGBitmapContextGetBytesPerRow(v16);
  BitsPerPixel = CGBitmapContextGetBitsPerPixel(v16);
  Width = CGBitmapContextGetWidth(v16);
  Height = CGBitmapContextGetHeight(v16);
  v40[0] = 1;
  v22 = *MEMORY[0x277CBF3A8];
  v38 = 0u;
  v39 = v22;
  *v37 = 0u;
  [MEMORY[0x277D026B8] _doRadiosityBlurOnPixelBuffer:Data bytesPerRow:BytesPerRow bitsPerPixel:BitsPerPixel width:Width height:Height scaleFactor:objc_msgSend(-[TDRadiosityImageRenditionSpec keySpec](self usesGaussianBlur:"keySpec") adjustedSize:{"scaleFactor"), v40, &v39}];
  if (v40[0] == 1)
  {
    [v9 addBitmap:v14];
    v23 = [v9 CSIRepresentationWithCompression:v30];
  }

  else
  {
    v36 = 0;
    v31[0] = 8;
    v31[1] = BitsPerPixel;
    ColorSpace = CGBitmapContextGetColorSpace(v16);
    v33 = 8194;
    v35 = 0;
    v34 = 0;
    v24 = MEMORY[0x24C1B1FF0](v37, v31, 0, 0, 0, 0);
    v25 = objc_alloc(MEMORY[0x277D02660]);
    v26 = [v25 initWithPixelWidth:v39.width pixelHeight:v39.height];
    [v26 setTargetPlatform:{objc_msgSend(a5, "targetPlatform")}];
    [v26 setPixelFormat:objc_msgSend(v9, "pixelFormat")];
    if ([(TDRadiosityImageRenditionSpec *)self opaque])
    {
      v27 = 6;
    }

    else
    {
      v27 = 2;
    }

    [v26 setSourceAlphaInfo:v27];
    v28 = [v26 bitmapContext];
    v41.size = v39;
    v41.origin.x = 0.0;
    v41.origin.y = 0.0;
    CGContextDrawImage(v28, v41, v24);
    [v9 addBitmap:v26];
    v23 = [v9 CSIRepresentationWithCompression:v30];
    CGImageRelease(v24);

    free(v37[0]);
  }

  return v23;
}

@end