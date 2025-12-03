@interface OUInternalInfoDumper
+ (id)serailizeARFrameMeta:(id)meta;
- (OUInternalInfoDumper)init;
- (id)encodeDepthPng:(__CVBuffer *)png;
- (id)encodePng:(__CVBuffer *)png;
- (id)encodeRGBPng:(__CVBuffer *)png withWidth:(unint64_t)width Height:(unint64_t)height;
- (id)getDebugInfoWithConfig:(id)config OnlineDebug:(id)debug;
- (void)createDirectory:(id)directory;
- (void)dumpARFrame:(__n128)frame withKeyFrames:(__n128)frames withCameraPose:(__n128)pose;
- (void)dumpLastARFrameImage;
- (void)dumpObjects:(id)objects;
- (void)logMemory:(unint64_t)memory;
- (void)reset;
- (void)setFirstARFrame:(id)frame;
- (void)setLastARFrame:(__n128)frame withCameraPose:(__n128)pose;
- (void)setUpInternalDumpWithLogDir:(id)dir enable:(BOOL)enable;
@end

@implementation OUInternalInfoDumper

- (OUInternalInfoDumper)init
{
  v9.receiver = self;
  v9.super_class = OUInternalInfoDumper;
  v2 = [(OUInternalInfoDumper *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_enableARFrameDump = 16843009;
    v2->_maxKeyframeFPS = 3.0;
    v4 = dispatch_queue_create("ObjectUnderstanding.InternalInfoDumper", 0);
    save_queue = v3->_save_queue;
    v3->_save_queue = v4;

    v6 = dispatch_group_create();
    save_group = v3->_save_group;
    v3->_save_group = v6;
  }

  return v3;
}

- (void)createDirectory:(id)directory
{
  directoryCopy = directory;
  v7 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:directoryCopy isDirectory:&v7];

  if (!v5 || (v7 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager2 createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:0];
  }
}

- (void)setUpInternalDumpWithLogDir:(id)dir enable:(BOOL)enable
{
  dirCopy = dir;
  objc_storeStrong(&self->_loggingDirectory, dir);
  v6 = dirCopy;
  self->_enableLiveDump = 1;
  if (dirCopy)
  {
    v7 = [dirCopy stringByAppendingPathComponent:@"Live"];
    [(OUInternalInfoDumper *)self createDirectory:v7];

    v6 = dirCopy;
  }
}

void __45__OUInternalInfoDumper_logKeyFrame_WithSkip___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v33 = [MEMORY[0x277CBEB18] array];
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v3)
  {
    v4 = *v41;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v41 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v40 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [v6 identifier];
        v9 = [v7 objectForKeyedSubscript:v8];

        if (v9)
        {
          [v9 samplePoints];
        }

        else
        {
          memset(__dst, 0, sizeof(__dst));
        }

        v10 = is_sample_points_equal(__dst, v6, __src);
        if (!v9 || (v11 = v10, v12 = [v9 size], ((v12 == objc_msgSend(v6, "count")) & v11) == 0))
        {
          v13 = objc_alloc_init(OUKeyframeMetaExtend);
          -[OUKeyframeMeta setSize:](v13, "setSize:", [v6 count]);
          v14 = [v6 identifier];
          [(OUKeyframeMeta *)v13 setIdentifier:v14];

          [v6 cameraPose];
          [(OUKeyframeMeta *)v13 setCameraPose:?];
          [v6 timestamp];
          [(OUKeyframeMeta *)v13 setTimestamp:?];
          memcpy(__dst, __src, sizeof(__dst));
          [(OUKeyframeMetaExtend *)v13 setSamplePoints:__dst];
          v15 = *(a1 + 40);
          v16 = [v6 identifier];
          [v15 setObject:v13 forKeyedSubscript:v16];

          [v33 addObject:v6];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v3);
  }

  v17 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v17 setDateFormat:@"MM_dd_yyyy_HH_mm_ss_SSS"];
  v18 = MEMORY[0x277CCACA8];
  v19 = *(a1 + 48);
  v20 = [MEMORY[0x277CBEAA8] date];
  v21 = [v17 stringFromDate:v20];
  v22 = [v18 stringWithFormat:@"%@/%@_fp_input.plist", v19, v21];

  v23 = [MEMORY[0x277CBEB38] dictionary];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = v33;
  v25 = [v24 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v25)
  {
    v26 = *v35;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v34 + 1) + 8 * j);
        v29 = [v28 identifier];
        [v23 setObject:v28 forKeyedSubscript:v29];
      }

      v25 = [v24 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v25);
  }

  v44 = @"keyframes";
  v30 = OUKeyframeSequenceToDictionary(v23);
  v45 = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];

  [*(a1 + 56) createDirectory:*(a1 + 48)];
  [v31 writeToFile:v22 atomically:0];
  dispatch_group_leave(*(a1 + 64));

  v32 = *MEMORY[0x277D85DE8];
}

- (void)setFirstARFrame:(id)frame
{
  frameCopy = frame;
  if (self->_enableLiveDump && self->_firstARFrameTime == 0.0)
  {
    v6 = frameCopy;
    [frameCopy timestamp];
    self->_firstARFrameTime = v5;
    frameCopy = v6;
  }
}

+ (id)serailizeARFrameMeta:(id)meta
{
  metaCopy = meta;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = MEMORY[0x277CCABB0];
  [metaCopy timestamp];
  v6 = [v5 numberWithDouble:?];
  [dictionary setObject:v6 forKeyedSubscript:@"timestamp"];

  sceneCamera = [metaCopy sceneCamera];
  [sceneCamera transform];
  v25 = v8;
  v26 = v9;
  v27 = v10;
  v28 = v11;

  v12 = [MEMORY[0x277CBEA90] dataWithBytes:&v25 length:64];
  [dictionary setObject:v12 forKeyedSubscript:@"cameraTransform"];

  sceneCamera2 = [metaCopy sceneCamera];
  [sceneCamera2 intrinsics];
  DWORD2(v22) = v14;
  DWORD2(v23) = v15;
  *&v22 = v16;
  *&v23 = v17;
  DWORD2(v24) = v18;
  *&v24 = v19;

  v20 = [MEMORY[0x277CBEA90] dataWithBytes:&v22 length:48];
  [dictionary setObject:v20 forKeyedSubscript:{@"intrinsics", v22, v23, v24}];

  return dictionary;
}

- (void)setLastARFrame:(__n128)frame withCameraPose:(__n128)pose
{
  v9 = a7;
  if (*(self + 177) == 1)
  {
    v10 = v9;
    objc_storeStrong((self + 104), a7);
    v9 = v10;
    *(self + 112) = a2;
    *(self + 128) = frame;
    *(self + 144) = pose;
    *(self + 160) = a5;
  }
}

- (id)encodePng:(__CVBuffer *)png
{
  data = [MEMORY[0x277CBEB28] data];
  v5 = CGImageDestinationCreateWithData(data, @"public.png", 1uLL, 0);
  CVPixelBufferLockBaseAddress(png, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(png);
  Width = CVPixelBufferGetWidth(png);
  Height = CVPixelBufferGetHeight(png);
  PixelFormatType = CVPixelBufferGetPixelFormatType(png);
  if (PixelFormatType == 1647392359)
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
    BytesPerRow = CVPixelBufferGetBytesPerRow(png);
    v12 = CGBitmapContextCreate(BaseAddress, Width, Height, 0x10uLL, BytesPerRow, DeviceGray, 0x1000u);
    CGColorSpaceRelease(DeviceGray);
  }

  else if (PixelFormatType == 32)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v11 = CVPixelBufferGetBytesPerRow(png);
    v12 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, v11, DeviceRGB, 6u);
    CGColorSpaceRelease(DeviceRGB);
  }

  else
  {
    v12 = 0;
  }

  CVPixelBufferUnlockBaseAddress(png, 1uLL);
  if (v12)
  {
    Image = CGBitmapContextCreateImage(v12);
  }

  else
  {
    Image = 0;
  }

  CGContextRelease(v12);
  if (v5 && Image)
  {
    CGImageDestinationAddImage(v5, Image, 0);
    CGImageDestinationFinalize(v5);
  }

  else if (!v5)
  {
    goto LABEL_14;
  }

  CFRelease(v5);
LABEL_14:
  CGImageRelease(Image);

  return data;
}

- (id)encodeRGBPng:(__CVBuffer *)png withWidth:(unint64_t)width Height:(unint64_t)height
{
  v15[1] = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  pixelTransferSessionOut = 0;
  if (VTPixelTransferSessionCreate(0, &pixelTransferSessionOut) || (v14 = *MEMORY[0x277CC4DE8], v15[0] = MEMORY[0x277CBEC10], CVPixelBufferCreate(0, width, height, 0x20u, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1], &pixelBufferOut)) || !pixelBufferOut)
  {
    v9 = 0;
  }

  else
  {
    VTPixelTransferSessionTransferImage(pixelTransferSessionOut, png, pixelBufferOut);
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
    v9 = [(OUInternalInfoDumper *)self encodePng:pixelBufferOut];
    CVPixelBufferRelease(pixelBufferOut);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)encodeDepthPng:(__CVBuffer *)png
{
  CVPixelBufferLockBaseAddress(png, 1uLL);
  Width = CVPixelBufferGetWidth(png);
  Height = CVPixelBufferGetHeight(png);
  src.width = CVPixelBufferGetWidth(png);
  src.height = CVPixelBufferGetHeight(png);
  src.rowBytes = CVPixelBufferGetBytesPerRow(png);
  dest.height = Height;
  dest.width = Width;
  dest.rowBytes = 32 * Width;
  src.data = CVPixelBufferGetBaseAddress(png);
  dest.data = malloc_type_malloc(32 * Width * Height, 0x1000040E0EAB150uLL);
  vImageConvert_FTo16U(&src, &dest, 0.0, 0.001, 0);
  CVPixelBufferUnlockBaseAddress(png, 1uLL);
  texture = 0;
  if (CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], Width, Height, 0x62313667u, dest.data, dest.rowBytes, 0, 0, 0, &texture))
  {
    free(dest.data);
    v7 = 0;
  }

  else
  {
    v7 = [(OUInternalInfoDumper *)self encodePng:texture];
    free(dest.data);
    CVPixelBufferRelease(texture);
  }

  return v7;
}

- (void)dumpLastARFrameImage
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(NSString *)self->_loggingDirectory stringByAppendingPathComponent:@"Live"];
  firstARFrameTime = self->_firstARFrameTime;
  v5 = self->_lastARFrame;
  v6 = *&self->_anon_70[16];
  v28 = *self->_anon_70;
  v29 = v6;
  v7 = *&self->_anon_70[48];
  v30 = *&self->_anon_70[32];
  v31 = v7;
  v8 = [(NSMutableArray *)self->_keyframesDebug count];
  v9 = *&self->_enableARFrameRGB;
  v10 = self->_save_group;
  dispatch_group_enter(v10);
  save_queue = self->_save_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__OUInternalInfoDumper_dumpLastARFrameImage__block_invoke;
  v16[3] = &unk_2799C4198;
  v21 = v3;
  v22 = v5;
  v24 = v10;
  v25 = v8;
  v26 = firstARFrameTime;
  v17 = v28;
  v18 = v29;
  v19 = v30;
  v20 = v31;
  v27 = v9;
  selfCopy = self;
  v12 = v10;
  v13 = v5;
  v14 = v3;
  dispatch_async(save_queue, v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __44__OUInternalInfoDumper_dumpLastARFrameImage__block_invoke(uint64_t a1)
{
  v38 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v38 setDateFormat:@"MM_dd_yyyy_HH_mm_ss_SSS"];
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 96);
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v38 stringFromDate:v4];
  v6 = [v2 stringWithFormat:@"%@/%@_Image.plist", v3, v5];

  v37 = v6;
  v7 = [OUInternalInfoDumper serailizeARFrameMeta:*(a1 + 104)];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 128)];
  [v7 setObject:v8 forKeyedSubscript:@"keyframe_index"];

  v9 = MEMORY[0x277CCABB0];
  [*(a1 + 104) timestamp];
  v11 = [v9 numberWithDouble:v10 - *(a1 + 136)];
  [v7 setObject:v11 forKeyedSubscript:@"video_timestamp"];

  v12 = [MEMORY[0x277CBEA90] dataWithBytes:a1 + 32 length:64];
  [v7 setObject:v12 forKeyedSubscript:@"cameraPose"];

  v13 = [*(a1 + 104) sceneDepthBuffer];
  v36 = [*(a1 + 104) sceneDepthConfidenceBuffer];
  Width = CVPixelBufferGetWidth(v13);
  Height = CVPixelBufferGetHeight(v13);
  if (Height * Width)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  if (*(a1 + 144))
  {
    v18 = [MEMORY[0x277CBEB38] dictionary];
    v19 = v18;
    if (v17)
    {
      v20 = [*(a1 + 104) sceneColorBuffer];
      v21 = CVPixelBufferGetWidth(v20);
      v22 = CVPixelBufferGetHeight(v20);
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v21];
      [v19 setObject:v23 forKeyedSubscript:@"width"];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v22];
      [v19 setObject:v24 forKeyedSubscript:@"height"];

      v25 = [*(a1 + 112) encodeRGBPng:v20 withWidth:v21 Height:v22];
    }

    else
    {
      [v18 setObject:&unk_286EC21B8 forKeyedSubscript:@"width"];
      [v19 setObject:&unk_286EC21B8 forKeyedSubscript:@"height"];
      v25 = objc_alloc_init(MEMORY[0x277CBEA90]);
    }

    [v19 setObject:v25 forKeyedSubscript:@"data"];

    [v19 setObject:@"PNG" forKeyedSubscript:@"type"];
    [v7 setObject:v19 forKeyedSubscript:@"image"];
  }

  if (*(a1 + 145) == 1)
  {
    v26 = [MEMORY[0x277CBEB38] dictionary];
    v27 = v26;
    if (v17)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Width];
      [v27 setObject:v28 forKeyedSubscript:@"width"];

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Height];
      [v27 setObject:v29 forKeyedSubscript:@"height"];

      v30 = [*(a1 + 112) encodeDepthPng:{objc_msgSend(*(a1 + 104), "sceneDepthBuffer")}];
    }

    else
    {
      [v26 setObject:&unk_286EC21B8 forKeyedSubscript:@"width"];
      [v27 setObject:&unk_286EC21B8 forKeyedSubscript:@"height"];
      v30 = objc_alloc_init(MEMORY[0x277CBEA90]);
    }

    [v27 setObject:v30 forKeyedSubscript:@"data"];

    [v27 setObject:@"PNG" forKeyedSubscript:@"type"];
    [v7 setObject:v27 forKeyedSubscript:@"depth"];
    v31 = [MEMORY[0x277CBEB38] dictionary];
    v32 = v31;
    if (v36)
    {
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Width];
      [v32 setObject:v33 forKeyedSubscript:@"width"];

      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Height];
      [v32 setObject:v34 forKeyedSubscript:@"height"];

      v35 = [*(a1 + 112) encodeDepthPng:{objc_msgSend(*(a1 + 104), "sceneDepthConfidenceBuffer")}];
    }

    else
    {
      [v31 setObject:&unk_286EC21B8 forKeyedSubscript:@"width"];
      [v32 setObject:&unk_286EC21B8 forKeyedSubscript:@"height"];
      v35 = objc_alloc_init(MEMORY[0x277CBEA90]);
    }

    [v32 setObject:v35 forKeyedSubscript:@"data"];

    [v32 setObject:@"PNG" forKeyedSubscript:@"type"];
    [v7 setObject:v32 forKeyedSubscript:@"depth_confidence"];
  }

  [*(a1 + 112) createDirectory:*(a1 + 96)];
  [v7 writeToFile:v37 atomically:0];
  dispatch_group_leave(*(a1 + 120));
}

- (void)dumpObjects:(id)objects
{
  objectsCopy = objects;
  if (__PAIR64__(self->_enableLiveDump, self->_enableARFrameDump) == 0x100000001)
  {
    loggingDirectory = self->_loggingDirectory;
    if (loggingDirectory)
    {
      v6 = [(NSString *)loggingDirectory stringByAppendingPathComponent:@"Live"];
      v7 = self->_save_group;
      dispatch_group_enter(v7);
      save_queue = self->_save_queue;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __36__OUInternalInfoDumper_dumpObjects___block_invoke;
      v11[3] = &unk_2799C41C0;
      v12 = v6;
      v13 = objectsCopy;
      selfCopy = self;
      v15 = v7;
      v9 = v7;
      v10 = v6;
      dispatch_async(save_queue, v11);
    }
  }
}

void __36__OUInternalInfoDumper_dumpObjects___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"MM_dd_yyyy_HH_mm_ss_SSS"];
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v2 stringFromDate:v5];
  v7 = [v3 stringWithFormat:@"%@/%@_Objects.plist", v4, v6];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) dictionaryRepresentation];
        v14 = [v13 copy];
        [v8 addObject:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [*(a1 + 48) createDirectory:*(a1 + 32)];
  [v8 writeToFile:v7 atomically:0];
  dispatch_group_leave(*(a1 + 56));

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dumpARFrame:(__n128)frame withKeyFrames:(__n128)frames withCameraPose:(__n128)pose
{
  v10 = a7;
  v11 = a8;
  if ([v10 sceneDepthBuffer])
  {
    [self setLastARFrame:v10 withCameraPose:{a2.n128_f64[0], frame.n128_f64[0], frames.n128_f64[0], pose.n128_f64[0]}];
  }

  NSLog(&cfstr_Enablelivedump.isa, *(self + 177));
  NSLog(&cfstr_Enablearframed.isa, *(self + 176));
  NSLog(&cfstr_Loggingdirecto.isa, *(self + 24));
  if (*(self + 177) == 1 && *(self + 176) == 1)
  {
    v12 = *(self + 24);
    if (v12)
    {
      v13 = [v12 stringByAppendingPathComponent:@"Live"];
      v14 = *(self + 72);
      v15 = *(self + 16);
      v16 = [v11 count];
      dispatch_group_enter(v15);
      v17 = *(self + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__OUInternalInfoDumper_dumpARFrame_withKeyFrames_withCameraPose___block_invoke;
      block[3] = &unk_2799C41E8;
      v29 = v13;
      v34 = v14;
      v25 = a2;
      frameCopy = frame;
      framesCopy = frames;
      poseCopy = pose;
      v30 = v10;
      selfCopy = self;
      v32 = v15;
      v33 = v16;
      v18 = v15;
      v19 = v13;
      dispatch_async(v17, block);
    }
  }
}

void __65__OUInternalInfoDumper_dumpARFrame_withKeyFrames_withCameraPose___block_invoke(uint64_t a1)
{
  v13 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v13 setDateFormat:@"MM_dd_yyyy_HH_mm_ss_SSS"];
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 96);
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v13 stringFromDate:v4];
  v6 = [v2 stringWithFormat:@"%@/%@_ARFrame.plist", v3, v5];

  NSLog(&cfstr_FilePath.isa, v6);
  v7 = [OUInternalInfoDumper serailizeARFrameMeta:*(a1 + 104)];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 128)];
  [v7 setObject:v8 forKeyedSubscript:@"keyframesCount"];

  v9 = MEMORY[0x277CCABB0];
  [*(a1 + 104) timestamp];
  v11 = [v9 numberWithDouble:v10 - *(a1 + 136)];
  [v7 setObject:v11 forKeyedSubscript:@"video_timestamp"];

  v12 = [MEMORY[0x277CBEA90] dataWithBytes:a1 + 32 length:64];
  [v7 setObject:v12 forKeyedSubscript:@"cameraPose"];

  [*(a1 + 112) createDirectory:*(a1 + 96)];
  [v7 writeToFile:v6 atomically:0];
  dispatch_group_leave(*(a1 + 120));
}

- (void)logMemory:(unint64_t)memory
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (self->_enableLiveDump && self->_lastARFrame)
  {
    sysDebug = self->_sysDebug;
    v10[0] = @"avail_mem";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:memory];
    v10[1] = @"time_stamp";
    v11[0] = v5;
    v6 = MEMORY[0x277CCABB0];
    [(OUFrame *)self->_lastARFrame timestamp];
    v7 = [v6 numberWithDouble:?];
    v11[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    [(NSMutableArray *)sysDebug addObject:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)getDebugInfoWithConfig:(id)config OnlineDebug:(id)debug
{
  v29 = *MEMORY[0x277D85DE8];
  configCopy = config;
  debugCopy = debug;
  v8 = debugCopy;
  if (self->_enableLiveDump)
  {
    v9 = [debugCopy objectForKeyedSubscript:@"floorPlanDebug"];
    v10 = [(NSMutableArray *)self->_floorPlanDebug count];
    if (v10 != [v9 count] - 1)
    {
      v11 = [(NSMutableArray *)self->_floorPlanDebug count];
      if (v11 != [v9 count])
      {
        __assert_rtn("[OUInternalInfoDumper getDebugInfoWithConfig:OnlineDebug:]", "OUDebugInfo.mm", 426, "_floorPlanDebug.count == internalWall.count - 1 || _floorPlanDebug.count == internalWall.count");
      }
    }

    array = [MEMORY[0x277CBEB18] array];
    for (i = 0; i < [(NSMutableArray *)self->_floorPlanDebug count]; ++i)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v15 = [(NSMutableArray *)self->_floorPlanDebug objectAtIndexedSubscript:i];
      [dictionary addEntriesFromDictionary:v15];

      v16 = [v9 objectAtIndexedSubscript:i];
      [dictionary addEntriesFromDictionary:v16];

      [array addObject:dictionary];
    }

    save_group = self->_save_group;
    v19 = dispatch_time(0, 30000000000);
    dispatch_group_wait(save_group, v19);
    v24[0] = @"config";
    v24[1] = @"keyframeDebug";
    keyframesDebug = self->_keyframesDebug;
    v25[0] = configCopy;
    v25[1] = keyframesDebug;
    v25[2] = array;
    v24[2] = @"floorPlanDebug";
    v24[3] = @"coachingDebug";
    v26 = *&self->_coachingDebug;
    v24[4] = @"driftDebug";
    v24[5] = @"sysDebug";
    sysDebug = self->_sysDebug;
    v24[6] = @"firstARFrameTime";
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_firstARFrameTime];
    v28 = v21;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:7];
  }

  else
  {
    v17 = MEMORY[0x277CBEC10];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)reset
{
  array = [MEMORY[0x277CBEB18] array];
  keyframesDebug = self->_keyframesDebug;
  self->_keyframesDebug = array;

  array2 = [MEMORY[0x277CBEB18] array];
  floorPlanDebug = self->_floorPlanDebug;
  self->_floorPlanDebug = array2;

  array3 = [MEMORY[0x277CBEB18] array];
  coachingDebug = self->_coachingDebug;
  self->_coachingDebug = array3;

  array4 = [MEMORY[0x277CBEB18] array];
  driftDebug = self->_driftDebug;
  self->_driftDebug = array4;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  keyframeMeta = self->_keyframeMeta;
  self->_keyframeMeta = dictionary;

  array5 = [MEMORY[0x277CBEB18] array];
  sysDebug = self->_sysDebug;
  self->_sysDebug = array5;

  *&self->_enableARFrameRGB = 257;
  self->_enableARFrameDump = 1;
  v15 = MEMORY[0x277D860B8];
  self->_firstARFrameTime = 0.0;
  v16 = v15[1];
  *self->_anon_70 = *v15;
  *&self->_anon_70[16] = v16;
  v17 = v15[3];
  *&self->_anon_70[32] = v15[2];
  *&self->_anon_70[48] = v17;
  lastARFrame = self->_lastARFrame;
  self->_maxKeyframeFPS = 3.0;
  self->_lastARFrame = 0;

  lastKeyframeTime = self->_lastKeyframeTime;
  self->_lastKeyframeTime = 0;
}

@end