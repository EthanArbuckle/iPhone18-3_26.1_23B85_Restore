@interface NNMKImageUtility
+ (void)scaleImageFromURL:(id)l imageData:(id)data destinationURL:(id)rL destinationData:(id)destinationData maxWidth:(float)width;
@end

@implementation NNMKImageUtility

+ (void)scaleImageFromURL:(id)l imageData:(id)data destinationURL:(id)rL destinationData:(id)destinationData maxWidth:(float)width
{
  v35[3] = *MEMORY[0x277D85DE8];
  lCopy = l;
  dataCopy = data;
  rLCopy = rL;
  destinationDataCopy = destinationData;
  if (dataCopy)
  {
    v15 = CGImageSourceCreateWithData(dataCopy, 0);
  }

  else
  {
    v15 = CGImageSourceCreateWithURL(lCopy, 0);
  }

  v16 = v15;
  if (v15)
  {
    v17 = CGImageSourceCopyPropertiesAtIndex(v15, 0, 0);
    if (v17)
    {
      v19 = v17;
      Value = CFDictionaryGetValue(v17, *MEMORY[0x277CD3450]);
      if (Value)
      {
        v33 = 0.0;
        CFNumberGetValue(Value, kCFNumberCGFloatType, &v33);
        if (v33 < width)
        {
          width = v33;
        }
      }

      CFRelease(v19);
    }

    v21 = MEMORY[0x277CBEB38];
    v22 = *MEMORY[0x277CD3618];
    v35[0] = MEMORY[0x277CBEC28];
    v23 = *MEMORY[0x277CD2D40];
    v34[0] = v22;
    v34[1] = v23;
    *&v18 = width;
    v24 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    v34[2] = *MEMORY[0x277CD2D48];
    v35[1] = v24;
    v35[2] = &unk_286C7BD38;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
    v26 = [v21 dictionaryWithDictionary:v25];

    Count = CGImageSourceGetCount(v16);
    Type = CGImageSourceGetType(v16);
    if (destinationDataCopy)
    {
      v29 = CGImageDestinationCreateWithData(destinationDataCopy, Type, Count, 0);
    }

    else
    {
      v29 = CGImageDestinationCreateWithURL(rLCopy, Type, Count, 0);
    }

    v30 = v29;
    if (v29)
    {
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          CGImageDestinationAddImageFromSource(v30, v16, i, v26);
        }
      }

      CGImageDestinationFinalize(v30);
      CFRelease(v30);
    }

    CFRelease(v16);
  }

  v32 = *MEMORY[0x277D85DE8];
}

@end