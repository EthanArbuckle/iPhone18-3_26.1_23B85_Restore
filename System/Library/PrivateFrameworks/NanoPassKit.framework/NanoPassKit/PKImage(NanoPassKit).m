@interface PKImage(NanoPassKit)
- (id)_npkMemoryMappedImageWithPath:()NanoPassKit;
- (id)npkImageByMemoryMappingDataWithTemporaryFilePrefix:()NanoPassKit;
- (id)resizedImageWithSize:()NanoPassKit shouldCover:;
@end

@implementation PKImage(NanoPassKit)

- (id)npkImageByMemoryMappingDataWithTemporaryFilePrefix:()NanoPassKit
{
  values[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 imageHash];
  v6 = [v5 fileSafeBase64Encoding];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v4, v6];

  v8 = NSTemporaryDirectory();
  v9 = [v8 stringByAppendingPathComponent:v7];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v10 fileExistsAtPath:v9];

  v12 = pk_General_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (!v11)
  {
    if (v13)
    {
      v16 = pk_General_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v9;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: ImageMemoryMap: couldn't find existing CPBitmap image on disk at %@", buf, 0xCu);
      }
    }

LABEL_12:
    v17 = [a1 imageRef];
    if (!v17)
    {
LABEL_21:
      v23 = pk_Payment_log();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (v24)
      {
        v25 = pk_Payment_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v9;
          _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Warning: ImageMemoryMap: Failed to generate mapped image at:%@", buf, 0xCu);
        }
      }

      v15 = a1;
      goto LABEL_26;
    }

    values[0] = v17;
    Default = CFAllocatorGetDefault();
    v19 = CFArrayCreate(Default, values, 1, MEMORY[0x277CBF128]);
    if (CPBitmapWriteImagesToPath())
    {
      v20 = pk_General_log();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

      if (v21)
      {
        v22 = pk_General_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v9;
          _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: ImageMemoryMap: Successfully wrote CPBitmap to %@", buf, 0xCu);
        }
      }

      v15 = [a1 _npkMemoryMappedImageWithPath:v9];
      if (v19)
      {
LABEL_19:
        CFRelease(v19);
      }
    }

    else
    {
      v28 = pk_Payment_log();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

      if (v29)
      {
        v30 = pk_Payment_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v32 = v9;
          v33 = 2112;
          v34 = 0;
          _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Warning: ImageMemoryMap: Unable to write CPBitmap to %@: %@", buf, 0x16u);
        }
      }

      v15 = 0;
      if (v19)
      {
        goto LABEL_19;
      }
    }

    if (v15)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v13)
  {
    v14 = pk_General_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v9;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: ImageMemoryMap: Found existing CPBitmap image on disk at %@", buf, 0xCu);
    }
  }

  v15 = [a1 _npkMemoryMappedImageWithPath:v9];
  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_26:

  v26 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_npkMemoryMappedImageWithPath:()NanoPassKit
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ImagesFromPath = CPBitmapCreateImagesFromPath();
  if (ImagesFromPath)
  {
    v6 = ImagesFromPath;
    if (CFArrayGetCount(ImagesFromPath) == 1)
    {
      v7 = pk_General_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v9 = pk_General_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = v4;
          _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: ImageMemoryMap: Successfully read CPBitmap from %@", buf, 0xCu);
        }
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      v11 = objc_alloc(MEMORY[0x277D37F10]);
      [a1 scale];
      v13 = [v11 initWithCGImage:ValueAtIndex scale:objc_msgSend(a1 orientation:{"orientation"), v12}];
    }

    else
    {
      v17 = pk_Payment_log();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (v18)
      {
        v19 = pk_Payment_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = v4;
          _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Warning: ImageMemoryMap: Array of bitmaps read from %@ is not of size 1", buf, 0xCu);
        }
      }

      v13 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v14 = pk_Payment_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = v4;
        v24 = 2112;
        v25 = 0;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Warning: ImageMemoryMap: Unable to read CPBitmap from %@: %@", buf, 0x16u);
      }
    }

    v13 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)resizedImageWithSize:()NanoPassKit shouldCover:
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  [a1 size];
  if (a5)
  {
    PKSizeAspectFitToCover();
  }

  else
  {
    PKSizeAspectFit();
  }

  v12 = v10;
  v13 = v11;
  [a1 size];
  if (v12 >= v14 || ([a1 size], v13 >= v15))
  {
    v24 = pk_General_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v26 = pk_General_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        [a1 size];
        v28 = v27;
        [a1 size];
        v32 = 138413314;
        v33 = a1;
        v34 = 2048;
        v35 = v28;
        v36 = 2048;
        v37 = v29;
        v38 = 2048;
        v39 = a2;
        v40 = 2048;
        v41 = a3;
        _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: Resizing image %@ from %f x %f to fit/cover %f x %f would upscale, ignoring", &v32, 0x34u);
      }
    }

    v23 = a1;
  }

  else
  {
    v16 = [MEMORY[0x277D37F20] constraintsWithMaxSize:{v12, v13}];
    v17 = pk_General_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_General_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        [a1 size];
        v21 = v20;
        [a1 size];
        v32 = 138413826;
        v33 = a1;
        v34 = 2048;
        v35 = v21;
        v36 = 2048;
        v37 = v22;
        v38 = 2048;
        v39 = v12;
        v40 = 2048;
        v41 = v13;
        v42 = 2048;
        v43 = a2;
        v44 = 2048;
        v45 = a3;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Resizing image %@ from %f x %f to %f x %f to fit/cover %f x %f", &v32, 0x48u);
      }
    }

    v23 = [v16 resizedImage:a1];
  }

  objc_autoreleasePoolPop(v9);
  v30 = *MEMORY[0x277D85DE8];

  return v23;
}

@end