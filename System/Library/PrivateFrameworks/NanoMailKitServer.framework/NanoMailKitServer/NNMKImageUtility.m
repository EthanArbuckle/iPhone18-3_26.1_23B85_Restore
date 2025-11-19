@interface NNMKImageUtility
+ (void)scaleImageFromURL:(id)a3 imageData:(id)a4 destinationURL:(id)a5 destinationData:(id)a6 maxWidth:(float)a7;
@end

@implementation NNMKImageUtility

+ (void)scaleImageFromURL:(id)a3 imageData:(id)a4 destinationURL:(id)a5 destinationData:(id)a6 maxWidth:(float)a7
{
  v35[3] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    v15 = CGImageSourceCreateWithData(v12, 0);
  }

  else
  {
    v15 = CGImageSourceCreateWithURL(v11, 0);
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
        if (v33 < a7)
        {
          a7 = v33;
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
    *&v18 = a7;
    v24 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    v34[2] = *MEMORY[0x277CD2D48];
    v35[1] = v24;
    v35[2] = &unk_286C7BD38;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
    v26 = [v21 dictionaryWithDictionary:v25];

    Count = CGImageSourceGetCount(v16);
    Type = CGImageSourceGetType(v16);
    if (v14)
    {
      v29 = CGImageDestinationCreateWithData(v14, Type, Count, 0);
    }

    else
    {
      v29 = CGImageDestinationCreateWithURL(v13, Type, Count, 0);
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