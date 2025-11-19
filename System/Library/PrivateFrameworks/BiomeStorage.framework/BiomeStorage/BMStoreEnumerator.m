@interface BMStoreEnumerator
- (BMStoreBookmark)bookmark;
- (BMStoreEnumerator)initWithStreamDatastore:(id)a3 bookmark:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BMStoreEnumerator)initWithStreamDatastore:(id)a3 bookmarkEnumerator:(id)a4 error:(id *)a5;
- (BMStoreEnumerator)initWithStreamDatastore:(id)a3 currentFrameStore:(id)a4 frameStoreOffset:(unint64_t)a5 iterationStartTime:(double)a6 endTime:(double)a7 maxEvents:(unint64_t)a8 lastN:(unint64_t)a9 options:(unint64_t)a10 dataType:(Class)a11;
- (BMStoreEnumerator)initWithStreamDatastore:(id)a3 startTime:(double)a4 endTime:(double)a5 maxEvents:(unint64_t)a6 lastN:(unint64_t)a7 options:(unint64_t)a8 dataType:(Class)a9;
- (BMStreamMetadata)metadata;
- (BOOL)advanceBookmarkToStartTime:(double)a3 eventsFound:(unint64_t *)a4 lastN:(unint64_t)a5;
- (BOOL)advanceBookmarkV1ToStartTime:(double)a3 eventsFound:(unint64_t *)a4 lastN:(unint64_t)a5;
- (BOOL)advanceBookmarkV2ToStartTime:(double)a3 eventsFound:(unint64_t *)a4 lastN:(unint64_t)a5;
- (BOOL)skipToBookmarkOffset:(id)a3;
- (id)copyNextEventAndMoveBookmark:(BOOL)a3 makeEvent:(id)a4;
- (id)nextEvent;
- (id)peekEvent;
- (void)bookmark;
- (void)nextEventWithContext:(id)a3;
- (void)setEndTime:(double)a3 maxEvents:(unint64_t)a4 lastN:(unint64_t)a5 reverse:(BOOL)a6;
@end

@implementation BMStoreEnumerator

- (id)nextEvent
{
  v2 = [(BMStoreEnumerator *)self copyNextEventAndMoveBookmark:1];

  return v2;
}

- (BMStreamMetadata)metadata
{
  metadata = self->_metadata;
  if (!metadata)
  {
    v4 = [(BMStreamDatastore *)self->_ds metadata];
    v5 = self->_metadata;
    self->_metadata = v4;

    metadata = self->_metadata;
  }

  return metadata;
}

- (BMStoreBookmark)bookmark
{
  v39 = *MEMORY[0x1E69E9840];
  p_currentFrameStore = &self->_currentFrameStore;
  currentFrameStore = self->_currentFrameStore;
  if (!currentFrameStore)
  {
    v11 = 0;
    goto LABEL_40;
  }

  p_frameStoreOffset = &self->_frameStoreOffset;
  frameStoreOffset = self->_frameStoreOffset;
  if ((~LODWORD(self->_frameStoreOffset) & 0xFFFFFFFE) == 0)
  {
    goto LABEL_34;
  }

  if ([(BMFrameStore *)currentFrameStore datastoreVersion]== 9)
  {
    v7 = *p_frameStoreOffset;
    if (v7 <= [(BMFrameStore *)*p_currentFrameStore bytesUsed]- 56)
    {
      goto LABEL_30;
    }

    v8 = [(BMFrameStore *)*p_currentFrameStore isCheckSumValidAtOffsetV1:*p_frameStoreOffset];
    v9 = __biome_log_for_category();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
    if (!v8)
    {
      if (v10)
      {
        [BMStoreEnumerator bookmark];
      }

      goto LABEL_33;
    }

    if (v10)
    {
      [BMStoreEnumerator bookmark];
    }

    goto LABEL_29;
  }

  if ([(BMFrameStore *)*p_currentFrameStore datastoreVersion]!= 10)
  {
    v9 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v37) = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__BMStoreEnumerator_bookmark__block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (bookmark_onceToken != -1)
    {
      dispatch_once(&bookmark_onceToken, block);
    }

    v13 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (!os_log_type_enabled(v9, v13))
    {
      goto LABEL_29;
    }

    v14 = [(BMFrameStore *)*p_currentFrameStore datastoreVersion];
    v15 = [(BMFrameStore *)*p_currentFrameStore segmentPath];
    *buf = 67109378;
    *&buf[4] = v14;
    *&buf[8] = 2112;
    *&buf[10] = v15;
    _os_log_impl(&dword_1C928A000, v9, v13, "BMStoreEnumerator.bookmark: unknown datastoreVersion (%d) in frameStore: %@", buf, 0x12u);
    goto LABEL_18;
  }

  if (*p_frameStoreOffset)
  {
    v12 = [(BMFrameStore *)*p_currentFrameStore frameNumberFromOffsetToOffsetTableEntryV2:?];
    if ((v12 & 0x80000000) != 0)
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [BMStoreEnumerator bookmark];
      }

      goto LABEL_33;
    }
  }

  else
  {
    v12 = 0;
  }

  if (![(BMStoreEnumerator *)self isDataAccessible])
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v23 = MEMORY[0x1E698E9C8];
      v24 = [(BMFrameStore *)*p_currentFrameStore segmentPath];
      v25 = [v23 privacyPathname:v24];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_1C928A000, v9, OS_LOG_TYPE_INFO, "Segment is no longer accessible (bookmark): %{public}@", buf, 0xCu);
    }

    goto LABEL_29;
  }

  v16 = [(BMFrameStore *)*p_currentFrameStore atomicReadTotalFramesV2];
  if (v12 <= v16)
  {
    goto LABEL_30;
  }

  v17 = v16;
  v18 = [(BMFrameStore *)*p_currentFrameStore isCheckSumValidAtOffsetV2:*p_frameStoreOffset frameNumber:v12];
  v9 = __biome_log_for_category();
  v19 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
  if (!v18)
  {
    if (v19)
    {
      v31 = *p_frameStoreOffset;
      v32 = MEMORY[0x1E698E9C8];
      v33 = [(BMFrameStore *)*p_currentFrameStore segmentPath];
      v34 = [v32 privacyPathname:v33];
      *buf = 134218754;
      *&buf[4] = v31;
      *&buf[12] = 1024;
      *&buf[14] = v12;
      *&buf[18] = 1024;
      *&buf[20] = v17;
      v37 = 2114;
      v38 = v34;
      _os_log_fault_impl(&dword_1C928A000, v9, OS_LOG_TYPE_FAULT, "frameStore checksum mismatched, offset %zu, frame:%d is beyond totalFrames:%d for store: %{public}@", buf, 0x22u);
    }

    goto LABEL_33;
  }

  if (v19)
  {
    v20 = *p_frameStoreOffset;
    v21 = MEMORY[0x1E698E9C8];
    v22 = [(BMFrameStore *)*p_currentFrameStore segmentPath];
    v15 = [v21 privacyPathname:v22];
    *buf = 134218754;
    *&buf[4] = v20;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 1024;
    *&buf[20] = v17;
    v37 = 2114;
    v38 = v15;
    _os_log_fault_impl(&dword_1C928A000, v9, OS_LOG_TYPE_FAULT, "frameStore checksum matched, although offset %zu, frame:%d is beyond totalFrames:%d for store: %{public}@", buf, 0x22u);

LABEL_18:
  }

LABEL_29:

LABEL_30:
  frameStoreOffset = *p_frameStoreOffset;
  if ((*p_frameStoreOffset & 7) == 0)
  {
LABEL_34:
    if (frameStoreOffset == 4294967294)
    {
      v26 = __biome_log_for_category();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(BMStoreEnumerator *)v26 bookmark];
      }
    }

    v27 = [BMStoreBookmark alloc];
    v9 = [(BMStreamDatastore *)self->_ds streamId];
    v28 = [(BMFrameStore *)self->_currentFrameStore segmentName];
    v11 = [(BMStoreBookmark *)v27 initWithStream:v9 segment:v28 iterationStartTime:self->_frameStoreOffset offset:self->_iterationStartTime];

    goto LABEL_39;
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [(BMStoreEnumerator *)&self->_frameStoreOffset bookmark];
  }

LABEL_33:
  v11 = 0;
LABEL_39:

LABEL_40:
  v29 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)skipToBookmarkOffset:(id)a3
{
  v4 = a3;
  v5 = [v4 segmentName];
  v6 = [(BMFrameStore *)self->_currentFrameStore segmentName];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    self->_frameStoreOffset = [v4 offset];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMStoreEnumerator skipToBookmarkOffset:];
    }
  }

  return v7;
}

- (void)setEndTime:(double)a3 maxEvents:(unint64_t)a4 lastN:(unint64_t)a5 reverse:(BOOL)a6
{
  self->_endTime = a3;
  self->_maxEvents = a4;
  v6 = 8;
  if (!a6)
  {
    v6 = 0;
  }

  v7 = self->_options & 0xFFFFFFFFFFFFFFF7 | v6;
  self->_lastEventCount = a5;
  self->_options = v7;
}

- (BMStoreEnumerator)initWithStreamDatastore:(id)a3 bookmarkEnumerator:(id)a4 error:(id *)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 streamId];
  v12 = [v9 config];
  v13 = [v12 storeLocationOption] & 6;

  if (v13)
  {
    [BMStoreEnumerator initWithStreamDatastore:a2 bookmarkEnumerator:self error:?];
  }

  v14 = __biome_log_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v9 streamPath];
    *buf = 138412802;
    v25 = v11;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_1C928A000, v14, OS_LOG_TYPE_DEFAULT, "Enumerator for %@ from %@ using bookmarkEnumerator %@", buf, 0x20u);
  }

  v23.receiver = self;
  v23.super_class = BMStoreEnumerator;
  v16 = [(BMStoreEnumerator *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_ds, a3);
    objc_storeStrong(&v17->_bookmarkEnumerator, a4);
    currentFrameStore = v17->_currentFrameStore;
    v17->_currentFrameStore = 0;

    v17->_frameStoreOffset = 0;
    v17->_iterationStartTime = CFAbsoluteTimeGetCurrent();
    v19 = [MEMORY[0x1E695DF00] distantFuture];
    [v19 timeIntervalSinceReferenceDate];
    v17->_endTime = v20;

    *&v17->_maxEvents = xmmword_1C92B82F0;
    *&v17->_lastEventCount = xmmword_1C92B82F0;
    v17->_dataType = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BMStoreEnumerator)initWithStreamDatastore:(id)a3 bookmark:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v106[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [v10 streamId];
  v13 = [v11 streamId];
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
    v15 = [v10 streamId];
    v16 = [v10 config];
    v17 = [v16 storeLocationOption];

    if ((v17 & 4) != 0)
    {
      v20 = @":subscriptions";
    }

    else
    {
      v18 = [v10 config];
      v19 = [v18 storeLocationOption];

      if ((v19 & 2) != 0)
      {
        v20 = @":tombstones";
      }

      else
      {
        v20 = &stru_1F48D86A0;
      }
    }

    v28 = __biome_log_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v10 segmentDirectory];
      v30 = [v11 segmentName];
      *buf = 138413314;
      v98 = v15;
      v99 = 2112;
      *v100 = v20;
      *&v100[8] = 2112;
      *v101 = v29;
      *&v101[8] = 2112;
      v102 = v30;
      v103 = 2048;
      v104 = [v11 offset];
      _os_log_impl(&dword_1C928A000, v28, OS_LOG_TYPE_DEFAULT, "Enumerator for %@%@ starting from %@/%@+0x%llx", buf, 0x34u);
    }

    v31 = [v11 segmentName];
    v90 = 0;
    v32 = [v10 segmentWithFilename:v31 error:&v90];
    v26 = v90;

    if (v26)
    {
      if (a6)
      {
        v33 = v26;
        v27 = 0;
        *a6 = v26;
LABEL_49:

        goto LABEL_50;
      }

LABEL_48:
      v27 = 0;
      goto LABEL_49;
    }

    if (!v11 || (~[v11 offset] & 0xFFFFFFFE) == 0)
    {
LABEL_19:
      v34 = [v11 offset];
      [v11 iterationStartTime];
      v36 = v35;
      v37 = [MEMORY[0x1E695DF00] distantFuture];
      [v37 timeIntervalSinceReferenceDate];
      v39 = [(BMStoreEnumerator *)self initWithStreamDatastore:v10 currentFrameStore:v32 frameStoreOffset:v34 iterationStartTime:-1 endTime:-1 maxEvents:a5 lastN:v36 options:v38 dataType:0];

      self = v39;
      v27 = self;
      goto LABEL_49;
    }

    if ([v32 datastoreVersion] == 9)
    {
      v40 = [v11 offset];
      if (v40 <= [v32 bytesUsed] - 56)
      {
        goto LABEL_19;
      }

      v41 = [v32 isCheckSumValidAtOffsetV1:{objc_msgSend(v11, "offset")}];
      v42 = __biome_log_for_category();
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_FAULT);
      if (v41)
      {
        if (v43)
        {
          [BMStoreEnumerator initWithStreamDatastore:bookmark:options:error:];
        }

        goto LABEL_25;
      }

      if (v43)
      {
        [BMStoreEnumerator initWithStreamDatastore:bookmark:options:error:];
      }

      v85 = objc_alloc(MEMORY[0x1E696AEC0]);
      v82 = [v11 offset];
      v55 = [v32 bytesUsed];
      v56 = MEMORY[0x1E698E9C8];
      v57 = [v32 segmentPath];
      v58 = [v56 privacyPathname:v57];
      v50 = [v85 initWithFormat:@"frameStore checksum mismatched and is beyond frame offset:%zu bytesUsed:%d for store: %@", v82, v55, v58];

      if (!a6)
      {
LABEL_38:

        goto LABEL_48;
      }

      v51 = MEMORY[0x1E696ABC0];
      v95 = *MEMORY[0x1E696A578];
      v96 = v50;
      v52 = MEMORY[0x1E695DF20];
      v53 = &v96;
      v54 = &v95;
LABEL_37:
      v59 = [v52 dictionaryWithObjects:v53 forKeys:v54 count:1];
      *a6 = [v51 errorWithDomain:@"com.apple.biome.BiomeStorage" code:-1 userInfo:v59];

      goto LABEL_38;
    }

    if ([v32 datastoreVersion] != 10)
    {
      goto LABEL_19;
    }

    if ([v11 offset])
    {
      v44 = [v32 frameNumberFromOffsetToOffsetTableEntryV2:{objc_msgSend(v11, "offset")}];
      if ((v44 & 0x80000000) != 0)
      {
        v45 = __biome_log_for_category();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          [BMStoreEnumerator initWithStreamDatastore:bookmark:options:error:];
        }

        v84 = objc_alloc(MEMORY[0x1E696AEC0]);
        v81 = [v11 offset];
        v46 = [v32 frameStoreSize];
        v47 = MEMORY[0x1E698E9C8];
        v48 = [v32 segmentPath];
        v49 = [v47 privacyPathname:v48];
        v50 = [v84 initWithFormat:@"initWithStreamDatastore: bookmark offset (%zu) is beyond frameStore size:%zu for store: %@", v81, v46, v49];

        if (!a6)
        {
          goto LABEL_38;
        }

        v51 = MEMORY[0x1E696ABC0];
        v93 = *MEMORY[0x1E696A578];
        v94 = v50;
        v52 = MEMORY[0x1E695DF20];
        v53 = &v94;
        v54 = &v93;
        goto LABEL_37;
      }
    }

    else
    {
      v44 = 0;
    }

    if (([v10 isDataAccessible] & 1) == 0)
    {
      v64 = __biome_log_for_category();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = MEMORY[0x1E698E9C8];
        v66 = [v10 streamPath];
        v67 = [v65 privacyPathname:v66];
        *buf = 138543362;
        v98 = v67;
        _os_log_impl(&dword_1C928A000, v64, OS_LOG_TYPE_INFO, "Segment is no longer accessible: %{public}@", buf, 0xCu);
      }

      goto LABEL_48;
    }

    v60 = [v32 atomicReadTotalFramesV2];
    if (v44 <= v60)
    {
      goto LABEL_19;
    }

    v83 = v60;
    v86 = [v32 isCheckSumValidAtOffsetV2:objc_msgSend(v11 frameNumber:{"offset"), v44}];
    v42 = __biome_log_for_category();
    v61 = os_log_type_enabled(v42, OS_LOG_TYPE_FAULT);
    if ((v86 & 1) == 0)
    {
      if (v61)
      {
        v80 = [v11 offset];
        v76 = MEMORY[0x1E698E9C8];
        v89 = [v32 segmentPath];
        v77 = [v76 privacyPathname:v89];
        *buf = 134218754;
        v98 = v80;
        v99 = 1024;
        *v100 = v44;
        *&v100[4] = 1024;
        *&v100[6] = v83;
        *v101 = 2114;
        *&v101[2] = v77;
        _os_log_fault_impl(&dword_1C928A000, v42, OS_LOG_TYPE_FAULT, "frameStore checksum mismatched, offset %zu, frame:%d is beyond totalFrames:%d for store: %{public}@", buf, 0x22u);
      }

      v88 = objc_alloc(MEMORY[0x1E696AEC0]);
      v79 = [v11 offset];
      v70 = MEMORY[0x1E698E9C8];
      v71 = [v32 segmentPath];
      v72 = [v70 privacyPathname:v71];
      v73 = [v88 initWithFormat:@"frameStore checksum mismatched, offset %zu, frame:%d is beyond totalFrames:%d for store: %@", v79, v44, v83, v72];

      if (a6)
      {
        v74 = MEMORY[0x1E696ABC0];
        v91 = *MEMORY[0x1E696A578];
        v92 = v73;
        v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        *a6 = [v74 errorWithDomain:@"com.apple.biome.BiomeStorage" code:-1 userInfo:v75];
      }

      goto LABEL_48;
    }

    if (v61)
    {
      v78 = [v11 offset];
      v62 = MEMORY[0x1E698E9C8];
      v87 = [v32 segmentPath];
      v63 = [v62 privacyPathname:v87];
      *buf = 134218754;
      v98 = v78;
      v99 = 1024;
      *v100 = v44;
      *&v100[4] = 1024;
      *&v100[6] = v83;
      *v101 = 2114;
      *&v101[2] = v63;
      _os_log_fault_impl(&dword_1C928A000, v42, OS_LOG_TYPE_FAULT, "frameStore checksum matched, although offset %zu, frame:%d is beyond totalFrames:%d for store: %{public}@", buf, 0x22u);
    }

LABEL_25:

    goto LABEL_19;
  }

  v21 = __biome_log_for_category();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    [BMStoreEnumerator initWithStreamDatastore:bookmark:options:error:];
  }

  v22 = objc_alloc(MEMORY[0x1E696AEC0]);
  v23 = [v10 streamId];
  v24 = [v11 streamId];
  v15 = [v22 initWithFormat:@"Data store streamId is %@ while bookmark streamId is %@", v23, v24];

  if (a6)
  {
    v25 = MEMORY[0x1E696ABC0];
    v105 = *MEMORY[0x1E696A578];
    v106[0] = v15;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:&v105 count:1];
    [v25 errorWithDomain:@"com.apple.biome.BiomeStorage" code:-1 userInfo:v26];
    *a6 = v27 = 0;
LABEL_50:

    goto LABEL_51;
  }

  v27 = 0;
LABEL_51:

  v68 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BMStoreEnumerator)initWithStreamDatastore:(id)a3 startTime:(double)a4 endTime:(double)a5 maxEvents:(unint64_t)a6 lastN:(unint64_t)a7 options:(unint64_t)a8 dataType:(Class)a9
{
  v50 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = v16;
  v18 = a4 < a5;
  if ((a8 & 8) == 0)
  {
    v18 = a4 > a5;
  }

  if (!v18)
  {
    if ([v16 isDataAccessible])
    {
      if (a7 == -1)
      {
        v22 = (a8 >> 3) & 1;
      }

      else
      {
        v22 = (a8 & 8) == 0;
      }

      if (a7 == -1)
      {
        v23 = a5;
      }

      else
      {
        a8 ^= 8uLL;
        v23 = a4;
      }

      if (a7 == -1)
      {
        a5 = a4;
      }

      v24 = [v17 segmentContainingTimestamp:a5];
      self = [(BMStoreEnumerator *)self initWithStreamDatastore:v17 currentFrameStore:v24 frameStoreOffset:0xFFFFFFFFLL iterationStartTime:-1 endTime:a7 maxEvents:a8 lastN:CFAbsoluteTimeGetCurrent() options:v23 dataType:a9];

      if (!self)
      {
        goto LABEL_50;
      }

      v41 = 0;
      v25 = [(BMStoreEnumerator *)self advanceBookmarkToStartTime:&v41 eventsFound:a7 lastN:a5];
      if ([v17 isDataAccessible])
      {
        if (a7 == -1)
        {
LABEL_49:
          self->_maxEvents = a6;
LABEL_50:
          self = self;
          v33 = self;
          goto LABEL_35;
        }

        if (v41)
        {
          v26 = v25;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          goto LABEL_47;
        }

        p_currentFrameStore = &self->_currentFrameStore;
        if ([(BMFrameStore *)self->_currentFrameStore datastoreVersion]== 9)
        {
          frameStoreOffset = self->_frameStoreOffset;
          if (v22)
          {
            if (frameStoreOffset != 4294967294)
            {
              goto LABEL_47;
            }

            goto LABEL_45;
          }

          if (frameStoreOffset + 56 != [(BMFrameStore *)*p_currentFrameStore bytesUsed])
          {
LABEL_47:
            self->_endTime = a5;
            self->_options ^= 8uLL;
            if (v41 < a6)
            {
              a6 = v41;
            }

            goto LABEL_49;
          }
        }

        else
        {
          if ([(BMFrameStore *)*p_currentFrameStore datastoreVersion]!= 10)
          {
            p_super = __biome_log_for_category();
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
            {
              [BMStoreEnumerator initWithStreamDatastore:? startTime:? endTime:? maxEvents:? lastN:? options:? dataType:?];
            }

            goto LABEL_46;
          }

          v36 = [(BMStoreEnumerator *)self currentFrameStore];
          v37 = [v36 atomicReadTotalFramesV2];

          v38 = self->_frameStoreOffset;
          if (v22)
          {
            if (v38 != 4294967294)
            {
              goto LABEL_47;
            }
          }

          else if (v38 != [(BMFrameStore *)*p_currentFrameStore offsetTableOffsetFromFrameNumberV2:v37])
          {
            goto LABEL_47;
          }
        }

LABEL_45:
        self->_frameStoreOffset = 0xFFFFFFFFLL;
        v40 = [v17 segmentContainingTimestamp:v23];
        p_super = &self->_currentFrameStore->super;
        self->_currentFrameStore = v40;
LABEL_46:

        goto LABEL_47;
      }

      v19 = __biome_log_for_category();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      v32 = MEMORY[0x1E698E9C8];
      v30 = [v17 streamPath];
      v20 = [v32 privacyPathname:v30];
      *buf = 138543362;
      v43 = v20;
      v31 = "Segment is no longer accessible: %{public}@ (after advanceBookmarkToStartTime)";
    }

    else
    {
      v19 = __biome_log_for_category();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      v29 = MEMORY[0x1E698E9C8];
      v30 = [v17 streamPath];
      v20 = [v29 privacyPathname:v30];
      *buf = 138543362;
      v43 = v20;
      v31 = "Segment is no longer accessible: %{public}@";
    }

    _os_log_impl(&dword_1C928A000, v19, OS_LOG_TYPE_INFO, v31, buf, 0xCu);

LABEL_33:
    goto LABEL_34;
  }

  v19 = __biome_log_for_category();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v17 streamId];
    v21 = "YES";
    *buf = 138544130;
    v43 = v20;
    v44 = 2048;
    if ((a8 & 8) == 0)
    {
      v21 = "NO";
    }

    v45 = a4;
    v46 = 2048;
    v47 = a5;
    v48 = 2080;
    v49 = v21;
    _os_log_impl(&dword_1C928A000, v19, OS_LOG_TYPE_INFO, "initWithStreamDatastore: stream: %{public}@ with startTime: %f, endTime: %f, and reverse: %s will result in no events, so returning nil", buf, 0x2Au);
    goto LABEL_33;
  }

LABEL_34:

  v33 = 0;
LABEL_35:

  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BMStoreEnumerator)initWithStreamDatastore:(id)a3 currentFrameStore:(id)a4 frameStoreOffset:(unint64_t)a5 iterationStartTime:(double)a6 endTime:(double)a7 maxEvents:(unint64_t)a8 lastN:(unint64_t)a9 options:(unint64_t)a10 dataType:(Class)a11
{
  v20 = a3;
  v21 = a4;
  v26.receiver = self;
  v26.super_class = BMStoreEnumerator;
  v22 = [(BMStoreEnumerator *)&v26 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_ds, a3);
    objc_storeStrong(&v23->_currentFrameStore, a4);
    v23->_frameStoreOffset = a5;
    v23->_iterationStartTime = a6;
    v23->_endTime = a7;
    v23->_maxEvents = a8;
    v23->_eventCount = 0;
    v23->_lastEventCount = a9;
    v23->_options = a10;
    v23->_dataType = a11;
    bookmarkEnumerator = v23->_bookmarkEnumerator;
    v23->_bookmarkEnumerator = 0;
  }

  return v23;
}

- (void)nextEventWithContext:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(BMStoreEnumerator *)self nextEvent];
  v6[2](v6, v5, self->_currentFrameStore);

  objc_autoreleasePoolPop(v4);
}

- (id)peekEvent
{
  v2 = [(BMStoreEnumerator *)self copyNextEventAndMoveBookmark:0];

  return v2;
}

- (BOOL)advanceBookmarkToStartTime:(double)a3 eventsFound:(unint64_t *)a4 lastN:(unint64_t)a5
{
  v22 = *MEMORY[0x1E69E9840];
  currentFrameStore = self->_currentFrameStore;
  if (!currentFrameStore)
  {
LABEL_15:
    v17 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if ([(BMFrameStore *)currentFrameStore datastoreVersion]== 9)
  {
    v10 = *MEMORY[0x1E69E9840];

    return [(BMStoreEnumerator *)self advanceBookmarkV1ToStartTime:a4 eventsFound:a5 lastN:a3];
  }

  if ([(BMFrameStore *)self->_currentFrameStore datastoreVersion]!= 10)
  {
    v13 = __biome_log_for_category();
    *buf = 0;
    *&v20 = buf;
    *(&v20 + 1) = 0x2020000000;
    v21 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__BMStoreEnumerator_advanceBookmarkToStartTime_eventsFound_lastN___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (advanceBookmarkToStartTime_eventsFound_lastN__onceToken != -1)
    {
      dispatch_once(&advanceBookmarkToStartTime_eventsFound_lastN__onceToken, block);
    }

    v14 = *(v20 + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = [(BMFrameStore *)self->_currentFrameStore datastoreVersion];
      v16 = [(BMFrameStore *)self->_currentFrameStore segmentPath];
      *buf = 67109378;
      *&buf[4] = v15;
      LOWORD(v20) = 2112;
      *(&v20 + 2) = v16;
      _os_log_impl(&dword_1C928A000, v13, v14, "advanceBookmarkToStartTime: unknown datastoreVersion (%d) in frameStore: %@", buf, 0x12u);
    }

    goto LABEL_15;
  }

  v12 = *MEMORY[0x1E69E9840];

  return [(BMStoreEnumerator *)self advanceBookmarkV2ToStartTime:a4 eventsFound:a5 lastN:a3];
}

- (BOOL)advanceBookmarkV1ToStartTime:(double)a3 eventsFound:(unint64_t *)a4 lastN:(unint64_t)a5
{
  v27 = 0;
  v7 = 0;
  v25 = 0;
  options = self->_options;
  do
  {
    v8 = objc_autoreleasePoolPush();
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy_;
    v40 = __Block_byref_object_dispose_;
    v41 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy_;
    v34 = __Block_byref_object_dispose_;
    v35 = 0;
    currentFrameStore = self->_currentFrameStore;
    ds = self->_ds;
    frameStoreOffset = self->_frameStoreOffset;
    v12 = self->_options;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __68__BMStoreEnumerator_advanceBookmarkV1ToStartTime_eventsFound_lastN___block_invoke;
    v29[3] = &unk_1E8338BA0;
    v29[4] = &v36;
    v29[5] = &v30;
    [(BMStreamDatastore *)ds fetchEventFromFrameStore:currentFrameStore atOffset:frameStoreOffset withOptions:v12 callback:v29];
    v13 = v37[5];
    if (!v13)
    {
      goto LABEL_17;
    }

    if ((options & 8) == 0)
    {
      [v13 creationTimestamp];
      if (v14 > self->_endTime)
      {
        [v7 creationTimestamp];
        if (v15 >= a3)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }

      objc_storeStrong(&self->_currentFrameStore, v31[5]);
      [v37[5] creationTimestamp];
      if (v18 < a3)
      {
        goto LABEL_15;
      }

LABEL_13:
      if (a5 != -1 && ++v27 < a5)
      {
LABEL_15:
        self->_frameStoreOffset = [v37[5] nextOffset];
        v20 = v37[5];
        v21 = v7;
        v7 = v20;

        v22 = 0;
        goto LABEL_18;
      }

      self->_frameStoreOffset = [v37[5] offset];
      v25 = 1;
      goto LABEL_17;
    }

    [v13 creationTimestamp];
    if (v16 >= self->_endTime)
    {
      objc_storeStrong(&self->_currentFrameStore, v31[5]);
      [v37[5] creationTimestamp];
      if (v19 > a3)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    [v7 creationTimestamp];
    if (v17 <= a3)
    {
LABEL_9:
      self->_frameStoreOffset = [v7 offset];
    }

LABEL_17:
    v22 = 1;
LABEL_18:
    _Block_object_dispose(&v30, 8);

    _Block_object_dispose(&v36, 8);
    objc_autoreleasePoolPop(v8);
  }

  while (!v22);
  if (a4)
  {
    *a4 = v27;
  }

  return v25 & 1;
}

void __68__BMStoreEnumerator_advanceBookmarkV1ToStartTime_eventsFound_lastN___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (BOOL)advanceBookmarkV2ToStartTime:(double)a3 eventsFound:(unint64_t *)a4 lastN:(unint64_t)a5
{
  v19 = *MEMORY[0x1E69E9840];
  if (a5 == -1)
  {
    options = self->_options;
    if ([(BMStoreEnumerator *)self isDataAccessible])
    {
      v10 = [(BMFrameStore *)self->_currentFrameStore firstFrameNumberForTimestampV2:(options >> 3) & 1 reverse:a3];
      if (v10 == -1)
      {
        if ((options & 8) != 0)
        {
          v15 = 4294967294;
        }

        else
        {
          v15 = [(BMFrameStore *)self->_currentFrameStore offsetTableOffsetFromFrameNumberV2:[(BMFrameStore *)self->_currentFrameStore atomicReadTotalFramesV2]];
        }

        result = 0;
        self->_frameStoreOffset = v15;
      }

      else
      {
        self->_frameStoreOffset = [(BMFrameStore *)self->_currentFrameStore offsetTableOffsetFromFrameNumberV2:v10];
        result = 1;
      }
    }

    else
    {
      self->_frameStoreOffset = 4294967294;
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = MEMORY[0x1E698E9C8];
        v13 = [(BMFrameStore *)self->_currentFrameStore segmentPath];
        v14 = [v12 privacyPathname:v13];
        v17 = 138543362;
        v18 = v14;
        _os_log_impl(&dword_1C928A000, v11, OS_LOG_TYPE_INFO, "Segment is no longer accessible: %{public}@", &v17, 0xCu);
      }

      result = 0;
    }

    v16 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];

    return [BMStoreEnumerator advanceBookmarkV1ToStartTime:"advanceBookmarkV1ToStartTime:eventsFound:lastN:" eventsFound:a4 lastN:?];
  }

  return result;
}

- (id)copyNextEventAndMoveBookmark:(BOOL)a3 makeEvent:(id)a4
{
  v4 = a3;
  v65 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy_;
  v57 = __Block_byref_object_dispose_;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v7 = [(BMStoreEnumerator *)self bookmarkEnumerator];

  if (v7)
  {
    v8 = [(BMStoreEnumerator *)self bookmarkEnumerator];
    v9 = [v8 nextBookmark];

    if (!v9)
    {
      v15 = [(BMStoreEnumerator *)self bookmarkEnumerator];
      v16 = [v15 error];

      if (!v16)
      {
        v37 = 0;
        goto LABEL_40;
      }

      v13 = __biome_log_for_category();
      if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
      {
        v17 = [(BMStoreEnumerator *)self bookmarkEnumerator];
        v18 = [v17 error];
        v19 = [(BMStoreEnumerator *)self ds];
        v20 = [v19 streamPath];
        *buf = 138412546;
        v60 = v18;
        v61 = 2112;
        v62 = v20;
        _os_log_error_impl(&dword_1C928A000, &v13->super, OS_LOG_TYPE_ERROR, "Error calling [BMStoreBookmarkEnumerator nextBookmark]: %@ for stream %@ to create frame store", buf, 0x16u);
      }

      goto LABEL_33;
    }

    v10 = [(BMFrameStore *)self->_currentFrameStore segmentName];
    v11 = [v9 segmentName];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      v13 = self->_currentFrameStore;
    }

    else
    {
      v21 = [(BMStoreEnumerator *)self ds];
      v22 = [v9 segmentName];
      v46 = 0;
      v13 = [v21 segmentWithFilename:v22 error:&v46];
      v23 = v46;

      if (v23)
      {
        v24 = __biome_log_for_category();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v42 = [(BMStoreEnumerator *)self ds];
          v43 = [v42 streamPath];
          v44 = [v9 segmentName];
          *buf = 138412802;
          v60 = v43;
          v61 = 2112;
          v62 = v44;
          v63 = 2112;
          v64 = v23;
          _os_log_error_impl(&dword_1C928A000, v24, OS_LOG_TYPE_ERROR, "Unable to create frame store for stream: %@ from segmentName: %@, error:%@", buf, 0x20u);
        }

        goto LABEL_33;
      }
    }

    frameStoreOffset = [v9 offset];
  }

  else
  {
    v13 = self->_currentFrameStore;
    frameStoreOffset = self->_frameStoreOffset;
  }

  ds = self->_ds;
  options = self->_options;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __60__BMStoreEnumerator_copyNextEventAndMoveBookmark_makeEvent___block_invoke;
  v45[3] = &unk_1E8338BA0;
  v45[4] = &v53;
  v45[5] = &v47;
  [(BMStreamDatastore *)ds fetchEventFromFrameStore:v13 atOffset:frameStoreOffset withOptions:options callback:v45];
  v27 = v54[5];
  if (v27)
  {
    if ((self->_options & 8) != 0)
    {
      [v27 creationTimestamp];
      if (v29 >= self->_endTime)
      {
        goto LABEL_20;
      }
    }

    else
    {
      [v27 creationTimestamp];
      if (v28 <= self->_endTime)
      {
        goto LABEL_20;
      }
    }

    v30 = v54[5];
    v54[5] = 0;
  }

LABEL_20:
  v31 = v54[5];
  if (!v31)
  {
    v33 = 1;
    goto LABEL_30;
  }

  if ([v31 datastoreVersion] == 9 && (objc_msgSend(v54[5], "modifiedTimestamp"), v32 > self->_iterationStartTime))
  {
    v33 = 4;
    if (!v4)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v33 = 1;
    if (!v4)
    {
      goto LABEL_30;
    }
  }

  if ([v54[5] state] == 1)
  {
    maxEvents = self->_maxEvents;
    v35 = self->_eventCount + 1;
    self->_eventCount = v35;
    if (v35 > maxEvents)
    {
      v36 = v54[5];
      v54[5] = 0;
    }
  }

LABEL_30:
  if (v54[5])
  {
    if (v6)
    {
      v6[2](v6, v48[5], v54[5], v33);
    }

    else
    {
      [BMStoreEnumerator _eventWithFrameStore:"_eventWithFrameStore:frame:error:" frame:v48[5] error:?];
    }
    v37 = ;
    objc_storeStrong(&self->_currentFrameStore, v48[5]);
    v38 = v54[5];
    if (v4)
    {
      v39 = [v38 nextOffset];
    }

    else
    {
      v39 = [v38 offset];
    }

    self->_frameStoreOffset = v39;
    goto LABEL_39;
  }

LABEL_33:
  v37 = 0;
LABEL_39:

LABEL_40:
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  v40 = *MEMORY[0x1E69E9840];
  return v37;
}

void __60__BMStoreEnumerator_copyNextEventAndMoveBookmark_makeEvent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (void)skipToBookmarkOffset:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v10 = *MEMORY[0x1E69E9840];
  v3 = [v2 segmentName];
  v4 = [*v1 segmentName];
  OUTLINED_FUNCTION_4_0();
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1C928A000, v0, OS_LOG_TYPE_ERROR, "skipToBookmark: bookmark segment (%@) does not match BMStoreEnumerator's segment (%@)", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithStreamDatastore:(uint64_t)a1 bookmarkEnumerator:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMStoreEnumerator.m" lineNumber:76 description:@"enumerating bookmarks for a subscription or tombstone is not supported"];
}

- (void)initWithStreamDatastore:bookmark:options:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v9 = *MEMORY[0x1E69E9840];
  [v1 streamId];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_5() streamId];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithStreamDatastore:bookmark:options:error:.cold.2()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_1();
  v11 = *MEMORY[0x1E69E9840];
  [v1 offset];
  [OUTLINED_FUNCTION_5() frameStoreSize];
  v2 = MEMORY[0x1E698E9C8];
  v3 = [v0 segmentPath];
  v4 = [v2 privacyPathname:v3];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
}

- (void)initWithStreamDatastore:bookmark:options:error:.cold.3()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_1();
  v11 = *MEMORY[0x1E69E9840];
  [v1 offset];
  [OUTLINED_FUNCTION_5() bytesUsed];
  v2 = MEMORY[0x1E698E9C8];
  v3 = [v0 segmentPath];
  v4 = [v2 privacyPathname:v3];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x1Cu);

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
}

- (void)initWithStreamDatastore:bookmark:options:error:.cold.4()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_1();
  v2 = v1;
  v12 = *MEMORY[0x1E69E9840];
  [v1 offset];
  [v0 bytesUsed];
  [v2 offset];
  [OUTLINED_FUNCTION_5() bytesUsed];
  v3 = MEMORY[0x1E698E9C8];
  v4 = [v0 segmentPath];
  v5 = [v3 privacyPathname:v4];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0x26u);

  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
}

- (void)initWithStreamDatastore:(id *)a1 startTime:endTime:maxEvents:lastN:options:dataType:.cold.1(id *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698E9C8];
  v3 = [*a1 segmentPath];
  v4 = [v2 privacyPathname:v3];
  [*a1 datastoreVersion];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)bookmark
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  [*a2 segmentPath];
  objc_claimAutoreleasedReturnValue();
  v10 = [OUTLINED_FUNCTION_5() privacyPathname:v2];
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

@end