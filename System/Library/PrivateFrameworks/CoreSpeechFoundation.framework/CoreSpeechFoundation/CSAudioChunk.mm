@interface CSAudioChunk
- (CSAudioChunk)initWithCoder:(id)coder;
- (CSAudioChunk)initWithData:(id)data numChannels:(unint64_t)channels numSamples:(unint64_t)samples sampleByteDepth:(unint64_t)depth startSampleCount:(unint64_t)count hostTime:(unint64_t)time arrivalHostTimeToAudioRecorder:(unint64_t)recorder wasBuffered:(BOOL)self0 remoteVAD:(id)self1 isFloat:(BOOL)self2;
- (CSAudioChunk)initWithData:(id)data numChannels:(unint64_t)channels numSamples:(unint64_t)samples sampleByteDepth:(unint64_t)depth startSampleCount:(unint64_t)count hostTime:(unint64_t)time remoteVAD:(id)d isFloat:(BOOL)self0;
- (CSAudioChunk)initWithXPCObject:(id)object;
- (OS_xpc_object)xpcObject;
- (id)chunkForChannel:(unint64_t)channel;
- (id)dataForChannel:(unint64_t)channel;
- (id)dataWithRemoteVADWithScaleFactor:(float)factor numAudioSamplesPerRemoteVAD:(unint64_t)d;
- (id)digitalZeroChunkWithDurationInSec:(double)sec startSampleCount:(unint64_t)count hostTime:(unint64_t)time;
- (id)gainCompensatedChunk;
- (id)remoteVADSubChunkFrom:(unint64_t)from numSamples:(unint64_t)samples numAudioSamplesPerRemoteVAD:(unint64_t)d;
- (id)subChunkFrom:(unint64_t)from numSamples:(unint64_t)samples;
- (id)subChunkFrom:(unint64_t)from numSamples:(unint64_t)samples forChannel:(unint64_t)channel;
- (unint64_t)copySubAudioChunkFrom:(unint64_t)from numSamples:(unint64_t)samples to:(void *)to dstBufferSize:(unint64_t)size;
- (void)encodeWithCoder:(id)coder;
- (void)skipSamplesAtStartSuchThatNumSamplesReceivedSoFar:(unint64_t)far reachesACountOf:(unint64_t)of completionHandler:(id)handler;
- (void)splitAudioChunkSuchThatNumSamplesReceivedSoFar:(unint64_t)far reachesACountOf:(unint64_t)of completionHandler:(id)handler;
@end

@implementation CSAudioChunk

- (OS_xpc_object)xpcObject
{
  keys[8] = *MEMORY[0x1E69E9840];
  keys[0] = "numChannels";
  keys[1] = "numSamples";
  keys[2] = "sampleByteDepth";
  keys[3] = "startSampleCount";
  keys[4] = "hostTime";
  keys[5] = "arrivalHostTimeToAudioRecorder";
  keys[6] = "wasBufferedAudio";
  keys[7] = "isFloat";
  values[0] = xpc_uint64_create(self->_numChannels);
  values[1] = xpc_uint64_create(self->_numSamples);
  values[2] = xpc_uint64_create(self->_sampleByteDepth);
  values[3] = xpc_uint64_create(self->_startSampleCount);
  values[4] = xpc_uint64_create(self->_hostTime);
  values[5] = xpc_uint64_create(self->_arrivalHostTimeToAudioRecorder);
  values[6] = xpc_BOOL_create(self->_wasBuffered);
  values[7] = xpc_BOOL_create(self->_isFloat);
  v3 = xpc_dictionary_create(keys, values, 8uLL);
  data = self->_data;
  if (data && [(NSData *)data length])
  {
    xpc_dictionary_set_data(v3, "data", [(NSData *)self->_data bytes], [(NSData *)self->_data length]);
  }

  remoteVAD = self->_remoteVAD;
  if (remoteVAD && [(NSData *)remoteVAD length])
  {
    xpc_dictionary_set_data(v3, "remoteVAD", [(NSData *)self->_remoteVAD bytes], [(NSData *)self->_remoteVAD length]);
  }

  for (i = 7; i != -1; --i)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v21 = [[v4 alloc] initWithUnsignedInteger:self->_numChannels];
  v20 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:self->_numSamples];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:self->_sampleByteDepth];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:self->_startSampleCount];
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:self->_hostTime];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:self->_arrivalHostTimeToAudioRecorder];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"numChannels"];
  [coderCopy encodeObject:v21 forKey:v10];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"numSamples"];
  [coderCopy encodeObject:v20 forKey:v11];

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sampleByteDepth"];
  [coderCopy encodeObject:v6 forKey:v12];

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"startSampleCount"];
  [coderCopy encodeObject:v7 forKey:v13];

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"hostTime"];
  [coderCopy encodeObject:v8 forKey:v14];

  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"arrivalHostTimeToAudioRecorder"];
  [coderCopy encodeObject:v9 forKey:v15];

  data = self->_data;
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"data"];
  [coderCopy encodeObject:data forKey:v17];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFloat];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"isFloat"];
  [coderCopy encodeObject:v18 forKey:v19];
}

- (CSAudioChunk)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"data"];
  v37 = [coderCopy decodeObjectOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"numChannels"];
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"numSamples"];
  v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
  unsignedIntegerValue2 = [v11 unsignedIntegerValue];

  v13 = objc_opt_class();
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sampleByteDepth"];
  v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
  unsignedIntegerValue3 = [v15 unsignedIntegerValue];

  v17 = objc_opt_class();
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"startSampleCount"];
  v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];
  unsignedLongLongValue = [v19 unsignedLongLongValue];

  v21 = objc_opt_class();
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"hostTime"];
  v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
  unsignedLongLongValue2 = [v23 unsignedLongLongValue];

  v25 = objc_opt_class();
  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"arrivalHostTimeToAudioRecorder"];
  v27 = [coderCopy decodeObjectOfClass:v25 forKey:v26];
  unsignedLongLongValue3 = [v27 unsignedLongLongValue];

  v29 = objc_opt_class();
  v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"isFloat"];
  v31 = [coderCopy decodeObjectOfClass:v29 forKey:v30];

  LOBYTE(coderCopy) = [v31 BOOLValue];
  LOBYTE(v35) = coderCopy;
  LOBYTE(v34) = 0;
  v32 = [(CSAudioChunk *)self initWithData:v37 numChannels:unsignedIntegerValue numSamples:unsignedIntegerValue2 sampleByteDepth:unsignedIntegerValue3 startSampleCount:unsignedLongLongValue hostTime:unsignedLongLongValue2 arrivalHostTimeToAudioRecorder:unsignedLongLongValue3 wasBuffered:v34 remoteVAD:0 isFloat:v35];

  return v32;
}

- (void)splitAudioChunkSuchThatNumSamplesReceivedSoFar:(unint64_t)far reachesACountOf:(unint64_t)of completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ((of - far) <= 0)
  {
    v11 = CSLogCategorySpkrId;
    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[CSAudioChunk splitAudioChunkSuchThatNumSamplesReceivedSoFar:reachesACountOf:completionHandler:]";
      v17 = 2048;
      farCopy = far;
      v19 = 2048;
      ofCopy = of;
      _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s Processing ended at: numSamplesProcessed=%lu, totalSampleCountToReach=%lu", &v15, 0x20u);
    }

    handlerCopy[2](handlerCopy, self, 0, 1);
  }

  else
  {
    numSamples = [(CSAudioChunk *)self numSamples];
    if (numSamples >= of - far)
    {
      v10 = of - far;
    }

    else
    {
      v10 = numSamples;
    }

    if (v10 == [(CSAudioChunk *)self numSamples])
    {
      handlerCopy[2](handlerCopy, self, 0, 0);
    }

    else
    {
      v12 = [(CSAudioChunk *)self subChunkFrom:0 numSamples:v10];
      v13 = [(CSAudioChunk *)self subChunkFrom:v10 numSamples:[(CSAudioChunk *)self numSamples]- v10];
      (handlerCopy)[2](handlerCopy, v12, v13, 0);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)skipSamplesAtStartSuchThatNumSamplesReceivedSoFar:(unint64_t)far reachesACountOf:(unint64_t)of completionHandler:(id)handler
{
  v6 = of - far;
  if (of <= far)
  {
    v9 = *(handler + 2);
    handlerCopy = handler;
    v9();
  }

  else
  {
    handlerCopy2 = handler;
    numSamples = [(CSAudioChunk *)self numSamples];
    if (v6 >= numSamples)
    {
      v6 = numSamples;
    }

    handlerCopy = [(CSAudioChunk *)self subChunkFrom:v6 numSamples:[(CSAudioChunk *)self numSamples]- v6];
    handlerCopy2[2](handlerCopy2);
  }
}

- (id)digitalZeroChunkWithDurationInSec:(double)sec startSampleCount:(unint64_t)count hostTime:(unint64_t)time
{
  +[CSConfig inputRecordingSampleRate];
  v10 = (v9 * sec * self->_sampleByteDepth * self->_numChannels);
  v11 = [MEMORY[0x1E695DF88] dataWithLength:v10];
  bzero([v11 bytes], v10);
  v12 = [CSAudioChunk alloc];
  numChannels = self->_numChannels;
  +[CSConfig inputRecordingSampleRate];
  LOBYTE(v17) = self->_isFloat;
  v15 = [(CSAudioChunk *)v12 initWithData:v11 numChannels:numChannels numSamples:(v14 * sec) sampleByteDepth:self->_sampleByteDepth startSampleCount:count hostTime:time remoteVAD:0 isFloat:v17];

  return v15;
}

- (id)gainCompensatedChunk
{
  v3 = [(NSData *)self->_data mutableCopy];
  if (+[CSConfig inputRecordingIsFloat])
  {
    [CSFLPCMTypeConverter apply12dBGainToFloatBuffer:v3];
  }

  else
  {
    [CSFLPCMTypeConverter apply12dBGainToShortBuffer:v3];
  }

  v4 = [CSAudioChunk alloc];
  LOBYTE(v8) = self->_isFloat;
  LOBYTE(v7) = self->_wasBuffered;
  v5 = [(CSAudioChunk *)v4 initWithData:v3 numChannels:self->_numChannels numSamples:self->_numSamples sampleByteDepth:self->_sampleByteDepth startSampleCount:self->_startSampleCount hostTime:self->_hostTime arrivalHostTimeToAudioRecorder:self->_arrivalHostTimeToAudioRecorder wasBuffered:v7 remoteVAD:self->_remoteVAD isFloat:v8];

  return v5;
}

- (id)remoteVADSubChunkFrom:(unint64_t)from numSamples:(unint64_t)samples numAudioSamplesPerRemoteVAD:(unint64_t)d
{
  if (self->_remoteVAD)
  {
    v9 = samples / d;
    v10 = [MEMORY[0x1E695DF88] dataWithLength:samples / d];
    bytes = [v10 bytes];
    bytes2 = [(NSData *)self->_remoteVAD bytes];
    if (d <= samples)
    {
      v13 = bytes2;
      v14 = 0;
      v15 = from / d;
      do
      {
        if (v15 + v14 >= [(NSData *)self->_remoteVAD length])
        {
          v16 = 0;
        }

        else
        {
          v16 = v13[v15 + v14];
        }

        *(bytes + v14++) = v16;
      }

      while (v14 < v9);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)copySubAudioChunkFrom:(unint64_t)from numSamples:(unint64_t)samples to:(void *)to dstBufferSize:(unint64_t)size
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = self->_sampleByteDepth * samples * self->_numChannels;
  if (v6 <= size)
  {
    samplesCopy = samples;
    bytes = [(NSData *)self->_data bytes];
    if (self->_numChannels)
    {
      v14 = bytes;
      v15 = 0;
      sampleByteDepth = self->_sampleByteDepth;
      v17 = sampleByteDepth * from;
      do
      {
        memcpy(to, &v14[v17], sampleByteDepth * samplesCopy);
        sampleByteDepth = self->_sampleByteDepth;
        v14 += sampleByteDepth * self->_numSamples;
        to = to + sampleByteDepth * samplesCopy;
        ++v15;
      }

      while (v15 < self->_numChannels);
    }
  }

  else
  {
    sizeCopy = size;
    v8 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315650;
      v21 = "[CSAudioChunk copySubAudioChunkFrom:numSamples:to:dstBufferSize:]";
      v22 = 1024;
      v23 = sizeCopy;
      v24 = 1024;
      v25 = v6;
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s Unable to write subChunk into dstBufferSize(%d) : required buffer size (%d)", &v20, 0x18u);
    }

    samplesCopy = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return samplesCopy;
}

- (id)subChunkFrom:(unint64_t)from numSamples:(unint64_t)samples
{
  v38 = *MEMORY[0x1E69E9840];
  numSamples = self->_numSamples;
  if (!from && numSamples == samples)
  {
    selfCopy = self;
LABEL_4:
    v9 = selfCopy;
    goto LABEL_15;
  }

  if (samples + from <= numSamples)
  {
    numChannels = self->_numChannels;
    if (numChannels == 1)
    {
      selfCopy = [(CSAudioChunk *)self subChunkFrom:from numSamples:samples forChannel:0];
      goto LABEL_4;
    }

    v12 = self->_sampleByteDepth * samples;
    numChannels = [MEMORY[0x1E695DF88] dataWithCapacity:v12 * numChannels];
    if (self->_numChannels)
    {
      v14 = 0;
      sampleByteDepth = self->_sampleByteDepth;
      v16 = sampleByteDepth * from;
      v17 = self->_numSamples * sampleByteDepth;
      do
      {
        v18 = [(NSData *)self->_data subdataWithRange:v16, v12];
        [numChannels appendData:v18];

        ++v14;
        v16 += v17;
      }

      while (v14 < self->_numChannels);
    }

    startSampleCount = self->_startSampleCount;
    hostTime = self->_hostTime;
    +[CSConfig inputRecordingSampleRate];
    v21 = [CSFTimeUtils hostTimeFromSampleCount:startSampleCount + from anchorHostTime:hostTime anchorSampleCount:startSampleCount sampleRate:?];
    arrivalHostTimeToAudioRecorder = self->_arrivalHostTimeToAudioRecorder;
    v23 = self->_startSampleCount;
    +[CSConfig inputRecordingSampleRate];
    v24 = [CSFTimeUtils hostTimeFromSampleCount:startSampleCount + from anchorHostTime:arrivalHostTimeToAudioRecorder anchorSampleCount:v23 sampleRate:?];
    v25 = [CSAudioChunk alloc];
    LOBYTE(v29) = self->_isFloat;
    LOBYTE(v28) = self->_wasBuffered;
    v9 = [(CSAudioChunk *)v25 initWithData:numChannels numChannels:self->_numChannels numSamples:samples sampleByteDepth:self->_sampleByteDepth startSampleCount:startSampleCount + from hostTime:v21 arrivalHostTimeToAudioRecorder:v24 wasBuffered:v28 remoteVAD:0 isFloat:v29];
  }

  else
  {
    v10 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v31 = "[CSAudioChunk subChunkFrom:numSamples:]";
      v32 = 2050;
      fromCopy = from;
      v34 = 2050;
      samplesCopy = samples;
      v36 = 2050;
      v37 = numSamples;
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s Cannot generate subChunk if it reuqest more than it has : %{public}tu %{public}tu %{public}tu", buf, 0x2Au);
    }

    v9 = 0;
  }

LABEL_15:
  v26 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)subChunkFrom:(unint64_t)from numSamples:(unint64_t)samples forChannel:(unint64_t)channel
{
  v41 = *MEMORY[0x1E69E9840];
  if (!from && !channel && self->_numSamples == samples && self->_numChannels == 1)
  {
    selfCopy = self;
    goto LABEL_13;
  }

  numChannels = self->_numChannels;
  if (numChannels <= channel)
  {
    v15 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v34 = "[CSAudioChunk subChunkFrom:numSamples:forChannel:]";
      v35 = 2050;
      fromCopy = channel;
      v37 = 2050;
      samplesCopy = numChannels;
      v12 = "%s Cannot generate subChunk since channel(%{public}tu) is larger than number of channels(%{public}tu)";
      v13 = v15;
      v14 = 32;
      goto LABEL_17;
    }

LABEL_7:
    selfCopy = 0;
    goto LABEL_13;
  }

  numSamples = self->_numSamples;
  if (samples + from > numSamples)
  {
    v11 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v34 = "[CSAudioChunk subChunkFrom:numSamples:forChannel:]";
      v35 = 2050;
      fromCopy = from;
      v37 = 2050;
      samplesCopy = samples;
      v39 = 2050;
      v40 = numSamples;
      v12 = "%s Cannot generate subChunk if it reuqest more than it has : %{public}tu %{public}tu %{public}tu";
      v13 = v11;
      v14 = 42;
LABEL_17:
      _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  sampleByteDepth = self->_sampleByteDepth;
  v18 = sampleByteDepth * samples;
  v19 = sampleByteDepth * (from + numSamples * channel);
  samples = [MEMORY[0x1E695DF88] dataWithCapacity:sampleByteDepth * samples];
  v21 = [(NSData *)self->_data subdataWithRange:v19, v18];
  [samples appendData:v21];

  startSampleCount = self->_startSampleCount;
  hostTime = self->_hostTime;
  +[CSConfig inputRecordingSampleRate];
  v24 = [CSFTimeUtils hostTimeFromSampleCount:startSampleCount + from anchorHostTime:hostTime anchorSampleCount:startSampleCount sampleRate:?];
  arrivalHostTimeToAudioRecorder = self->_arrivalHostTimeToAudioRecorder;
  v26 = self->_startSampleCount;
  +[CSConfig inputRecordingSampleRate];
  v27 = [CSFTimeUtils hostTimeFromSampleCount:startSampleCount + from anchorHostTime:arrivalHostTimeToAudioRecorder anchorSampleCount:v26 sampleRate:?];
  v28 = [CSAudioChunk alloc];
  LOBYTE(v32) = self->_isFloat;
  LOBYTE(v31) = self->_wasBuffered;
  selfCopy = [(CSAudioChunk *)v28 initWithData:samples numChannels:1 numSamples:samples sampleByteDepth:self->_sampleByteDepth startSampleCount:startSampleCount + from hostTime:v24 arrivalHostTimeToAudioRecorder:v27 wasBuffered:v31 remoteVAD:0 isFloat:v32];

LABEL_13:
  v29 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (id)dataWithRemoteVADWithScaleFactor:(float)factor numAudioSamplesPerRemoteVAD:(unint64_t)d
{
  v7 = [MEMORY[0x1E695DF88] dataWithLength:(self->_numSamples + self->_numSamples * self->_numChannels) * self->_sampleByteDepth];
  memcpy([v7 bytes], -[NSData bytes](self->_data, "bytes"), self->_numSamples * self->_sampleByteDepth * self->_numChannels);
  bytes = [(NSData *)self->_remoteVAD bytes];
  bytes2 = [v7 bytes];
  if (self->_numSamples)
  {
    v10 = bytes2;
    v11 = 0;
    do
    {
      if (v11 / d >= [(NSData *)self->_remoteVAD length])
      {
        LOWORD(v13) = 0;
      }

      else
      {
        LOBYTE(v12) = bytes[v11 / d];
        v13 = (v12 * factor);
      }

      numSamples = self->_numSamples;
      *(v10 + 2 * self->_numChannels * numSamples + 2 * v11++) = v13;
    }

    while (v11 < numSamples);
  }

  return v7;
}

- (id)dataForChannel:(unint64_t)channel
{
  if (channel || self->_numChannels != 1)
  {
    numSamples = self->_numSamples;
    sampleByteDepth = self->_sampleByteDepth;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = __Block_byref_object_copy__5792;
    v8[4] = __Block_byref_object_dispose__5793;
    selfCopy = self;
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:-[NSData bytes](selfCopy->_data length:"bytes") + numSamples * sampleByteDepth * channel deallocator:?];
    _Block_object_dispose(v8, 8);
  }

  else
  {
    v4 = self->_data;
  }

  return v4;
}

void __31__CSAudioChunk_dataForChannel___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (id)chunkForChannel:(unint64_t)channel
{
  v27 = *MEMORY[0x1E69E9840];
  numChannels = self->_numChannels;
  if (numChannels <= channel)
  {
    v16 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "[CSAudioChunk chunkForChannel:]";
      v23 = 1024;
      channelCopy = channel;
      v25 = 1024;
      v26 = numChannels;
      _os_log_error_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_ERROR, "%s channelId %d out of bound %d", buf, 0x18u);
    }

    v15 = 0;
  }

  else
  {
    v6 = [CSAudioChunk alloc];
    v7 = [(CSAudioChunk *)self dataForChannel:channel];
    numSamples = self->_numSamples;
    sampleByteDepth = self->_sampleByteDepth;
    startSampleCount = self->_startSampleCount;
    hostTime = self->_hostTime;
    wasBuffered = self->_wasBuffered;
    arrivalHostTimeToAudioRecorder = self->_arrivalHostTimeToAudioRecorder;
    v14 = [(NSData *)self->_remoteVAD copy];
    LOBYTE(v20) = self->_isFloat;
    LOBYTE(v19) = wasBuffered;
    v15 = [(CSAudioChunk *)v6 initWithData:v7 numChannels:1 numSamples:numSamples sampleByteDepth:sampleByteDepth startSampleCount:startSampleCount hostTime:hostTime arrivalHostTimeToAudioRecorder:arrivalHostTimeToAudioRecorder wasBuffered:v19 remoteVAD:v14 isFloat:v20];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

- (CSAudioChunk)initWithXPCObject:(id)object
{
  objectCopy = object;
  v19.receiver = self;
  v19.super_class = CSAudioChunk;
  v5 = [(CSAudioChunk *)&v19 init];
  if (v5)
  {
    v5->_numChannels = xpc_dictionary_get_uint64(objectCopy, "numChannels");
    v5->_numSamples = xpc_dictionary_get_uint64(objectCopy, "numSamples");
    v5->_sampleByteDepth = xpc_dictionary_get_uint64(objectCopy, "sampleByteDepth");
    v5->_startSampleCount = xpc_dictionary_get_uint64(objectCopy, "startSampleCount");
    v5->_hostTime = xpc_dictionary_get_uint64(objectCopy, "hostTime");
    v5->_arrivalHostTimeToAudioRecorder = xpc_dictionary_get_uint64(objectCopy, "arrivalHostTimeToAudioRecorder");
    v5->_wasBuffered = xpc_dictionary_get_BOOL(objectCopy, "wasBufferedAudio");
    v5->_isFloat = xpc_dictionary_get_BOOL(objectCopy, "isFloat");
    length = 0;
    data = xpc_dictionary_get_data(objectCopy, "data", &length);
    if (data && length)
    {
      v7 = data;
      v8 = objc_alloc(MEMORY[0x1E695DEF0]);
      v9 = [v8 initWithBytes:v7 length:length];
      v10 = v5->_data;
      v5->_data = v9;
    }

    v17 = 0;
    v11 = xpc_dictionary_get_data(objectCopy, "remoteVAD", &v17);
    if (v11 && v17)
    {
      v12 = v11;
      v13 = objc_alloc(MEMORY[0x1E695DEF0]);
      v14 = [v13 initWithBytes:v12 length:v17];
      remoteVAD = v5->_remoteVAD;
      v5->_remoteVAD = v14;
    }
  }

  return v5;
}

- (CSAudioChunk)initWithData:(id)data numChannels:(unint64_t)channels numSamples:(unint64_t)samples sampleByteDepth:(unint64_t)depth startSampleCount:(unint64_t)count hostTime:(unint64_t)time remoteVAD:(id)d isFloat:(BOOL)self0
{
  LOBYTE(v12) = float;
  LOBYTE(v11) = 0;
  return [(CSAudioChunk *)self initWithData:data numChannels:channels numSamples:samples sampleByteDepth:depth startSampleCount:count hostTime:time arrivalHostTimeToAudioRecorder:0 wasBuffered:v11 remoteVAD:d isFloat:v12];
}

- (CSAudioChunk)initWithData:(id)data numChannels:(unint64_t)channels numSamples:(unint64_t)samples sampleByteDepth:(unint64_t)depth startSampleCount:(unint64_t)count hostTime:(unint64_t)time arrivalHostTimeToAudioRecorder:(unint64_t)recorder wasBuffered:(BOOL)self0 remoteVAD:(id)self1 isFloat:(BOOL)self2
{
  dataCopy = data;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = CSAudioChunk;
  v20 = [(CSAudioChunk *)&v25 init];
  v21 = v20;
  if (v20)
  {
    recorderCopy = recorder;
    objc_storeStrong(&v20->_data, data);
    v21->_numChannels = channels;
    v21->_numSamples = samples;
    v21->_sampleByteDepth = depth;
    v21->_startSampleCount = count;
    v21->_hostTime = time;
    objc_storeStrong(&v21->_remoteVAD, d);
    v21->_wasBuffered = buffered;
    v21->_isFloat = float;
    if (!recorder)
    {
      recorderCopy = mach_absolute_time();
    }

    v21->_arrivalHostTimeToAudioRecorder = recorderCopy;
  }

  return v21;
}

@end