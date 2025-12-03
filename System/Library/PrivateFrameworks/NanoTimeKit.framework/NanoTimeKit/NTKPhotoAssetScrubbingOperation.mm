@interface NTKPhotoAssetScrubbingOperation
- (BOOL)scrubAssetAtURL:(id)l toDestinationURL:(id)rL error:(id *)error;
@end

@implementation NTKPhotoAssetScrubbingOperation

- (BOOL)scrubAssetAtURL:(id)l toDestinationURL:(id)rL error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v9 = CGImageSourceCreateWithURL(lCopy, 0);
  if (v9)
  {
    v10 = v9;
    v11 = CGImageSourceCopyPropertiesAtIndex(v9, 0, 0);
    v12 = [(__CFDictionary *)v11 objectForKey:*MEMORY[0x277CD3258]];

    if (!v12)
    {
      v23 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = lCopy;
        _os_log_impl(&dword_22D9C5000, v23, OS_LOG_TYPE_INFO, "[Resource Scrubber]: Location data not found in asset: '%@'. Passing through.", buf, 0xCu);
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v21 = [defaultManager copyItemAtURL:lCopy toURL:rLCopy error:error];

      CFRelease(v10);
      goto LABEL_27;
    }

    Type = CGImageSourceGetType(v10);
    if (Type)
    {
      v14 = CGImageDestinationCreateWithURL(rLCopy, Type, 1uLL, 0);
      if (v14)
      {
        v15 = v14;
        Mutable = CGImageMetadataCreateMutable();
        if (Mutable)
        {
          v17 = Mutable;
          v18 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = lCopy;
            _os_log_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_INFO, "[Resource Scrubber]: Found location data in asset: '%@'. Will scrub.", buf, 0xCu);
          }

          v19 = *MEMORY[0x277CD2D50];
          v28[0] = *MEMORY[0x277CD2D58];
          v28[1] = v19;
          v29[0] = v17;
          v29[1] = MEMORY[0x277CBEC38];
          v28[2] = *MEMORY[0x277CD2D80];
          v29[2] = MEMORY[0x277CBEC38];
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
          *buf = 0;
          v21 = CGImageDestinationCopyImageSource(v15, v10, v20, buf);
          CFRelease(v17);
          CFRelease(v15);
          CFRelease(v10);
          v22 = *buf;
          if (*buf)
          {
            if (error)
            {
              v22 = *buf;
              *error = v22;
            }
          }

          goto LABEL_27;
        }

        CFRelease(v15);
        CFRelease(v10);
        if (error)
        {
          v25 = MEMORY[0x277CCA9B8];
          v26 = 1004;
          goto LABEL_25;
        }

LABEL_26:
        v21 = 0;
        goto LABEL_27;
      }

      CFRelease(v10);
      if (!error)
      {
        goto LABEL_26;
      }

      v25 = MEMORY[0x277CCA9B8];
      v26 = 1003;
    }

    else
    {
      CFRelease(v10);
      if (!error)
      {
        goto LABEL_26;
      }

      v25 = MEMORY[0x277CCA9B8];
      v26 = 1002;
    }

LABEL_25:
    [v25 errorWithDomain:@"com.apple.nanotimekit.photos" code:v26 userInfo:0];
    *error = v21 = 0;
LABEL_27:

    goto LABEL_28;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.photos" code:1002 userInfo:0];
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_28:

  return v21;
}

@end