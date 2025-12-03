@interface PADAVSerialAssetReader
- (BOOL)_setupAssetReaderWithVideoURL:(id)l error:(id *)error;
- (PADAVSerialAssetReader)initWithVideoURL:(id)l error:(id *)error;
- (id)retrieveNextFrame;
- (void)close;
@end

@implementation PADAVSerialAssetReader

- (PADAVSerialAssetReader)initWithVideoURL:(id)l error:(id *)error
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = PADAVSerialAssetReader;
  v7 = [(PADAVSerialAssetReader *)&v11 init];
  v8 = v7;
  if (v7 && (v7->_isReading = 0, ![(PADAVSerialAssetReader *)v7 _setupAssetReaderWithVideoURL:lCopy error:error]))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (BOOL)_setupAssetReaderWithVideoURL:(id)l error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v7 = [MEMORY[0x277CE63D8] assetWithURL:lCopy];
  v8 = [v7 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  firstObject = [v8 firstObject];

  v39 = *MEMORY[0x277CC4E30];
  v40[0] = &unk_285878520;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v11 = [v10 mutableCopy];

  v12 = [objc_alloc(MEMORY[0x277CE6430]) initWithTrack:firstObject outputSettings:v11];
  output = self->_output;
  self->_output = v12;

  [(AVAssetReaderTrackOutput *)self->_output setAlwaysCopiesSampleData:0];
  v14 = [objc_alloc(MEMORY[0x277CE6410]) initWithAsset:v7 error:0];
  assetReader = self->_assetReader;
  self->_assetReader = v14;

  v16 = self->_assetReader;
  if (v16)
  {
    if ([(AVAssetReader *)v16 canAddOutput:self->_output])
    {
      error = MEMORY[0x277CC08F0];
      v17 = *MEMORY[0x277CC08F0];
      v32 = 0;
      v33 = 0;
      v34 = 0;
      if (v7)
      {
        [v7 duration];
        v18 = v32;
        v19 = v33;
      }

      else
      {
        v19 = 0;
        v18 = 0;
      }

      CMTimeMake(duration, v18 - v17, v19);
      start.value = v17;
      *&start.timescale = *(error + 1);
      CMTimeRangeMake(&v31, &start, duration);
      v27 = self->_assetReader;
      *&duration[0].value = v31;
      [(AVAssetReader *)v27 setTimeRange:duration];
      [(AVAssetReader *)self->_assetReader addOutput:self->_output];
      LOBYTE(error) = 1;
    }

    else if (error)
    {
      v25 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA068];
      v36 = @"Unable to add output to AVAssetReader";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      *error = [v25 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:1 userInfo:v26];

      LOBYTE(error) = 0;
    }
  }

  else if (error)
  {
    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    path = [lCopy path];
    v22 = [v20 initWithFormat:@"Unable to create AVAssetReader with file at URL %@", path];

    v23 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA068];
    v38 = v22;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    *error = [v23 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:1 userInfo:v24];

    LOBYTE(error) = 0;
  }

  return error;
}

- (id)retrieveNextFrame
{
  if (!self->_isReading)
  {
    self->_isReading = 1;
    [(AVAssetReader *)self->_assetReader startReading];
  }

  output = self->_output;
  v4 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
  v5 = v4;
  if (output)
  {
    if (os_signpost_enabled(v4))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_245686000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AV.ReadFrame", "", &buf, 2u);
    }

    copyNextSampleBuffer = [(AVAssetReaderTrackOutput *)self->_output copyNextSampleBuffer];
    if (copyNextSampleBuffer)
    {
      v7 = copyNextSampleBuffer;
      ImageBuffer = CMSampleBufferGetImageBuffer(copyNextSampleBuffer);
      memset(&buf, 0, sizeof(buf));
      CMSampleBufferGetPresentationTimeStamp(&buf, v7);
      CFRelease(v7);
      v9 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
      if (os_signpost_enabled(v9))
      {
        LOWORD(v14.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_245686000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AV.ReadFrame", "", &v14, 2u);
      }

      v10 = objc_alloc_init(PADAVFrame);
      [(PADAVFrame *)v10 setPixelBuffer:ImageBuffer];
      v14 = buf;
      [(PADAVFrame *)v10 setTimestamp:&v14];
      v11 = v10;

      return v11;
    }

    v13 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_signpost_enabled(v13))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_245686000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AV.ReadFrame", "", &buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(PADAVSerialAssetReader *)v5 retrieveNextFrame];
    }
  }

  v11 = 0;

  return v11;
}

- (void)close
{
  [(AVAssetReader *)self->_assetReader cancelReading];
  assetReader = self->_assetReader;
  self->_assetReader = 0;

  output = self->_output;
  self->_output = 0;
}

@end