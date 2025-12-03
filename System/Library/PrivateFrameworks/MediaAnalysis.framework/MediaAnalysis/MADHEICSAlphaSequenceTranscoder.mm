@interface MADHEICSAlphaSequenceTranscoder
- (MADHEICSAlphaSequenceTranscoder)initWithSequenceData:(id)data maxDimension:(unint64_t)dimension qualityValue:(double)value;
- (id).cxx_construct;
- (id)run;
- (int)_addFrameToSequence:(int64_t)sequence basePixelBuffer:(__CVBuffer *)buffer alphaPixelBuffer:(__CVBuffer *)pixelBuffer pts:(id *)pts;
- (int)_decodeFrameIndex:(unint64_t)index basePixelBuffer:(__CVBuffer *)buffer alphaPixelBuffer:(__CVBuffer *)pixelBuffer pts:(id *)pts;
- (int)_setupTranscode;
- (int)_transcode;
@end

@implementation MADHEICSAlphaSequenceTranscoder

- (MADHEICSAlphaSequenceTranscoder)initWithSequenceData:(id)data maxDimension:(unint64_t)dimension qualityValue:(double)value
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = MADHEICSAlphaSequenceTranscoder;
  v10 = [(MADHEICSAlphaSequenceTranscoder *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sequenceData, data);
    v11->_maxDimension = dimension;
    v11->_qualityValue = value;
  }

  return v11;
}

- (int)_setupTranscode
{
  v24[2] = *MEMORY[0x1E69E9840];
  p_source = &self->_source;
  value = self->_source.value_;
  if (value)
  {
    CFRelease(value);
    p_source->value_ = 0;
  }

  Container = CMPhotoDecompressionSessionCreate();
  if (Container)
  {
    return Container;
  }

  v6 = self->_sourceContainer.value_;
  if (v6)
  {
    CFRelease(v6);
    self->_sourceContainer.value_ = 0;
  }

  Container = CMPhotoDecompressionSessionCreateContainer();
  if (Container)
  {
    return Container;
  }

  v7 = self->_sequenceContainer.value_;
  if (v7)
  {
    CFRelease(v7);
    self->_sequenceContainer.value_ = 0;
  }

  Container = CMPhotoDecompressionContainerCreateSequenceContainer();
  if (Container)
  {
    return Container;
  }

  v8 = self->_compressionSession.value_;
  if (v8)
  {
    CFRelease(v8);
    self->_compressionSession.value_ = 0;
  }

  Container = CMPhotoCompressionSessionCreate();
  if (Container)
  {
    return Container;
  }

  v11 = *MEMORY[0x1E6991860];
  v23[0] = *MEMORY[0x1E6991870];
  v23[1] = v11;
  v24[0] = &unk_1F49BC0A0;
  v24[1] = &unk_1F49BC0B8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  started = CMPhotoCompressionSessionOpenEmptyContainer();
  if (!started)
  {
    started = CMPhotoCompressionSessionStartImageSequence();
    if (!started)
    {
      started = CMPhotoDecompressionContainerGetImageCount();
      if (!started)
      {
        theDict = 0;
        started = CMPhotoDecompressionContainerCreateDictionaryDescription();
        if (!started)
        {
          v13 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6991A88]);
          frameProperties = self->_frameProperties;
          self->_frameProperties = v13;

          if (self->_frameProperties)
          {
            v15 = dispatch_group_create();
            encodeGroup = self->_encodeGroup;
            self->_encodeGroup = v15;

            v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
            v18 = dispatch_queue_create("heics.encode", v17);
            encodeQueue = self->_encodeQueue;
            self->_encodeQueue = v18;

            v20 = dispatch_semaphore_create(2);
            encodeSemaphore = self->_encodeSemaphore;
            self->_encodeSemaphore = v20;

            started = 0;
          }

          else
          {
            started = -18;
          }
        }

        CF<__CVBuffer *>::~CF(&theDict);
      }
    }
  }

  return started;
}

- (int)_decodeFrameIndex:(unint64_t)index basePixelBuffer:(__CVBuffer *)buffer alphaPixelBuffer:(__CVBuffer *)pixelBuffer pts:(id *)pts
{
  v43[1] = *MEMORY[0x1E69E9840];
  v9 = VCPSignPostLog();
  v10 = os_signpost_id_generate(v9);

  v11 = VCPSignPostLog();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MADHEICSTranscode_DecodeFrame", "", &buf, 2u);
  }

  v13 = [(NSArray *)self->_frameProperties objectAtIndexedSubscript:index];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E6991A98]];
  v15 = v14;
  if (v14)
  {
    CMTimeMakeFromDictionary(&buf, v14);
    *pts = buf;
    v16 = MEMORY[0x1E695DF90];
    v17 = *MEMORY[0x1E6991AE8];
    v42 = *MEMORY[0x1E6991AE8];
    v43[0] = &unk_1F49BC0D0;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v38 = [v16 dictionaryWithDictionary:v18];

    v19 = VCPSignPostLog();
    v20 = os_signpost_id_generate(v19);

    v21 = VCPSignPostLog();
    v22 = v21;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "MADHEICSTranscode_DecodeBaseImage", "", &buf, 2u);
    }

    ImageForIndex = CMPhotoDecompressionContainerCreateImageForIndex();
    if (!ImageForIndex)
    {
      v24 = VCPSignPostLog();
      v25 = v24;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        LOWORD(buf.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_END, v20, "MADHEICSTranscode_DecodeBaseImage", "", &buf, 2u);
      }

      v26 = MEMORY[0x1E695DF90];
      v40 = v17;
      v41 = &unk_1F49BC0E8;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v28 = [v26 dictionaryWithDictionary:v27];

      v29 = VCPSignPostLog();
      v30 = os_signpost_id_generate(v29);

      v31 = VCPSignPostLog();
      v32 = v31;
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        LOWORD(buf.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "MADHEICSTranscode_DecodeAlphaImage", "", &buf, 2u);
      }

      ImageForIndex = CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex();
      if (!ImageForIndex)
      {
        v33 = VCPSignPostLog();
        v34 = v33;
        if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          LOWORD(buf.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_INTERVAL_END, v30, "MADHEICSTranscode_DecodeAlphaImage", "", &buf, 2u);
        }

        v35 = VCPSignPostLog();
        v36 = v35;
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
        {
          LOWORD(buf.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v36, OS_SIGNPOST_INTERVAL_END, v10, "MADHEICSTranscode_DecodeFrame", "", &buf, 2u);
        }
      }
    }
  }

  else
  {
    ImageForIndex = -18;
  }

  return ImageForIndex;
}

- (int)_addFrameToSequence:(int64_t)sequence basePixelBuffer:(__CVBuffer *)buffer alphaPixelBuffer:(__CVBuffer *)pixelBuffer pts:(id *)pts
{
  v45[6] = *MEMORY[0x1E69E9840];
  v8 = VCPSignPostLog();
  spid = os_signpost_id_generate(v8);

  v9 = VCPSignPostLog();
  v10 = v9;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADHEICSTranscode_EncodeFrame", "", buf, 2u);
  }

  v11 = MEMORY[0x1E695DF90];
  v12 = *MEMORY[0x1E6991978];
  v44[0] = *MEMORY[0x1E69918D0];
  v44[1] = v12;
  v45[0] = &unk_1F49BC100;
  v45[1] = &unk_1F49BC118;
  v44[2] = *MEMORY[0x1E6991970];
  v42 = *MEMORY[0x1E6991B90];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_qualityValue];
  v43 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v45[2] = v14;
  v44[3] = *MEMORY[0x1E6991940];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxDimension];
  v16 = *MEMORY[0x1E69919B8];
  v45[3] = v15;
  v45[4] = MEMORY[0x1E695E118];
  v17 = *MEMORY[0x1E69918A0];
  v44[4] = v16;
  v44[5] = v17;
  v45[5] = MEMORY[0x1E695E118];
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:6];
  v19 = [v11 dictionaryWithDictionary:v18];

  v20 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v19];
  [v20 setObject:&unk_1F49BC130 forKeyedSubscript:*MEMORY[0x1E6991918]];
  v21 = VCPSignPostLog();
  v22 = os_signpost_id_generate(v21);

  v23 = VCPSignPostLog();
  v24 = v23;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "MADHEICSTranscode_EncodeBaseImage", "", buf, 2u);
  }

  *buf = *&pts->var0;
  var3 = pts->var3;
  v41 = 0;
  v25 = CMPhotoCompressionSessionAddImageToSequence();
  if (!v25)
  {
    v26 = VCPSignPostLog();
    v27 = v26;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_END, v22, "MADHEICSTranscode_EncodeBaseImage", "", buf, 2u);
    }

    v28 = VCPSignPostLog();
    v29 = os_signpost_id_generate(v28);

    v30 = VCPSignPostLog();
    v31 = v30;
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "MADHEICSTranscode_EncodeAlphaImage", "", buf, 2u);
    }

    *buf = 0;
    v25 = CMPhotoCompressionSessionAddAuxiliaryImage();
    if (!v25)
    {
      v32 = VCPSignPostLog();
      v33 = v32;
      if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        *v38 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v33, OS_SIGNPOST_INTERVAL_END, v29, "MADHEICSTranscode_EncodeAlphaImage", "", v38, 2u);
      }

      v34 = VCPSignPostLog();
      v35 = v34;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *v38 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v35, OS_SIGNPOST_INTERVAL_END, spid, "MADHEICSTranscode_EncodeFrame", "", v38, 2u);
      }
    }
  }

  return v25;
}

- (int)_transcode
{
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADHEICSTranscode_Transcode", "", buf, 2u);
  }

  _setupTranscode = [(MADHEICSAlphaSequenceTranscoder *)self _setupTranscode];
  if (_setupTranscode)
  {
    return _setupTranscode;
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x2020000000;
  v28 = 0;
  if (self->_frameCount <= 0)
  {
    dispatch_group_wait(self->_encodeGroup, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_22;
  }

  v8 = 0;
  do
  {
    v9 = objc_autoreleasePoolPush();
    v21 = 0;
    cf = 0;
    _setupTranscode = [(MADHEICSAlphaSequenceTranscoder *)self _decodeFrameIndex:v8 basePixelBuffer:&cf alphaPixelBuffer:&v21 pts:v23];
    if (_setupTranscode)
    {
      goto LABEL_10;
    }

    dispatch_semaphore_wait(self->_encodeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v26 + 6))
    {
      dispatch_semaphore_signal(self->_encodeSemaphore);
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    encodeGroup = self->_encodeGroup;
    encodeQueue = self->_encodeQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = __45__MADHEICSAlphaSequenceTranscoder__transcode__block_invoke;
    block[3] = &unk_1F4968E88;
    block[4] = self;
    block[5] = buf;
    v17 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v18 = v21;
    if (v21)
    {
      CFRetain(v21);
    }

    v19 = *v23;
    v20 = v24;
    dispatch_group_async(encodeGroup, encodeQueue, block);
    CF<__CVBuffer *>::~CF(&v18);
    CF<__CVBuffer *>::~CF(&v17);
    v10 = 1;
LABEL_11:
    CF<__CVBuffer *>::~CF(&v21);
    CF<__CVBuffer *>::~CF(&cf);
    objc_autoreleasePoolPop(v9);
    if ((v10 & 1) == 0)
    {
      break;
    }

    ++v8;
  }

  while (v8 < self->_frameCount);
  dispatch_group_wait(self->_encodeGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (!_setupTranscode)
  {
LABEL_22:
    _setupTranscode = *(v26 + 6);
    if (!_setupTranscode)
    {
      _setupTranscode = CMPhotoCompressionSessionEndImageSequence();
      if (!_setupTranscode)
      {
        v13 = VCPSignPostLog();
        v14 = v13;
        if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
        {
          *v23 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v4, "MADHEICSTranscode_Transcode", "", v23, 2u);
        }
      }
    }
  }

  _Block_object_dispose(buf, 8);
  return _setupTranscode;
}

intptr_t __45__MADHEICSAlphaSequenceTranscoder__transcode__block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    v2 = *(a1 + 32);
    v3 = v2[9];
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    *(*(*(a1 + 40) + 8) + 24) = [v2 _addFrameToSequence:v3 basePixelBuffer:v4 alphaPixelBuffer:v5 pts:&v7];
  }

  return dispatch_semaphore_signal(*(*(a1 + 32) + 104));
}

- (id)run
{
  if ([(MADHEICSAlphaSequenceTranscoder *)self _transcode])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to transcode HEIC sequence", buf, 2u);
    }
  }

  else
  {
    cf = 0;
    if (CMPhotoCompressionSessionCloseContainerAndCopyBacking() && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to copy HEIC sequence data", v3, 2u);
    }

    CF<__CVBuffer *>::~CF(&cf);
  }

  return 0;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end