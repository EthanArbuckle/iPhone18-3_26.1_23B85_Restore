@interface CKMultiFrameImage
+ (BOOL)_writeASTCImagesWithCount:(unint64_t)count imageProvider:(id)provider durations:(id)durations toOutputStream:(id)stream error:(id *)error;
+ (BOOL)writeASTCImagesWithCount:(unint64_t)count imageProvider:(id)provider durations:(id)durations toFileURL:(id)l error:(id *)error;
+ (BOOL)writeCPBitmapImagesWithCount:(unint64_t)count imageProvider:(id)provider frameDurations:(id)durations frameScales:(id)scales toFileURL:(id)l error:(id *)error;
+ (id)ASTCDataForImagesWithCount:(unint64_t)count imageProvider:(id)provider durations:(id)durations error:(id *)error;
+ (id)firstFrameImageWithContentsOfCPBitmapURL:(id)l error:(id *)error;
+ (id)multiFrameImageFromOptimizedBitmapAtFileURL:(id)l error:(id *)error;
+ (id)multiFrameImageWithASTCData:(id)data error:(id *)error;
+ (id)multiFrameImageWithContentsOfASTCURL:(id)l error:(id *)error;
+ (id)multiFrameImageWithContentsOfCPBitmapURL:(id)l error:(id *)error;
- (BOOL)writeAsCPBitmapToURL:(id)l error:(id *)error;
- (BOOL)writeAsOptimizedBitmapToFileURL:(id)l error:(id *)error;
- (CKMultiFrameImage)initWithFrameCount:(unint64_t)count frameProvider:(id)provider frameDurations:(id)durations;
- (CKMultiFrameImage)initWithFrameImages:(id)images frameDurations:(id)durations;
- (id)_calculateFrameScales;
- (id)loadAllFrameImages;
@end

@implementation CKMultiFrameImage

- (CKMultiFrameImage)initWithFrameImages:(id)images frameDurations:(id)durations
{
  durationsCopy = durations;
  imagesCopy = images;
  v8 = [imagesCopy count];
  v9 = [imagesCopy copy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__CKMultiFrameImage_initWithFrameImages_frameDurations___block_invoke;
  aBlock[3] = &unk_1E72F3790;
  v16 = v9;
  v10 = v9;
  v11 = _Block_copy(aBlock);
  v12 = [(CKMultiFrameImage *)self initWithFrameCount:v8 frameProvider:v11 frameDurations:durationsCopy];

  v13 = v12;
  return v13;
}

- (CKMultiFrameImage)initWithFrameCount:(unint64_t)count frameProvider:(id)provider frameDurations:(id)durations
{
  providerCopy = provider;
  durationsCopy = durations;
  v10 = durationsCopy;
  if (durationsCopy && [durationsCopy count] != count)
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CKMultiFrameImage initWithFrameCount:frameProvider:frameDurations:];
    }

    selfCopy = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CKMultiFrameImage;
    v11 = [(CKMultiFrameImage *)&v20 init];
    v12 = v11;
    if (v11)
    {
      v11->_frameCount = count;
      v13 = _Block_copy(providerCopy);
      frameProvider = v12->_frameProvider;
      v12->_frameProvider = v13;

      v15 = [v10 copy];
      frameDurations = v12->_frameDurations;
      v12->_frameDurations = v15;
    }

    self = v12;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)loadAllFrameImages
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_frameCount];
  if (self->_frameCount)
  {
    v4 = 0;
    do
    {
      v5 = (*(self->_frameProvider + 2))();
      if (v5)
      {
        [v3 addObject:v5];
      }

      ++v4;
    }

    while (v4 < self->_frameCount);
  }

  v6 = [v3 copy];

  return v6;
}

+ (id)multiFrameImageFromOptimizedBitmapAtFileURL:(id)l error:(id *)error
{
  lCopy = l;
  if (+[CKImageData supportsASTC])
  {
    [CKMultiFrameImage multiFrameImageWithContentsOfASTCURL:lCopy error:error];
  }

  else
  {
    [CKMultiFrameImage multiFrameImageWithContentsOfCPBitmapURL:lCopy error:error];
  }
  v6 = ;

  return v6;
}

- (BOOL)writeAsOptimizedBitmapToFileURL:(id)l error:(id *)error
{
  lCopy = l;
  if (+[CKImageData supportsASTC])
  {
    v7 = [(CKMultiFrameImage *)self writeAsASTCToURL:lCopy error:error];
  }

  else
  {
    v7 = [(CKMultiFrameImage *)self writeAsCPBitmapToURL:lCopy error:error];
  }

  v8 = v7;

  return v8;
}

+ (id)multiFrameImageWithContentsOfASTCURL:(id)l error:(id *)error
{
  lCopy = l;
  if (lCopy)
  {
    v16 = 0;
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:1 error:&v16];
    v8 = v16;
    if (v7)
    {
      v9 = [self multiFrameImageWithASTCData:v7 error:error];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v14 = IMLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithContentsOfASTCURL:error:];
        }
      }
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithContentsOfASTCURL:error:];
      }

      if (error)
      {
        v13 = v8;
        v10 = 0;
        *error = v8;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithContentsOfASTCURL:error:];
    }

    v10 = 0;
  }

  return v10;
}

+ (id)multiFrameImageWithASTCData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = dataCopy;
  if (!dataCopy)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:];
    }

    v9 = 0;
    goto LABEL_19;
  }

  v6 = [dataCopy length];
  v49 = 0;
  v47 = 0;
  v48 = 0;
  if (v6 <= 0x13)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:];
    }

LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v10 = v6;
  [v5 getBytes:&v49 range:{v6 - 4, 4}];
  if (v49 != 1129005385)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:];
    }

    goto LABEL_17;
  }

  [v5 getBytes:&v48 range:{v10 - 12, 8}];
  v11 = v48;
  if (v48 == -1)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:];
    }

    goto LABEL_17;
  }

  v12 = v10 - 20;
  [v5 getBytes:&v47 range:{v10 - 20, 8}];
  if (v10 - 20 < v47)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:];
    }

    goto LABEL_17;
  }

  v7 = [v5 subdataWithRange:v10 - 20 - v47];
  if (!v7)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:];
    }

    v9 = 0;
    goto LABEL_67;
  }

  v14 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:];
    }

    v9 = 0;
    goto LABEL_66;
  }

  v15 = [v14 ckmfi_numberForKey:@"CKAnimatedImageScale"];
  v16 = [v14 ckmfi_numberArrayForKey:@"CKMultiFrameImageFrameScales"];
  v17 = [v14 ckmfi_numberArrayForKey:@"CKAnimatedImageDurations"];
  v18 = v17;
  if (!(v15 | v16))
  {
    v43 = IMLogHandleForCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:];
    }

    goto LABEL_64;
  }

  v39 = v17;
  v40 = v14;
  v41 = v16;
  v42 = v15;
  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11];
  if (!v11)
  {
LABEL_51:
    v35 = [v43 copy];
    v18 = v39;
    v9 = [[CKMultiFrameImage alloc] initWithFrameImages:v35 frameDurations:v39];

    v14 = v40;
    v16 = v41;
    v15 = v42;
    goto LABEL_65;
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    v46 = 0;
    if (v12 - v19 <= 7)
    {
      v36 = IMLogHandleForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:];
      }

      goto LABEL_56;
    }

    [v5 getBytes:&v46 range:{v19, 8}];
    v21 = v19 + 8;
    v22 = v46;
    if (v46 > v12 - v21)
    {
      v36 = IMLogHandleForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:];
      }

LABEL_56:
      v14 = v40;
      v16 = v41;
      v15 = v42;
      v18 = v39;

      goto LABEL_64;
    }

    v23 = [v5 subdataWithRange:{v21, v46}];
    v24 = v23;
    if (!v23)
    {
      v37 = IMLogHandleForCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:];
      }

      goto LABEL_63;
    }

    v25 = CGImageSourceCreateWithData(v23, 0);
    if (!v25)
    {
      v37 = IMLogHandleForCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:];
      }

      goto LABEL_63;
    }

    v26 = v25;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v25, 0, 0);
    CFRelease(v26);
    if (!ImageAtIndex)
    {
      v37 = IMLogHandleForCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:];
      }

LABEL_63:
      v14 = v40;
      v16 = v41;
      v15 = v42;
      v18 = v39;

LABEL_64:
      v9 = 0;
      goto LABEL_65;
    }

    if (v42)
    {
      [v42 doubleValue];
      v29 = v28;
    }

    else
    {
      if (v41)
      {
        mainScreen = [v41 objectAtIndexedSubscript:v20];
        [mainScreen doubleValue];
      }

      else
      {
        v32 = IMLogHandleForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:v45 error:?];
        }

        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen scale];
      }

      v29 = v31;
    }

    v33 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:ImageAtIndex scale:0 orientation:v29];
    if (!v33)
    {
      break;
    }

    v34 = v33;
    v19 = v22 + v21;
    [v43 addObject:v33];
    CGImageRelease(ImageAtIndex);

    if (v11 == ++v20)
    {
      goto LABEL_51;
    }
  }

  v38 = IMLogHandleForCategory();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    +[CKMultiFrameImage(ASTC_Persistence) multiFrameImageWithASTCData:error:];
  }

  v9 = 0;
  v14 = v40;
  v16 = v41;
  v15 = v42;
  v18 = v39;
LABEL_65:

LABEL_66:
LABEL_67:

LABEL_18:
LABEL_19:

  return v9;
}

+ (id)ASTCDataForImagesWithCount:(unint64_t)count imageProvider:(id)provider durations:(id)durations error:(id *)error
{
  v10 = MEMORY[0x1E695DFC0];
  durationsCopy = durations;
  providerCopy = provider;
  outputStreamToMemory = [v10 outputStreamToMemory];
  v19 = 0;
  LOBYTE(self) = [self _writeASTCImagesWithCount:count imageProvider:providerCopy durations:durationsCopy toOutputStream:outputStreamToMemory error:&v19];

  v14 = v19;
  if (self)
  {
    v15 = [outputStreamToMemory propertyForKey:*MEMORY[0x1E695DA30]];
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(ASTC_Persistence) ASTCDataForImagesWithCount:imageProvider:durations:error:];
    }

    if (error)
    {
      v17 = v14;
      v15 = 0;
      *error = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

+ (BOOL)writeASTCImagesWithCount:(unint64_t)count imageProvider:(id)provider durations:(id)durations toFileURL:(id)l error:(id *)error
{
  if (!l)
  {
    return 0;
  }

  v12 = MEMORY[0x1E695DFC0];
  durationsCopy = durations;
  providerCopy = provider;
  v15 = [v12 outputStreamWithURL:l append:0];
  v21 = 0;
  v16 = [self _writeASTCImagesWithCount:count imageProvider:providerCopy durations:durationsCopy toOutputStream:v15 error:&v21];

  v17 = v21;
  if ((v16 & 1) == 0)
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(ASTC_Persistence) writeASTCImagesWithCount:imageProvider:durations:toFileURL:error:];
    }

    if (error)
    {
      v19 = v17;
      *error = v17;
    }
  }

  return v16;
}

+ (BOOL)_writeASTCImagesWithCount:(unint64_t)count imageProvider:(id)provider durations:(id)durations toOutputStream:(id)stream error:(id *)error
{
  v72[3] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  durationsCopy = durations;
  streamCopy = stream;
  v50 = durationsCopy;
  if (!durationsCopy || [durationsCopy count] == count)
  {
    if (!streamCopy)
    {
      v29 = IMLogHandleForCategory();
      v30 = v29;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        +[CKMultiFrameImage(ASTC_Persistence) _writeASTCImagesWithCount:imageProvider:durations:toOutputStream:error:];
        v28 = 0;
        v14 = 0;
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v14 = 0;
      }

LABEL_60:

      if (error)
      {
        v45 = v28;
      }

      else
      {
        v45 = 1;
      }

      if ((v45 & 1) == 0)
      {
        v46 = v14;
        *error = v14;
      }

      goto LABEL_65;
    }

    countCopy = count;
    [streamCopy open];
    v12 = *MEMORY[0x1E696D3E0];
    v71[0] = *MEMORY[0x1E696D8A0];
    v71[1] = v12;
    v72[0] = *MEMORY[0x1E696D3E8];
    v72[1] = &unk_1F04E7E18;
    v71[2] = *MEMORY[0x1E696D400];
    v72[2] = MEMORY[0x1E695E118];
    properties = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:3];
    v52 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
    v13 = objc_alloc_init(MEMORY[0x1E695DF88]);
    if (count)
    {
      v14 = 0;
      v48 = 0;
      v15 = 0;
      v16 = 0.0;
      while (1)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = providerCopy[2](providerCopy, v15);
        v19 = v18;
        if (!v18)
        {
          v31 = IMLogHandleForCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            +[CKMultiFrameImage(ASTC_Persistence) _writeASTCImagesWithCount:imageProvider:durations:toOutputStream:error:];
          }

          goto LABEL_29;
        }

        [v18 scale];
        v21 = v20;
        v22 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        [v52 setObject:v22 atIndexedSubscript:v15];

        if (v15)
        {
          if (vabdd_f64(v21, v16) > 0.01)
          {
            v48 = 1;
          }
        }

        else
        {
          v16 = v21;
        }

        v23 = CGImageDestinationCreateWithData(v13, @"org.khronos.ktx", 1uLL, 0);
        v24 = v19;
        CGImageDestinationAddImage(v23, [v19 CGImage], properties);
        v25 = CGImageDestinationFinalize(v23);
        CFRelease(v23);
        if (!v25)
        {
          v31 = IMLogHandleForCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            +[CKMultiFrameImage(ASTC_Persistence) _writeASTCImagesWithCount:imageProvider:durations:toOutputStream:error:];
          }

LABEL_29:

          streamError = v14;
          goto LABEL_33;
        }

        v70 = [(__CFData *)v13 length];
        if ([streamCopy write:&v70 maxLength:8] != 8)
        {
          break;
        }

        v66 = 0;
        v67 = &v66;
        v68 = 0x2020000000;
        v69 = 0;
        v60 = 0;
        v61 = &v60;
        v62 = 0x3032000000;
        v63 = __Block_byref_object_copy__36;
        v64 = __Block_byref_object_dispose__36;
        v65 = 0;
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __110__CKMultiFrameImage_ASTC_Persistence___writeASTCImagesWithCount_imageProvider_durations_toOutputStream_error___block_invoke;
        v56[3] = &unk_1E72F37B8;
        v57 = streamCopy;
        v58 = &v60;
        v59 = &v66;
        [(__CFData *)v13 enumerateByteRangesUsingBlock:v56];
        v26 = *(v67 + 24);
        if (v26 == 1)
        {
          v27 = v61[5];

          v14 = v27;
        }

        _Block_object_dispose(&v60, 8);
        _Block_object_dispose(&v66, 8);

        objc_autoreleasePoolPop(v17);
        if (v26)
        {
          goto LABEL_34;
        }

        if (countCopy == ++v15)
        {
          goto LABEL_35;
        }
      }

      streamError = [streamCopy streamError];

      v33 = IMLogHandleForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        +[CKMultiFrameImage(ASTC_Persistence) _writeASTCImagesWithCount:imageProvider:durations:toOutputStream:error:];
      }

LABEL_33:
      objc_autoreleasePoolPop(v17);
      v14 = streamError;
    }

    else
    {
      v15 = 0;
      v48 = 0;
      v14 = 0;
      v16 = 0.0;
    }

LABEL_34:
    if (v15 == countCopy)
    {
LABEL_35:
      v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v35 = v34;
      if (v48)
      {
        [v34 setObject:v52 forKeyedSubscript:@"CKMultiFrameImageFrameScales"];
      }

      else
      {
        v36 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
        [v35 setObject:v36 forKeyedSubscript:@"CKAnimatedImageScale"];
      }

      if (durationsCopy)
      {
        [v35 setObject:durationsCopy forKeyedSubscript:@"CKAnimatedImageDurations"];
      }

      v37 = [v35 copy];
      v55 = 0;
      v38 = [MEMORY[0x1E696AE40] writePropertyList:v37 toStream:streamCopy format:200 options:0 error:&v55];
      v39 = v55;
      streamError2 = v39;
      if (v38 <= 0)
      {
        v43 = IMLogHandleForCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          +[CKMultiFrameImage(ASTC_Persistence) _writeASTCImagesWithCount:imageProvider:durations:toOutputStream:error:];
        }
      }

      else
      {

        v60 = v38;
        if ([streamCopy write:&v60 maxLength:8] == 8)
        {
          v60 = countCopy;
          if ([streamCopy write:&v60 maxLength:8] == 8)
          {
            LODWORD(v60) = 1129005385;
            v41 = [streamCopy write:&v60 maxLength:4];
            v28 = v41 == 4;
            if (v41 != 4)
            {
              streamError2 = [streamCopy streamError];

              v42 = IMLogHandleForCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                +[CKMultiFrameImage(ASTC_Persistence) _writeASTCImagesWithCount:imageProvider:durations:toOutputStream:error:];
              }

              goto LABEL_58;
            }

LABEL_59:
            [streamCopy close];

            v30 = properties;
            goto LABEL_60;
          }

          streamError2 = [streamCopy streamError];

          v44 = IMLogHandleForCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            +[CKMultiFrameImage(ASTC_Persistence) _writeASTCImagesWithCount:imageProvider:durations:toOutputStream:error:];
          }
        }

        else
        {
          streamError2 = [streamCopy streamError];

          v44 = IMLogHandleForCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            +[CKMultiFrameImage(ASTC_Persistence) _writeASTCImagesWithCount:imageProvider:durations:toOutputStream:error:];
          }
        }
      }

      v28 = 0;
LABEL_58:
      v14 = streamError2;
      goto LABEL_59;
    }

    v28 = 0;
    goto LABEL_59;
  }

  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    +[CKMultiFrameImage(ASTC_Persistence) _writeASTCImagesWithCount:imageProvider:durations:toOutputStream:error:];
  }

  v28 = 0;
LABEL_65:

  return v28;
}

void __110__CKMultiFrameImage_ASTC_Persistence___writeASTCImagesWithCount_imageProvider_durations_toOutputStream_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if ([*(a1 + 32) write:a2 maxLength:?] != a4)
  {
    v7 = [*(a1 + 32) streamError];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __110__CKMultiFrameImage_ASTC_Persistence___writeASTCImagesWithCount_imageProvider_durations_toOutputStream_error___block_invoke_cold_1();
    }

    *a5 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

+ (id)multiFrameImageWithContentsOfCPBitmapURL:(id)l error:(id *)error
{
  cf = 0;
  path = [l path];
  v22 = 0;
  ImagesFromPath = CPBitmapCreateImagesFromPath();
  v7 = ImagesFromPath;
  if (ImagesFromPath)
  {
    v8 = [ImagesFromPath count];
    if (v8)
    {
      v11 = 0;
      v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __90__CKMultiFrameImage_CPBitmap_Persistence__multiFrameImageWithContentsOfCPBitmapURL_error___block_invoke;
      v18[3] = &unk_1E72F37E0;
      v19 = 0;
      v20 = 0;
      v21 = v12;
      v13 = v12;
      v14 = 0;
      v15 = 0;
      [v7 enumerateObjectsUsingBlock:v18];
      v16 = [[CKMultiFrameImage alloc] initWithFrameImages:v13 frameDurations:0];

      goto LABEL_11;
    }

    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(CPBitmap_Persistence) multiFrameImageWithContentsOfCPBitmapURL:error:];
    }
  }

  else
  {
    v11 = v22;
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(CPBitmap_Persistence) multiFrameImageWithContentsOfCPBitmapURL:error:];
    }

    if (error)
    {
      v10 = v11;
      v16 = 0;
      *error = v11;
      goto LABEL_11;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

void __90__CKMultiFrameImage_CPBitmap_Persistence__multiFrameImageWithContentsOfCPBitmapURL_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = [v9 objectAtIndexedSubscript:a3];
      [v10 doubleValue];
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __90__CKMultiFrameImage_CPBitmap_Persistence__multiFrameImageWithContentsOfCPBitmapURL_error___block_invoke_cold_1();
      }

      v10 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v10 scale];
    }

    v8 = v11;
  }

  v13 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v5 scale:0 orientation:v8];
  [*(a1 + 48) addObject:v13];
}

+ (id)firstFrameImageWithContentsOfCPBitmapURL:(id)l error:(id *)error
{
  path = [l path];
  ImagesFromPath = CPBitmapCreateImagesFromPath();
  v7 = ImagesFromPath;
  if (!ImagesFromPath)
  {
    v11 = 0;
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(CPBitmap_Persistence) multiFrameImageWithContentsOfCPBitmapURL:error:];
    }

    if (error)
    {
      v9 = v11;
      v10 = 0;
      *error = v11;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (![ImagesFromPath count])
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(CPBitmap_Persistence) multiFrameImageWithContentsOfCPBitmapURL:error:];
    }

LABEL_10:
    v10 = 0;
    goto LABEL_14;
  }

  v11 = 0;
  firstObject = [v7 firstObject];
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __90__CKMultiFrameImage_CPBitmap_Persistence__multiFrameImageWithContentsOfCPBitmapURL_error___block_invoke_cold_1();
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v16 = v15;

  v10 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:firstObject scale:0 orientation:v16];
LABEL_14:

  return v10;
}

+ (BOOL)writeCPBitmapImagesWithCount:(unint64_t)count imageProvider:(id)provider frameDurations:(id)durations frameScales:(id)scales toFileURL:(id)l error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  durationsCopy = durations;
  scalesCopy = scales;
  lCopy = l;
  path = [lCopy path];
  if (![path length])
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(CPBitmap_Persistence) writeCPBitmapImagesWithCount:imageProvider:frameDurations:frameScales:toFileURL:error:];
    }

    goto LABEL_15;
  }

  if (durationsCopy && [durationsCopy count] != count)
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(CPBitmap_Persistence) writeCPBitmapImagesWithCount:imageProvider:frameDurations:frameScales:toFileURL:error:];
    }

    goto LABEL_15;
  }

  if ([scalesCopy count] != count)
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(CPBitmap_Persistence) writeCPBitmapImagesWithCount:imageProvider:frameDurations:frameScales:toFileURL:error:];
    }

LABEL_15:

    v16 = 0;
    goto LABEL_50;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 1;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __129__CKMultiFrameImage_CPBitmap_Persistence__writeCPBitmapImagesWithCount_imageProvider_frameDurations_frameScales_toFileURL_error___block_invoke;
  v37[3] = &unk_1E72F3808;
  v37[4] = &v38;
  v37[5] = &v42;
  [scalesCopy enumerateObjectsUsingBlock:v37];
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (*(v43 + 24) == 1)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v39[3]];
    [v29 setObject:v14 forKeyedSubscript:@"CKMultiFrameImageFrameScales"];
  }

  else if (scalesCopy)
  {
    [v29 setObject:scalesCopy forKeyedSubscript:@"CKMultiFrameImageFrameScales"];
  }

  if (durationsCopy)
  {
    [v29 setObject:durationsCopy forKeyedSubscript:@"CKAnimatedImageDurations"];
  }

  v36 = 0;
  v28 = [v29 copy];
  v17 = CPBitmapWriterCreate();
  if (!v17)
  {
    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      +[CKMultiFrameImage(CPBitmap_Persistence) writeCPBitmapImagesWithCount:imageProvider:frameDurations:frameScales:toFileURL:error:];
    }

    v16 = 0;
    goto LABEL_46;
  }

  countCopy = 0;
  if (!count)
  {
    v16 = 1;
    goto LABEL_38;
  }

  v16 = 1;
  do
  {
    v19 = objc_autoreleasePoolPush();
    v20 = providerCopy[2](providerCopy, countCopy);
    v21 = v20;
    if (v20)
    {
      v22 = v20;
      [v21 CGImage];
      if (CPBitmapWriterAddImage())
      {
        v23 = 1;
        goto LABEL_31;
      }

      v24 = IMLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = v36;
        _os_log_error_impl(&dword_19020E000, v24, OS_LOG_TYPE_ERROR, "Failed to add image to cpbitmap file, stopping serialization. Error: %@", buf, 0xCu);
      }
    }

    else
    {
      v24 = IMLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [CKMultiFrameImage(CPBitmap_Persistence) writeCPBitmapImagesWithCount:v35 imageProvider:? frameDurations:? frameScales:? toFileURL:? error:?];
      }
    }

    v16 = 0;
    v23 = 0;
LABEL_31:

    objc_autoreleasePoolPop(v19);
    if (!v23)
    {
      goto LABEL_38;
    }

    ++countCopy;
  }

  while (count != countCopy);
  countCopy = count;
LABEL_38:
  if (countCopy == count && (v16 & 1) != 0)
  {
    if (CPBitmapWriterFinalize())
    {
      v16 = 1;
    }

    else
    {
      v26 = IMLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        +[CKMultiFrameImage(CPBitmap_Persistence) writeCPBitmapImagesWithCount:imageProvider:frameDurations:frameScales:toFileURL:error:];
      }

      v16 = 0;
    }
  }

  CFRelease(v17);
LABEL_46:
  if (error && (v16 & 1) == 0)
  {
    *error = v36;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
LABEL_50:

  return v16 & 1;
}

uint64_t __129__CKMultiFrameImage_CPBitmap_Persistence__writeCPBitmapImagesWithCount_imageProvider_frameDurations_frameScales_toFileURL_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 doubleValue];
  v9 = *(*(a1 + 32) + 8);
  if (a3)
  {
    if (vabdd_f64(*(v9 + 24), v8) > 0.01)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  else
  {
    *(v9 + 24) = v8;
  }

  return result;
}

- (id)_calculateFrameScales
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_frameCount];
  if (self->_frameCount)
  {
    v4 = 0;
    do
    {
      v5 = (*(self->_frameProvider + 2))();
      [v5 scale];
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [v3 addObject:v6];

      ++v4;
    }

    while (v4 < self->_frameCount);
  }

  v7 = [v3 copy];

  return v7;
}

- (BOOL)writeAsCPBitmapToURL:(id)l error:(id *)error
{
  lCopy = l;
  _calculateFrameScales = [(CKMultiFrameImage *)self _calculateFrameScales];
  frameCount = self->_frameCount;
  frameProvider = self->_frameProvider;
  frameDurations = self->_frameDurations;
  v16 = 0;
  v11 = [CKMultiFrameImage writeCPBitmapImagesWithCount:frameCount imageProvider:frameProvider frameDurations:frameDurations frameScales:_calculateFrameScales toFileURL:lCopy error:&v16];

  v12 = v16;
  if (!v11)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CKMultiFrameImage(CPBitmap_Persistence) writeAsCPBitmapToURL:error:];
    }

    if (error)
    {
      v14 = v12;
      *error = v12;
    }
  }

  return v11;
}

- (void)initWithFrameCount:frameProvider:frameDurations:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__CKMultiFrameImage_CPBitmap_Persistence__multiFrameImageWithContentsOfCPBitmapURL_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end