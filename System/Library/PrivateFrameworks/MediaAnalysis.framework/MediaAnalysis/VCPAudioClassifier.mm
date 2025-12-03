@interface VCPAudioClassifier
+ (id)sharedFeaturePrintRequest:(id)request version:(int)version;
+ (void)purgeCachedModels;
- (VCPAudioClassifier)initWithTypes:(unint64_t)types;
- (id)results;
- (int)finalizeAnalysisAtTime:(id *)time;
- (int)processAudioSamples:(AudioBufferList *)samples timestamp:(AudioTimeStamp *)timestamp;
- (int)setupWithSample:(opaqueCMSampleBuffer *)sample trackDuration:(id *)duration resultHandler:(id)handler andSampleBatchSize:(int)size;
- (void)cacheModelsForClassifySoundRequest:(id)request requestIdentifier:(id)identifier;
- (void)cacheModelsForDetectSoundRequest:(id)request requestIdentifier:(id)identifier;
@end

@implementation VCPAudioClassifier

+ (void)purgeCachedModels
{
  v17[8] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E697B860];
  v17[0] = *MEMORY[0x1E697B858];
  v17[1] = v2;
  v3 = *MEMORY[0x1E697B870];
  v17[2] = *MEMORY[0x1E697B868];
  v17[3] = v3;
  v4 = *MEMORY[0x1E697B880];
  v17[4] = *MEMORY[0x1E697B878];
  v17[5] = v4;
  v5 = *MEMORY[0x1E697B850];
  v17[6] = *MEMORY[0x1E697B848];
  v17[7] = v5;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:8];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v6 = v13 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = +[VCPSharedInstanceManager sharedManager];
        [v11 resetSharedInstanceWithIdentifier:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (VCPAudioClassifier)initWithTypes:(unint64_t)types
{
  v16.receiver = self;
  v16.super_class = VCPAudioClassifier;
  v4 = [(VCPAudioClassifier *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_analysisTypes = types;
    v4->_framePosition = 0;
    v4->_sampleRate = 16000.0;
    array = [MEMORY[0x1E695DF70] array];
    detectors = v5->_detectors;
    v5->_detectors = array;

    array2 = [MEMORY[0x1E695DF70] array];
    classifiers = v5->_classifiers;
    v5->_classifiers = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    embeddingGenerators = v5->_embeddingGenerators;
    v5->_embeddingGenerators = array3;

    array4 = [MEMORY[0x1E695DF70] array];
    classifiers300 = v5->_classifiers300;
    v5->_classifiers300 = array4;

    v14 = v5;
  }

  return v5;
}

- (void)cacheModelsForDetectSoundRequest:(id)request requestIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  identifierCopy = identifier;
  HasANE = DeviceHasANE();
  if (requestCopy)
  {
    v8 = HasANE;
  }

  else
  {
    v8 = 0;
  }

  if (identifierCopy && v8)
  {
    v9 = +[VCPSharedInstanceManager sharedManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__VCPAudioClassifier_cacheModelsForDetectSoundRequest_requestIdentifier___block_invoke;
    v14[3] = &unk_1E8350188;
    v15 = requestCopy;
    v10 = [v9 sharedInstanceWithIdentifier:identifierCopy andCreationBlock:v14];
    v11 = v10 == 0;

    if (v11 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      *buf = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = identifierCopy;
      v13 = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] failed to retain models for %@", buf, 0x16u);
    }
  }
}

- (void)cacheModelsForClassifySoundRequest:(id)request requestIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  identifierCopy = identifier;
  HasANE = DeviceHasANE();
  if (requestCopy)
  {
    v8 = HasANE;
  }

  else
  {
    v8 = 0;
  }

  if (identifierCopy && v8)
  {
    v9 = +[VCPSharedInstanceManager sharedManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__VCPAudioClassifier_cacheModelsForClassifySoundRequest_requestIdentifier___block_invoke;
    v14[3] = &unk_1E8350188;
    v15 = requestCopy;
    v10 = [v9 sharedInstanceWithIdentifier:identifierCopy andCreationBlock:v14];
    v11 = v10 == 0;

    if (v11 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      *buf = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = identifierCopy;
      v13 = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] failed to retain models for %@", buf, 0x16u);
    }
  }
}

+ (id)sharedFeaturePrintRequest:(id)request version:(int)version
{
  requestCopy = request;
  v6 = +[VCPSharedInstanceManager sharedManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__VCPAudioClassifier_sharedFeaturePrintRequest_version___block_invoke;
  v9[3] = &__block_descriptor_36_e34___SNCreateFeaturePrintRequest_8__0l;
  versionCopy = version;
  v7 = [v6 sharedInstanceWithIdentifier:requestCopy andCreationBlock:v9];

  return v7;
}

id __56__VCPAudioClassifier_sharedFeaturePrintRequest_version___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E697B820]);
  v3 = *(a1 + 32);
  v9 = 0;
  v4 = [v2 initWithFeaturePrintType:6 version:v3 error:&v9];
  v5 = v9;
  if (v5 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [v5 description];
    LODWORD(buf.value) = 138412290;
    *(&buf.value + 4) = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
  }

  if (v4)
  {
    CMTimeMake(&v8, 2, 1);
    buf = v8;
    [v4 setWindowDuration:&buf];
    [v4 setOverlapFactor:0.0];
  }

  return v4;
}

- (int)setupWithSample:(opaqueCMSampleBuffer *)sample trackDuration:(id *)duration resultHandler:(id)handler andSampleBatchSize:(int)size
{
  v6 = *&size;
  v96[7] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  FormatDescription = CMSampleBufferGetFormatDescription(sample);
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
  if (StreamBasicDescription)
  {
    v77 = [objc_alloc(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:1 channels:StreamBasicDescription->mSampleRate];
    v11 = [objc_alloc(MEMORY[0x1E697B808]) initWithFormat:v77];
    SNAnalyzer = self->_SNAnalyzer;
    self->_SNAnalyzer = v11;

    if (!self->_SNAnalyzer || (mSampleRate = StreamBasicDescription->mSampleRate, self->_sampleRate = mSampleRate, v14 = [objc_alloc(MEMORY[0x1E6958440]) initWithPCMFormat:v77 frameCapacity:v6], pcmBuffer = self->_pcmBuffer, self->_pcmBuffer = v14, pcmBuffer, (v16 = self->_pcmBuffer) == 0))
    {
      v39 = -18;
LABEL_47:

      goto LABEL_48;
    }

    [(AVAudioPCMBuffer *)v16 setFrameLength:v6];
    memset(&v84, 0, sizeof(v84));
    CMSampleBufferGetPresentationTimeStamp(&v84, sample);
    v18 = *MEMORY[0x1E697B860];
    v90[0] = *MEMORY[0x1E697B858];
    v17 = v90[0];
    v90[1] = v18;
    v96[0] = &unk_1F49BB178;
    v96[1] = &unk_1F49BB188;
    v20 = *MEMORY[0x1E697B870];
    v91 = *MEMORY[0x1E697B868];
    v19 = v91;
    v92 = v20;
    v96[2] = &unk_1F49BB198;
    v96[3] = &unk_1F49BB1A8;
    v22 = *MEMORY[0x1E697B880];
    v93 = *MEMORY[0x1E697B878];
    v21 = v93;
    v94 = v22;
    v70 = v22;
    v96[4] = &unk_1F49BB1B8;
    v96[5] = &unk_1F49BB1C8;
    v95 = *MEMORY[0x1E697B848];
    v71 = v95;
    LODWORD(v23) = 1061997773;
    v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
    v96[6] = v24;
    v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v90 count:7];

    v88[0] = v17;
    v88[1] = v18;
    v89[0] = @"ApplauseResults";
    v89[1] = @"BabbleResults";
    v88[2] = v19;
    v88[3] = v20;
    v89[2] = @"CheeringResults";
    v89[3] = @"LaughterResults";
    v88[4] = v21;
    v88[5] = v70;
    v89[4] = @"MusicResults";
    v89[5] = @"VoiceResults";
    v25 = *MEMORY[0x1E697B850];
    v88[6] = v71;
    v88[7] = v25;
    v69 = v25;
    v89[6] = @"AudioQualityResults";
    v89[7] = @"SoundClassificationResults";
    v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:8];
    analysisTypes = self->_analysisTypes;
    if ((analysisTypes & 0x200000) != 0)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v86[0] = v17;
      v86[1] = v18;
      v86[2] = v19;
      v86[3] = v20;
      v86[4] = v21;
      obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:5];
      v27 = [obj countByEnumeratingWithState:&v80 objects:v87 count:16];
      if (v27)
      {
        v28 = *v81;
        while (2)
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v81 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v80 + 1) + 8 * i);
            v31 = [objc_alloc(MEMORY[0x1E697B828]) initWithSoundIdentifier:v30];
            [(VCPAudioClassifier *)self cacheModelsForDetectSoundRequest:v31 requestIdentifier:v30];
            v32 = [VCPSoundDetector alloc];
            time = v84;
            v33 = [v74 objectForKeyedSubscript:v30];
            [v33 floatValue];
            v35 = v34;
            v36 = [v75 objectForKeyedSubscript:v30];
            LODWORD(v37) = v35;
            v38 = [(VCPSoundDetector *)v32 initWithTrackStart:&time threshold:v36 resultsKey:v37];

            if (!v31 || !v38 || ![(SNAudioStreamAnalyzer *)self->_SNAnalyzer addRequest:v31 withObserver:v38 error:0])
            {

              goto LABEL_44;
            }

            [(NSMutableArray *)self->_detectors addObject:v38];
          }

          v27 = [obj countByEnumeratingWithState:&v80 objects:v87 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      analysisTypes = self->_analysisTypes;
    }

    if ((analysisTypes & 0x10) != 0)
    {
      obj = [objc_alloc(MEMORY[0x1E697B828]) initWithSoundIdentifier:v70];
      [VCPAudioClassifier cacheModelsForDetectSoundRequest:"cacheModelsForDetectSoundRequest:requestIdentifier:" requestIdentifier:?];
      v40 = [VCPSoundDetector alloc];
      time = v84;
      v41 = [v74 objectForKeyedSubscript:v70];
      [v41 floatValue];
      v43 = v42;
      v44 = [v75 objectForKeyedSubscript:v70];
      LODWORD(v45) = v43;
      v46 = [(VCPSoundDetector *)v40 initWithTrackStart:&time threshold:v44 resultsKey:v45];

      if (!obj || !v46 || ![(SNAudioStreamAnalyzer *)self->_SNAnalyzer addRequest:obj withObserver:v46 error:0])
      {

        goto LABEL_44;
      }

      [(NSMutableArray *)self->_detectors addObject:v46];

      analysisTypes = self->_analysisTypes;
    }

    if ((analysisTypes & 0x400000000) != 0)
    {
      obj = [objc_alloc(MEMORY[0x1E697B818]) initWithClassifierIdentifier:v71 error:0];
      [VCPAudioClassifier cacheModelsForClassifySoundRequest:"cacheModelsForClassifySoundRequest:requestIdentifier:" requestIdentifier:?];
      time = *duration;
      v47 = fmin(CMTimeGetSeconds(&time) * 0.949999988, 3.0);
      CMTimeMake(&v79, (v47 * 1000.0), 1000);
      time = v79;
      [obj setWindowDuration:&time];
      v48 = [VCPSoundClassifier alloc];
      time = v84;
      v49 = [v74 objectForKeyedSubscript:v71];
      [v49 floatValue];
      v51 = v50;
      v52 = [v75 objectForKeyedSubscript:v71];
      LODWORD(v53) = v51;
      v54 = [(VCPSoundClassifier *)v48 initWithTrackStart:&time threshold:v52 resultsKey:v53];

      if (!obj || !v54 || ![(SNAudioStreamAnalyzer *)self->_SNAnalyzer addRequest:obj withObserver:v54 error:0])
      {

        goto LABEL_44;
      }

      [(NSMutableArray *)self->_classifiers addObject:v54];

      analysisTypes = self->_analysisTypes;
      if ((analysisTypes & 0x20000000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((analysisTypes & 0x20000000000) == 0)
    {
LABEL_19:
      if ((analysisTypes & 0x800000000000) == 0)
      {
LABEL_20:
        v39 = 0;
LABEL_46:

        goto LABEL_47;
      }

LABEL_37:
      if (_os_feature_enabled_impl())
      {
        v58 = 7;
      }

      else
      {
        v58 = 5;
      }

      v59 = MEMORY[0x1E696AEC0];
      v60 = [MEMORY[0x1E696AD98] numberWithInt:v58];
      stringValue = [v60 stringValue];
      obj = [v59 stringWithFormat:@"SNCreateFeaturePrintRequest_%@", stringValue];

      v62 = [objc_opt_class() sharedFeaturePrintRequest:obj version:v58];
      if (v62)
      {
        v63 = [VCPAudioEmbeddingGenerator alloc];
        time = v84;
        v64 = [(VCPAudioEmbeddingGenerator *)v63 initWithTrackStart:&time threshold:@"AudioEmbeddingResults" resultsKey:v58 version:0.0];
        [(SNAudioStreamAnalyzer *)self->_SNAnalyzer addRequest:v62 withObserver:v64 error:0];
        [(NSMutableArray *)self->_embeddingGenerators addObject:v64];

        v39 = 0;
LABEL_45:

        goto LABEL_46;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v66 = [0 description];
        v67 = v66;
        uTF8String = [v66 UTF8String];
        LODWORD(time.value) = 136315138;
        *(&time.value + 4) = uTF8String;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create FeaturePrintRequest %s", &time, 0xCu);
      }

LABEL_44:
      v39 = -18;
      goto LABEL_45;
    }

    obj = [objc_alloc(MEMORY[0x1E697B818]) initWithClassifierIdentifier:v69 error:0];
    [VCPAudioClassifier cacheModelsForClassifySoundRequest:"cacheModelsForClassifySoundRequest:requestIdentifier:" requestIdentifier:?];
    CMTimeMake(&v78, 2, 1);
    time = v78;
    [obj setWindowDuration:&time];
    [obj setOverlapFactor:0.0];
    v55 = [VCPSoundClassifier300 alloc];
    time = v84;
    v56 = [v75 objectForKeyedSubscript:v69];
    v57 = [(VCPSoundClassifier300 *)v55 initWithTrackStart:&time resultsKey:v56 resultHandler:handlerCopy];

    if (!obj || !v57 || ![(SNAudioStreamAnalyzer *)self->_SNAnalyzer addRequest:obj withObserver:v57 error:0])
    {

      goto LABEL_44;
    }

    [(NSMutableArray *)self->_classifiers300 addObject:v57];

    if ((self->_analysisTypes & 0x800000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

  v39 = -50;
LABEL_48:

  return v39;
}

- (int)processAudioSamples:(AudioBufferList *)samples timestamp:(AudioTimeStamp *)timestamp
{
  v6 = objc_autoreleasePoolPush();
  mData = samples->mBuffers[0].mData;
  mDataByteSize = samples->mBuffers[0].mDataByteSize;
  if (mDataByteSize == 4 * [(AVAudioPCMBuffer *)self->_pcmBuffer frameLength])
  {
    memcpy(*([(AVAudioPCMBuffer *)self->_pcmBuffer mutableAudioBufferList]+ 16), mData, 4 * [(AVAudioPCMBuffer *)self->_pcmBuffer frameLength]);
    [(SNAudioStreamAnalyzer *)self->_SNAnalyzer analyzeAudioBuffer:self->_pcmBuffer atAudioFramePosition:self->_framePosition];
    v9 = 0;
    self->_framePosition += [(AVAudioPCMBuffer *)self->_pcmBuffer frameLength];
  }

  else
  {
    v9 = -50;
  }

  objc_autoreleasePoolPop(v6);
  return v9;
}

- (int)finalizeAnalysisAtTime:(id *)time
{
  v40 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_detectors;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v6)
  {
    v7 = *v33;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v33 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = [*(*(&v32 + 1) + 8 * v8) finalizeAnalysisAtTime:time];
      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = self->_classifiers;
    v10 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v10)
    {
      v11 = *v29;
LABEL_11:
      v12 = 0;
      while (1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v28 + 1) + 8 * v12) finalizeAnalysisAtTime:time];
        if (v9)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
          if (v10)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v5 = self->_embeddingGenerators;
      v13 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v37 count:16];
      if (v13)
      {
        v14 = *v25;
LABEL_19:
        v15 = 0;
        while (1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v24 + 1) + 8 * v15) finalizeAnalysisAtTime:time];
          if (v9)
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v37 count:16];
            if (v13)
            {
              goto LABEL_19;
            }

            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_25:

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v5 = self->_classifiers300;
        v16 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v36 count:16];
        if (v16)
        {
          v17 = *v21;
LABEL_27:
          v18 = 0;
          while (1)
          {
            if (*v21 != v17)
            {
              objc_enumerationMutation(v5);
            }

            v9 = [*(*(&v20 + 1) + 8 * v18) finalizeAnalysisAtTime:{time, v20}];
            if (v9)
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v36 count:16];
              if (v16)
              {
                goto LABEL_27;
              }

              goto LABEL_33;
            }
          }
        }

        else
        {
LABEL_33:
          v9 = 0;
        }
      }
    }
  }

  return v9;
}

- (id)results
{
  v45 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = self->_detectors;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v5)
  {
    v6 = *v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v4);
        }

        results = [*(*(&v37 + 1) + 8 * i) results];
        [dictionary addEntriesFromDictionary:results];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v5);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = self->_classifiers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v10)
  {
    v11 = *v34;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v9);
        }

        results2 = [*(*(&v33 + 1) + 8 * j) results];
        [dictionary addEntriesFromDictionary:results2];
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v10);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = self->_embeddingGenerators;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v15)
  {
    v16 = *v30;
    do
    {
      for (k = 0; k != v15; ++k)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v14);
        }

        results3 = [*(*(&v29 + 1) + 8 * k) results];
        [dictionary addEntriesFromDictionary:results3];
      }

      v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v15);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = self->_classifiers300;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v20)
  {
    v21 = *v26;
    do
    {
      for (m = 0; m != v20; ++m)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v19);
        }

        results4 = [*(*(&v25 + 1) + 8 * m) results];
        [dictionary addEntriesFromDictionary:results4];
      }

      v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v20);
  }

  return dictionary;
}

@end