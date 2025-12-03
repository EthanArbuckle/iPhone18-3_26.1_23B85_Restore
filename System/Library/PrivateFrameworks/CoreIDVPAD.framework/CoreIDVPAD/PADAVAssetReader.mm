@interface PADAVAssetReader
- (id)_frameFromVideo:(id)video timestamp:(id *)timestamp size:(CGSize)size error:(id *)error;
- (id)_imageDataFromVideo:(id)video timestamp:(id *)timestamp size:(CGSize)size error:(id *)error;
- (id)framesFromVideoURL:(id)l timestamps:(id)timestamps size:(CGSize)size error:(id *)error;
- (id)imagesFromVideoURL:(id)l timestamps:(id)timestamps size:(CGSize)size error:(id *)error;
- (opaqueCMSampleBuffer)_newSampleBufferFromVideo:(id)video timestamp:(id *)timestamp size:(CGSize)size error:(id *)error;
@end

@implementation PADAVAssetReader

- (id)imagesFromVideoURL:(id)l timestamps:(id)timestamps size:(CGSize)size error:(id *)error
{
  height = size.height;
  width = size.width;
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
  timestampsCopy = timestamps;
  v25 = [MEMORY[0x277CBEBF8] mutableCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = timestampsCopy;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v30;
    do
    {
      v17 = 0;
      v18 = v15;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v29 + 1) + 8 * v17);
        v20 = objc_autoreleasePoolPush();
        memset(&v28, 0, sizeof(v28));
        CMTimeMakeFromDictionary(&v28, v19);
        v27 = v18;
        v26 = v28;
        height = [(PADAVAssetReader *)self _imageDataFromVideo:lCopy timestamp:&v26 size:&v27 error:width, height];
        v15 = v27;

        if (height)
        {
          [v25 addObject:height];
        }

        objc_autoreleasePoolPop(v20);
        ++v17;
        v18 = v15;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  if (error)
  {
    v22 = v15;
    *error = v15;
  }

  return v25;
}

- (id)framesFromVideoURL:(id)l timestamps:(id)timestamps size:(CGSize)size error:(id *)error
{
  height = size.height;
  width = size.width;
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
  timestampsCopy = timestamps;
  v25 = [MEMORY[0x277CBEBF8] mutableCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = timestampsCopy;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v30;
    do
    {
      v17 = 0;
      v18 = v15;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v29 + 1) + 8 * v17);
        v20 = objc_autoreleasePoolPush();
        memset(&v28, 0, sizeof(v28));
        CMTimeMakeFromDictionary(&v28, v19);
        v27 = v18;
        v26 = v28;
        height = [(PADAVAssetReader *)self _frameFromVideo:lCopy timestamp:&v26 size:&v27 error:width, height];
        v15 = v27;

        if (height)
        {
          [v25 addObject:height];
        }

        objc_autoreleasePoolPop(v20);
        ++v17;
        v18 = v15;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  if (error)
  {
    v22 = v15;
    *error = v15;
  }

  return v25;
}

- (id)_imageDataFromVideo:(id)video timestamp:(id *)timestamp size:(CGSize)size error:(id *)error
{
  buf = *timestamp;
  v6 = [(PADAVAssetReader *)self _newSampleBufferFromVideo:video timestamp:&buf size:error error:size.width, size.height];
  if (v6)
  {
    v7 = v6;
    v8 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_signpost_enabled(v8))
    {
      LOWORD(buf.var0) = 0;
      _os_signpost_emit_with_name_impl(&dword_245686000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AV.FrameImageData", "", &buf, 2u);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__PADAVAssetReader__imageDataFromVideo_timestamp_size_error___block_invoke;
    v12[3] = &__block_descriptor_40_e13___NSData_8__0l;
    v12[4] = v7;
    v9 = __61__PADAVAssetReader__imageDataFromVideo_timestamp_size_error___block_invoke(v12);
    v10 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_signpost_enabled(v10))
    {
      LOWORD(buf.var0) = 0;
      _os_signpost_emit_with_name_impl(&dword_245686000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AV.FrameImageData", "", &buf, 2u);
    }

    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __61__PADAVAssetReader__imageDataFromVideo_timestamp_size_error___block_invoke(uint64_t a1)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(*(a1 + 32));
  CVPixelBufferLockBaseAddress(ImageBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(ImageBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(ImageBuffer);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v7 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 0x2002u);
  Image = CGBitmapContextCreateImage(v7);
  CVPixelBufferUnlockBaseAddress(ImageBuffer, 0);
  CGContextRelease(v7);
  CGColorSpaceRelease(DeviceRGB);
  v9 = [MEMORY[0x277CBF758] imageWithCGImage:Image];
  v10 = [MEMORY[0x277CBF740] context];
  v11 = CGColorSpaceCreateDeviceRGB();
  v12 = [v10 JPEGRepresentationOfImage:v9 colorSpace:v11 options:MEMORY[0x277CBEC10]];
  CGColorSpaceRelease(v11);

  CGImageRelease(Image);

  return v12;
}

- (id)_frameFromVideo:(id)video timestamp:(id *)timestamp size:(CGSize)size error:(id *)error
{
  height = size.height;
  width = size.width;
  videoCopy = video;
  v12 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
  if (os_signpost_enabled(v12))
  {
    LOWORD(buf.var0) = 0;
    _os_signpost_emit_with_name_impl(&dword_245686000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AV.ReadFrame", "", &buf, 2u);
  }

  buf = *timestamp;
  height = [(PADAVAssetReader *)self _newSampleBufferFromVideo:videoCopy timestamp:&buf size:error error:width, height];

  if (height)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(height);
    memset(&buf, 0, sizeof(buf));
    CMSampleBufferGetPresentationTimeStamp(&buf, height);
    CFRelease(height);
    v15 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_signpost_enabled(v15))
    {
      LOWORD(v19.var0) = 0;
      _os_signpost_emit_with_name_impl(&dword_245686000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AV.ReadFrame", "", &v19, 2u);
    }

    v16 = objc_alloc_init(PADAVFrame);
    [(PADAVFrame *)v16 setPixelBuffer:ImageBuffer];
    v19 = buf;
    [(PADAVFrame *)v16 setTimestamp:&v19];
  }

  else
  {
    v17 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_signpost_enabled(v17))
    {
      LOWORD(buf.var0) = 0;
      _os_signpost_emit_with_name_impl(&dword_245686000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AV.ReadFrame", "", &buf, 2u);
    }

    v16 = 0;
  }

  return v16;
}

- (opaqueCMSampleBuffer)_newSampleBufferFromVideo:(id)video timestamp:(id *)timestamp size:(CGSize)size error:(id *)error
{
  height = size.height;
  width = size.width;
  v42[1] = *MEMORY[0x277D85DE8];
  videoCopy = video;
  v11 = [MEMORY[0x277CE63D8] assetWithURL:videoCopy];
  v12 = [v11 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  firstObject = [v12 firstObject];

  if (firstObject)
  {
    v39 = *MEMORY[0x277CC4E30];
    v40 = &unk_285878520;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v15 = [v14 mutableCopy];

    if (width != *MEMORY[0x277CBF3A8] || height != *(MEMORY[0x277CBF3A8] + 8))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:width];
      [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x277CC4EC8]];

      v18 = [MEMORY[0x277CCABB0] numberWithDouble:height];
      [v15 setObject:v18 forKeyedSubscript:*MEMORY[0x277CC4DD8]];
    }

    v19 = [objc_alloc(MEMORY[0x277CE6430]) initWithTrack:firstObject outputSettings:v15];
    [v19 setAlwaysCopiesSampleData:0];
    v20 = [objc_alloc(MEMORY[0x277CE6410]) initWithAsset:v11 error:0];
    v21 = v20;
    if (v20)
    {
      if ([v20 canAddOutput:v19])
      {
        CMTimeMake(&duration.start, 1000000, timestamp->var1);
        start = *timestamp;
        CMTimeRangeMake(&v34, &start, &duration.start);
        duration = v34;
        [v21 setTimeRange:&duration];
        [v21 addOutput:v19];
        [v21 startReading];
        copyNextSampleBuffer = [v19 copyNextSampleBuffer];
        [v21 cancelReading];
LABEL_17:

        goto LABEL_18;
      }

      if (error)
      {
        v29 = MEMORY[0x277CCA9B8];
        v35 = *MEMORY[0x277CCA068];
        v36 = @"Unable to add output to AVAssetReader";
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        *error = [v29 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:1 userInfo:v30];
      }
    }

    else if (error)
    {
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      path = [videoCopy path];
      v26 = [v24 initWithFormat:@"Unable to create AVAssetReader with file at URL %@", path];

      v27 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA068];
      v38 = v26;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *error = [v27 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:1 userInfo:v28];
    }

    copyNextSampleBuffer = 0;
    goto LABEL_17;
  }

  if (!error)
  {
    copyNextSampleBuffer = 0;
    goto LABEL_19;
  }

  v23 = MEMORY[0x277CCA9B8];
  v41 = *MEMORY[0x277CCA068];
  v42[0] = @"Unable to create asset track from asset";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  [v23 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:1 userInfo:v15];
  *error = copyNextSampleBuffer = 0;
LABEL_18:

LABEL_19:
  return copyNextSampleBuffer;
}

@end