@interface EARAudioReader
- (EARAudioReader)initWithFileURL:(id)a3 sampleRate:(unint64_t)a4;
- (id)_avf_enumerateAudioBuffersWithBlock:(id)a3;
- (id)_opx_enumerateAudioBuffersWithBlock:(id)a3;
- (id)_opx_enumeratePacketsWithBlock:(id)a3;
- (id)enumerateAudioBuffersWithBlock:(id)a3;
@end

@implementation EARAudioReader

- (EARAudioReader)initWithFileURL:(id)a3 sampleRate:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = EARAudioReader;
  v7 = [(EARAudioReader *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    fileURL = v7->_fileURL;
    v7->_fileURL = v8;

    v7->_sampleRate = a4;
  }

  return v7;
}

- (id)enumerateAudioBuffersWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self->_fileURL pathExtension];
  v6 = [v5 lowercaseString];
  v7 = [v6 isEqual:@"opx"];

  if (v7)
  {
    [(EARAudioReader *)self _opx_enumerateAudioBuffersWithBlock:v4];
  }

  else
  {
    [(EARAudioReader *)self _avf_enumerateAudioBuffersWithBlock:v4];
  }
  v8 = ;

  return v8;
}

- (id)_avf_enumerateAudioBuffersWithBlock:(id)a3
{
  v33[6] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E6988170] assetWithURL:self->_fileURL];
  v31 = 0;
  v7 = [MEMORY[0x1E6987E70] assetReaderWithAsset:v6 error:&v31];
  v8 = v31;
  v9 = v8;
  if (v7)
  {
    v10 = *MEMORY[0x1E69582B8];
    v33[0] = &unk_1F2D541A0;
    v11 = *MEMORY[0x1E6958340];
    v32[0] = v10;
    v32[1] = v11;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sampleRate];
    v13 = *MEMORY[0x1E6958308];
    v33[1] = v12;
    v33[2] = &unk_1F2D541B8;
    v14 = *MEMORY[0x1E69582C0];
    v32[2] = v13;
    v32[3] = v14;
    v15 = *MEMORY[0x1E69582D8];
    v33[3] = &unk_1F2D541D0;
    v33[4] = MEMORY[0x1E695E110];
    v16 = *MEMORY[0x1E69582E0];
    v32[4] = v15;
    v32[5] = v16;
    v33[5] = MEMORY[0x1E695E110];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:6];

    v18 = MEMORY[0x1E6987E88];
    v19 = [v6 tracksWithMediaType:*MEMORY[0x1E69875A8]];
    v20 = [v18 assetReaderAudioMixOutputWithAudioTracks:v19 audioSettings:v17];

    if (!v20)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"EARAudioReader.mm" lineNumber:68 description:&stru_1F2D44B60];
    }

    if (([v7 canAddOutput:v20] & 1) == 0)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:a2 object:self file:@"EARAudioReader.mm" lineNumber:70 description:&stru_1F2D44B60];
    }

    [v7 addOutput:v20];
    [v7 startReading];
    while (1)
    {
      v21 = [v20 copyNextSampleBuffer];
      v22 = v21;
      if (!v21)
      {
        break;
      }

      totalLengthOut = 0;
      dataPointerOut = 0;
      DataBuffer = CMSampleBufferGetDataBuffer(v21);
      DataPointer = CMBlockBufferGetDataPointer(DataBuffer, 0, 0, &totalLengthOut, &dataPointerOut);
      if (DataPointer)
      {
        v22 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:DataPointer userInfo:0];
        break;
      }

      v28 = 0;
      v5[2](v5, dataPointerOut, totalLengthOut >> 1, &v28);
      if (v28 == 1)
      {
        v22 = 0;
        break;
      }

      CFRelease(v22);
    }
  }

  else
  {
    v22 = v8;
  }

  return v22;
}

- (id)_opx_enumerateAudioBuffersWithBlock:(id)a3
{
  v4 = a3;
  inSourceFormat.mSampleRate = self->_sampleRate;
  *&inSourceFormat.mFormatID = xmmword_1B5B017F0;
  *&inSourceFormat.mBytesPerFrame = xmmword_1B5B01800;
  inDestinationFormat.mSampleRate = inSourceFormat.mSampleRate;
  *&inDestinationFormat.mFormatID = xmmword_1B5B01810;
  *&inDestinationFormat.mBytesPerFrame = xmmword_1B5B01820;
  outAudioConverter = 0;
  v5 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, &outAudioConverter);
  v6 = v5;
  if (v5)
  {
    v7 = EARLogger::QuasarOSLogger(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(EARAudioReader *)v6 _opx_enumerateAudioBuffersWithBlock:v7];
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v6 userInfo:0];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:640];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__EARAudioReader__opx_enumerateAudioBuffersWithBlock___block_invoke;
    v13[3] = &unk_1E7C1B6D0;
    v17 = 320;
    v14 = v9;
    v16 = outAudioConverter;
    v15 = v4;
    v10 = v9;
    v11 = [(EARAudioReader *)self _opx_enumeratePacketsWithBlock:v13];

    v8 = 0;
  }

  return v8;
}

void __54__EARAudioReader__opx_enumerateAudioBuffersWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  outOutputData.mNumberBuffers = 1;
  outOutputData.mBuffers[0].mData = [*(a1 + 32) mutableBytes];
  v4 = [*(a1 + 32) length];
  outOutputData.mBuffers[0].mNumberChannels = 1;
  outOutputData.mBuffers[0].mDataByteSize = v4;
  ioOutputDataPacketSize = *(a1 + 56);
  v5 = *(a1 + 48);
  inInputDataProcUserData[0] = MEMORY[0x1E69E9820];
  inInputDataProcUserData[1] = 3221225472;
  inInputDataProcUserData[2] = __54__EARAudioReader__opx_enumerateAudioBuffersWithBlock___block_invoke_2;
  inInputDataProcUserData[3] = &unk_1E7C1B6A8;
  v14 = v18;
  v15 = &v20;
  v6 = v3;
  v13 = v6;
  v7 = AudioConverterFillComplexBuffer(v5, AudioConverterFillComplexBuffer_BlockInvoke, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, 0);
  v8 = v7;
  if (v7 != 1836086393 && v7)
  {
    v11 = EARLogger::QuasarOSLogger(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __54__EARAudioReader__opx_enumerateAudioBuffersWithBlock___block_invoke_cold_2(v8, v11);
    }

    goto LABEL_13;
  }

  if (!ioOutputDataPacketSize || !outOutputData.mNumberBuffers)
  {
LABEL_13:
    (*(*(a1 + 40) + 16))();
    goto LABEL_14;
  }

  v9 = 2 * ioOutputDataPacketSize;
  if (2 * ioOutputDataPacketSize <= outOutputData.mBuffers[0].mDataByteSize)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_13;
  }

  v10 = EARLogger::QuasarOSLogger(v7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __54__EARAudioReader__opx_enumerateAudioBuffersWithBlock___block_invoke_cold_1(v9, &outOutputData.mBuffers[0].mDataByteSize, v10);
  }

LABEL_14:
  _Block_object_dispose(v18, 8);
}

uint64_t __54__EARAudioReader__opx_enumerateAudioBuffersWithBlock___block_invoke_2(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    result = 1836086393;
    *a2 = 0;
    *(a3 + 16) = 0;
    *(a3 + 12) = 0;
    if (a4)
    {
      v9 = *(a1 + 48);
      *v9 = 0;
      v9[1] = 0;
      *a4 = v9;
    }
  }

  else if (*a2 == 1)
  {
    v10 = [*(a1 + 32) length];
    *(a3 + 16) = [*(a1 + 32) bytes];
    *(a3 + 12) = v10;
    if (a4)
    {
      v11 = *(a1 + 48);
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 12) = v10;
      *a4 = v11;
    }

    result = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v12 = EARLogger::QuasarOSLogger(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __54__EARAudioReader__opx_enumerateAudioBuffersWithBlock___block_invoke_2_cold_1(a2, v12);
    }

    return 1752524863;
  }

  return result;
}

- (id)_opx_enumeratePacketsWithBlock:(id)a3
{
  v4 = a3;
  fileURL = self->_fileURL;
  v21 = 0;
  v6 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:fileURL error:&v21];
  v7 = v21;
  v8 = v7;
  if (!v6)
  {
    v8 = v7;
    v15 = v8;
    goto LABEL_14;
  }

  while (2)
  {
    v9 = 0;
    v20 = 0x80;
    do
    {
      v19 = 0;
      v10 = [v6 readDataUpToLength:1 error:&v19];
      v11 = v19;

      if (!v10)
      {
        v15 = v11;
LABEL_13:

        v8 = v11;
        goto LABEL_14;
      }

      if ([v10 length] != 1)
      {
        v15 = 0;
        goto LABEL_13;
      }

      [v10 getBytes:&v20 length:1];
      v12 = v20 & 0x7F | (v9 << 7);

      v8 = v11;
      v9 = v12;
    }

    while (v20 < 0);
    v18 = 0;
    v13 = [v6 readDataUpToLength:v12 error:&v18];
    v8 = v18;

    if (!v13)
    {
      v15 = v8;
LABEL_19:

      break;
    }

    if ([v13 length] != v12)
    {
      v15 = 0;
      goto LABEL_19;
    }

    v17 = 0;
    v4[2](v4, v13, &v17);
    v14 = v17;

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_14:

  return v15;
}

- (void)_opx_enumerateAudioBuffersWithBlock:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B501D000, a2, OS_LOG_TYPE_ERROR, "Could not make Opus decoder: %d", v2, 8u);
}

void __54__EARAudioReader__opx_enumerateAudioBuffersWithBlock___block_invoke_cold_1(int a1, int *a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = v3;
  _os_log_error_impl(&dword_1B501D000, log, OS_LOG_TYPE_ERROR, "Opus ecoder gave us %d bytes bytes but we really only expected %d", v4, 0xEu);
}

void __54__EARAudioReader__opx_enumerateAudioBuffersWithBlock___block_invoke_cold_2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B501D000, a2, OS_LOG_TYPE_ERROR, "Could not finish Opus decoding for offline only mode: %d", v2, 8u);
}

void __54__EARAudioReader__opx_enumerateAudioBuffersWithBlock___block_invoke_2_cold_1(unsigned int *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_1B501D000, a2, OS_LOG_TYPE_ERROR, "Only expecting to get 1 Opus packet at a time, not %lu", &v3, 0xCu);
}

@end