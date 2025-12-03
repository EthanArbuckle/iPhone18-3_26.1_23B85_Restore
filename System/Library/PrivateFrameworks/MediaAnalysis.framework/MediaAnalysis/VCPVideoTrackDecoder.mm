@interface VCPVideoTrackDecoder
+ ($2825F4736939C4A6D3AD43837233062D)decodeDimensionsForTrack:(id)track;
- (BOOL)validateDecodedFrame:(__CVBuffer *)frame withSettings:(id)settings;
- (VCPVideoTrackDecoder)initWithTrack:(id)track;
- (id)settings;
- (int64_t)status;
- (opaqueCMSampleBuffer)copyNextSampleBuffer;
- (opaqueCMSampleBuffer)getNextCaptureSampleBuffer;
@end

@implementation VCPVideoTrackDecoder

+ ($2825F4736939C4A6D3AD43837233062D)decodeDimensionsForTrack:(id)track
{
  trackCopy = track;
  [trackCopy naturalSize];
  v5 = v4;
  v7 = v6;
  if (trackCopy)
  {
    [trackCopy preferredTransform];
    v9 = *v18;
    v8 = *&v18[1];
    v11 = *&v18[2];
    v10 = *&v18[3];
  }

  else
  {
    v10 = 0.0;
    v8 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
  }

  v12 = fabs(v7 * v11 + v9 * v5);
  v13 = fabs(v7 * v10 + v8 * v5);
  if (v12 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = (576 * v12 / v14) & 0xFFFFFFFE;
    v16 = ((576 * v13 / v14) & 0xFFFFFFFE) << 32;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18[0]) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Both width and height are zero", v18, 2u);
    }

    v15 = 0;
    v16 = 0;
  }

  return (v16 | v15);
}

- (VCPVideoTrackDecoder)initWithTrack:(id)track
{
  v19 = *MEMORY[0x1E69E9840];
  trackCopy = track;
  mediaType = [trackCopy mediaType];
  if ([mediaType isEqualToString:*MEMORY[0x1E6987608]])
  {
  }

  else
  {
    mediaType2 = [trackCopy mediaType];
    v8 = [mediaType2 isEqualToString:*MEMORY[0x1E69875B0]];

    if ((v8 & 1) == 0)
    {
LABEL_12:
      selfCopy = 0;
      goto LABEL_13;
    }
  }

  v9 = [VCPVideoTrackDecoder decodeDimensionsForTrack:trackCopy];
  var0 = v9.var0;
  v11 = HIDWORD(*&v9);
  if (v9.var0 < 192 || v9.var1 <= 95)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = (var0 / v11);
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Extreme aspect ratio %f; initialization failed", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v16.receiver = self;
  v16.super_class = VCPVideoTrackDecoder;
  v12 = [(VCPVideoTrackDecoder *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_track, track);
  }

  self = v13;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (id)settings
{
  v13[5] = *MEMORY[0x1E69E9840];
  v2 = [VCPVideoTrackDecoder decodeDimensionsForTrack:self->_track];
  v3 = *MEMORY[0x1E6966130];
  v13[0] = &unk_1F49BD990;
  v4 = *MEMORY[0x1E6966208];
  v12[0] = v3;
  v12[1] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v2];
  v6 = HIDWORD(*&v2);
  v13[1] = v5;
  v12[2] = *MEMORY[0x1E69660B8];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(*&v2)];
  v13[2] = v7;
  v12[3] = *MEMORY[0x1E6966090];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:-v2.var0 & 0xF];
  v13[3] = v8;
  v12[4] = *MEMORY[0x1E6966078];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:-v6 & 0xF];
  v13[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];

  return v10;
}

- (BOOL)validateDecodedFrame:(__CVBuffer *)frame withSettings:(id)settings
{
  v23 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v6 = [settingsCopy objectForKey:*MEMORY[0x1E6966090]];
  unsignedIntValue = [v6 unsignedIntValue];

  v8 = [settingsCopy objectForKey:*MEMORY[0x1E6966078]];
  unsignedIntValue2 = [v8 unsignedIntValue];

  v13 = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferGetExtendedPixels(frame, 0, &extraColumnsOnRight, 0, &v13);
  v10 = extraColumnsOnRight == unsignedIntValue && v13 == unsignedIntValue2;
  v11 = v10;
  if (!v10 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 134218752;
    v16 = extraColumnsOnRight;
    v17 = 2048;
    v18 = v13;
    v19 = 2048;
    v20 = unsignedIntValue;
    v21 = 2048;
    v22 = unsignedIntValue2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoTrackDecoder] Decoded frame and setting mismatch: actual padding right: %zupx, bottom: %zupx (expected right: %zupx, bottom: %zupx)", buf, 0x2Au);
  }

  return v11;
}

- (int64_t)status
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"NotImplementedException" reason:@"[VideoTrackDecoder status] should not be called" userInfo:0];
  objc_exception_throw(v2);
}

- (opaqueCMSampleBuffer)copyNextSampleBuffer
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"NotImplementedException" reason:@"[VideoTrackDecoder copyNextSampleBuffer] should not be called" userInfo:0];
  objc_exception_throw(v2);
}

- (opaqueCMSampleBuffer)getNextCaptureSampleBuffer
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"NotImplementedException" reason:@"[VideoTrackDecoder getNextCaptureSampleBuffer] should not be called" userInfo:0];
  objc_exception_throw(v2);
}

@end