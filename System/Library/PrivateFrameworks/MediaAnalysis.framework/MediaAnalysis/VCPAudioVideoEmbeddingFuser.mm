@interface VCPAudioVideoEmbeddingFuser
+ (BOOL)supportFusionForVersion:(int)version;
+ (id)sharedFuser:(id)fuser version:(int)version;
- (VCPAudioVideoEmbeddingFuser)initWithEmbeddingVersion:(unint64_t)version;
- (id)results;
- (int)fuse:(id)fuse;
- (int)loadAudioEmbeddingResults:(id)results andVideoEmbeddingResults:(id)embeddingResults;
@end

@implementation VCPAudioVideoEmbeddingFuser

+ (BOOL)supportFusionForVersion:(int)version
{
  v4 = objc_opt_class();

  return [v4 supportsFusionOfVisionEmbeddingVersion:version audioEmbeddingVersion:version];
}

+ (id)sharedFuser:(id)fuser version:(int)version
{
  fuserCopy = fuser;
  v6 = +[VCPSharedInstanceManager sharedManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__VCPAudioVideoEmbeddingFuser_sharedFuser_version___block_invoke;
  v9[3] = &__block_descriptor_36_e31___SNLanguageAlignedAVFuser_8__0l;
  versionCopy = version;
  v7 = [v6 sharedInstanceWithIdentifier:fuserCopy andCreationBlock:v9];

  return v7;
}

id __51__VCPAudioVideoEmbeddingFuser_sharedFuser_version___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E697B840]);
  v3 = *(a1 + 32);
  v8 = 0;
  v4 = [v2 initWithVisionEmbeddingVersion:v3 audioEmbeddingVersion:v3 error:&v8];
  v5 = v8;
  if (v5 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [v5 description];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  return v4;
}

- (VCPAudioVideoEmbeddingFuser)initWithEmbeddingVersion:(unint64_t)version
{
  v17.receiver = self;
  v17.super_class = VCPAudioVideoEmbeddingFuser;
  v4 = [(VCPAudioVideoEmbeddingFuser *)&v17 init];
  if (v4 && ([MEMORY[0x1E695DF70] array], v5 = objc_claimAutoreleasedReturnValue(), results = v4->_results, v4->_results = v5, results, v4->_embeddingVersion = version, v4->_embeddingDim = 512, v7 = MEMORY[0x1E696AEC0], objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", version), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "stringValue"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "stringWithFormat:", @"SNLanguageAlignedAVFuser_%@", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, objc_msgSend(objc_opt_class(), "sharedFuser:version:", v10, v4->_embeddingVersion), v11 = objc_claimAutoreleasedReturnValue(), avFuser = v4->_avFuser, v4->_avFuser = v11, avFuser, v13 = v4->_avFuser, v10, !v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = v4;
  }

  v15 = v14;

  return v15;
}

- (int)loadAudioEmbeddingResults:(id)results andVideoEmbeddingResults:(id)embeddingResults
{
  resultsCopy = results;
  embeddingResultsCopy = embeddingResults;
  audioEmbeddingResults = self->_audioEmbeddingResults;
  self->_audioEmbeddingResults = resultsCopy;
  v9 = resultsCopy;

  videoEmbeddingResults = self->_videoEmbeddingResults;
  self->_videoEmbeddingResults = embeddingResultsCopy;

  return 0;
}

- (int)fuse:(id)fuse
{
  v89 = *MEMORY[0x1E69E9840];
  fuseCopy = fuse;
  if (![(NSArray *)self->_videoEmbeddingResults count]|| ![(NSArray *)self->_audioEmbeddingResults count])
  {
    goto LABEL_82;
  }

  [(NSMutableArray *)self->_results removeAllObjects];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = self->_videoEmbeddingResults;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (!v4)
  {
    v60 = 0;
LABEL_79:

LABEL_80:
    if (v60)
    {
LABEL_81:
      [(NSMutableArray *)self->_results removeAllObjects:v51];
      goto LABEL_83;
    }

LABEL_82:
    v60 = 0;
    goto LABEL_83;
  }

  v5 = 0;
  v60 = 0;
  v59 = *v79;
  v52 = v64;
LABEL_5:
  v58 = v4;
  v6 = 0;
  while (1)
  {
    if (*v79 != v59)
    {
      objc_enumerationMutation(obj);
    }

    v7 = *(*(&v78 + 1) + 8 * v6);
    fuseCopy[2]();
    v8 = [v7 objectForKeyedSubscript:@"attributes"];
    v62 = [v8 objectForKeyedSubscript:@"embeddings"];

    v9 = [v7 objectForKeyedSubscript:@"attributes"];
    v10 = [v9 objectForKeyedSubscript:@"embeddingVersion"];
    intValue = [v10 intValue];

    embeddingVersion = self->_embeddingVersion;
    if (intValue != embeddingVersion && (embeddingVersion != 5 || intValue != 7) && (embeddingVersion != 7 || (intValue & 0xFFFFFFFE) != 8))
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v50 = self->_embeddingVersion;
        LODWORD(v88.start.value) = 67109376;
        HIDWORD(v88.start.value) = v50;
        LOWORD(v88.start.timescale) = 1024;
        *(&v88.start.timescale + 2) = intValue;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "EmbeddingFuser - expect embedding version %d, but got %d", &v88, 0xEu);
      }

      v60 = -50;
      goto LABEL_79;
    }

    memset(&v77, 0, sizeof(v77));
    CMTimeRangeMakeFromDictionary(&v77, v7);
    if ((v77.start.flags & 1) == 0 || (v77.duration.flags & 1) == 0 || v77.duration.epoch || v77.duration.value < 0)
    {

      v60 = -50;
      goto LABEL_81;
    }

    if (v62)
    {
      break;
    }

    if (MediaAnalysisLogLevel() >= 4)
    {
      v21 = MEMORY[0x1E69E9C10];
      v22 = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v88.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEFAULT, "EmbeddingFuser - missing video embedding data", &v88, 2u);
      }

      goto LABEL_74;
    }

LABEL_73:
    v22 = v62;
LABEL_74:

    if (++v6 == v58)
    {
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v78 objects:v87 count:16];
      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_79;
    }
  }

  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__37;
  v75 = __Block_byref_object_dispose__37;
  v13 = 0;
  v57 = v62;
  v76 = v57;
  v14 = v5;
  v15 = 0.0;
  while (v14 < [(NSArray *)self->_audioEmbeddingResults count:v51])
  {
    v16 = [(NSArray *)self->_audioEmbeddingResults objectAtIndexedSubscript:v14];
    memset(&v88, 0, sizeof(v88));
    CMTimeRangeMakeFromDictionary(&v88, v16);
    if ((v88.start.flags & 1) == 0 || (v88.duration.flags & 1) == 0 || v88.duration.epoch || v88.duration.value < 0)
    {

      goto LABEL_45;
    }

    memset(&v86, 0, sizeof(v86));
    range = v88;
    otherRange = v77;
    CMTimeRangeGetIntersection(&v86, &range, &otherRange);
    range.start = v86.duration;
    if (CMTimeGetSeconds(&range.start) > v15)
    {
      range.start = v86.duration;
      Seconds = CMTimeGetSeconds(&range.start);
      v18 = [(__CFDictionary *)v16 objectForKeyedSubscript:@"attributes"];
      v19 = [v18 objectForKeyedSubscript:@"embeddings"];

      v15 = Seconds;
      v13 = v19;
      v5 = v14;
    }

    *&range.start.value = *&v77.start.value;
    range.start.epoch = v77.start.epoch;
    otherRange.start = v77.duration;
    CMTimeAdd(&v68, &range.start, &otherRange.start);
    *&range.start.value = *&v88.start.value;
    range.start.epoch = v88.start.epoch;
    otherRange.start = v68;
    v20 = CMTimeCompare(&range.start, &otherRange.start) > 0;

    if (v20)
    {
      break;
    }

    ++v14;
  }

  if (![v13 length] || v15 < 1.0)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *&v88.start.value = *&v77.start.value;
      v88.start.epoch = v77.start.epoch;
      v38 = CMTimeGetSeconds(&v88.start);
      LODWORD(v86.start.value) = 134217984;
      *(&v86.start.value + 4) = v38;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "EmbeddingFuser - does not find paired audio embedding at time %f", &v86, 0xCu);
    }

    goto LABEL_71;
  }

  if ([v57 length] != 2 * self->_embeddingDim)
  {
    if (MediaAnalysisLogLevel() >= 3 && (v39 = MEMORY[0x1E69E9C10], os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)))
    {
      v40 = [v57 length];
      LODWORD(v88.start.value) = 67109120;
      HIDWORD(v88.start.value) = v40;
      v37 = 8;
      _os_log_impl(&dword_1C9B70000, v39, OS_LOG_TYPE_ERROR, "EmbeddingFuser unexpected embedding data length %d", &v88, 8u);
    }

    else
    {
LABEL_45:
      v37 = 8;
    }

    v60 = -50;
    goto LABEL_72;
  }

  v23 = objc_alloc(MEMORY[0x1E695FED0]);
  v24 = v57;
  bytes = [v57 bytes];
  v85[0] = &unk_1F49BD738;
  [MEMORY[0x1E696AD98] numberWithInt:self->_embeddingDim];
  v53 = v26 = v5;
  v85[1] = v53;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
  v67 = 0;
  v55 = [v23 initWithDataPointer:bytes shape:v27 dataType:65552 strides:&unk_1F49BEC80 deallocator:0 error:&v67];
  v28 = v67;

  v5 = v26;
  if (v28 || !v55)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = [v28 description];
      LODWORD(v88.start.value) = 138412290;
      *(&v88.start.value + 4) = v41;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "EmbeddingFuser failed to create video embedding %@", &v88, 0xCu);
    }

    v37 = 1;
  }

  else
  {
    v29 = objc_alloc(MEMORY[0x1E695FED0]);
    v30 = v13;
    bytes2 = [v13 bytes];
    v84[0] = &unk_1F49BD738;
    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "length") >> 1}];
    v84[1] = v51;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
    v66 = 0;
    v54 = [v29 initWithDataPointer:bytes2 shape:v32 dataType:65552 strides:&unk_1F49BEC98 deallocator:0 error:&v66];
    v33 = v66;

    if (v33 || !v54)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v42 = [v33 description];
        LODWORD(v88.start.value) = 138412290;
        *(&v88.start.value + 4) = v42;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "EmbeddingFuser failed to create video embedding %@", &v88, 0xCu);
      }

      v37 = 1;
    }

    else
    {
      avFuser = self->_avFuser;
      v65 = 0;
      v51 = [(SNLanguageAlignedAVFuser *)avFuser fuseVisionEmbedding:v55 audioEmbedding:v54 error:&v65];
      v33 = v65;
      if (v33 || !v51)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v43 = [v33 description];
          LODWORD(v88.start.value) = 138412290;
          *(&v88.start.value + 4) = v43;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", &v88, 0xCu);
        }

        v37 = 8;
        v60 = 1;
      }

      else
      {
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v64[0] = __36__VCPAudioVideoEmbeddingFuser_fuse___block_invoke;
        v64[1] = &unk_1E834CE50;
        v64[2] = &v71;
        [v51 getBytesWithHandler:v63];
        if ([v51 dataType] == 65568)
        {
          v35 = MediaAnalysisConvertFloat32ToFloat16(v72[5]);
          v36 = v72[5];
          v72[5] = v35;
        }

        if ([v72[5] length] == 2 * self->_embeddingDim)
        {
          v37 = 0;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v44 = [v51 count];
            LODWORD(v88.start.value) = 67109120;
            HIDWORD(v88.start.value) = v44;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "EmbeddingFuser unexpected fusion embedding size %d", &v88, 8u);
          }

          v37 = 1;
        }
      }
    }

    if (!v37)
    {
LABEL_71:
      v88 = v77;
      v45 = CMTimeRangeCopyAsDictionary(&v88, 0);
      v46 = [(__CFDictionary *)v45 mutableCopy];

      v83[0] = v72[5];
      v82[0] = @"embeddings";
      v82[1] = @"embeddingVersion";
      v47 = [MEMORY[0x1E696AD98] numberWithInt:intValue];
      v83[1] = v47;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
      [v46 setObject:v48 forKeyedSubscript:@"attributes"];

      [(NSMutableArray *)self->_results addObject:v46];
      v37 = 0;
    }
  }

LABEL_72:

  _Block_object_dispose(&v71, 8);
  if (!v37)
  {
    goto LABEL_73;
  }

  if (v37 == 8)
  {
    goto LABEL_80;
  }

  v60 = -18;
LABEL_83:

  return v60;
}

void __36__VCPAudioVideoEmbeddingFuser_fuse___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)results
{
  v6[1] = *MEMORY[0x1E69E9840];
  results = self->_results;
  v5 = @"AudioFusedVideoEmbeddingResults";
  v6[0] = results;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end