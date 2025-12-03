@interface BMStoreEnumerator
- (BMStoreBookmark)bookmark;
- (BMStoreEnumerator)initWithStreamDatastore:(id)datastore bookmark:(id)bookmark options:(unint64_t)options error:(id *)error;
- (BMStoreEnumerator)initWithStreamDatastore:(id)datastore bookmarkEnumerator:(id)enumerator error:(id *)error;
- (BMStoreEnumerator)initWithStreamDatastore:(id)datastore currentFrameStore:(id)store frameStoreOffset:(unint64_t)offset iterationStartTime:(double)time endTime:(double)endTime maxEvents:(unint64_t)events lastN:(unint64_t)n options:(unint64_t)self0 dataType:(Class)self1;
- (BMStoreEnumerator)initWithStreamDatastore:(id)datastore startTime:(double)time endTime:(double)endTime maxEvents:(unint64_t)events lastN:(unint64_t)n options:(unint64_t)options dataType:(Class)type;
- (BMStreamMetadata)metadata;
- (BOOL)advanceBookmarkToStartTime:(double)time eventsFound:(unint64_t *)found lastN:(unint64_t)n;
- (BOOL)advanceBookmarkV1ToStartTime:(double)time eventsFound:(unint64_t *)found lastN:(unint64_t)n;
- (BOOL)advanceBookmarkV2ToStartTime:(double)time eventsFound:(unint64_t *)found lastN:(unint64_t)n;
- (BOOL)skipToBookmarkOffset:(id)offset;
- (id)copyNextEventAndMoveBookmark:(BOOL)bookmark makeEvent:(id)event;
- (id)nextEvent;
- (id)peekEvent;
- (void)bookmark;
- (void)nextEventWithContext:(id)context;
- (void)setEndTime:(double)time maxEvents:(unint64_t)events lastN:(unint64_t)n reverse:(BOOL)reverse;
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
    metadata = [(BMStreamDatastore *)self->_ds metadata];
    v5 = self->_metadata;
    self->_metadata = metadata;

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
    streamId = __biome_log_for_category();
    v10 = os_log_type_enabled(streamId, OS_LOG_TYPE_FAULT);
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
    streamId = __biome_log_for_category();
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
    if (!os_log_type_enabled(streamId, v13))
    {
      goto LABEL_29;
    }

    datastoreVersion = [(BMFrameStore *)*p_currentFrameStore datastoreVersion];
    segmentPath = [(BMFrameStore *)*p_currentFrameStore segmentPath];
    *buf = 67109378;
    *&buf[4] = datastoreVersion;
    *&buf[8] = 2112;
    *&buf[10] = segmentPath;
    _os_log_impl(&dword_1C928A000, streamId, v13, "BMStoreEnumerator.bookmark: unknown datastoreVersion (%d) in frameStore: %@", buf, 0x12u);
    goto LABEL_18;
  }

  if (*p_frameStoreOffset)
  {
    v12 = [(BMFrameStore *)*p_currentFrameStore frameNumberFromOffsetToOffsetTableEntryV2:?];
    if ((v12 & 0x80000000) != 0)
    {
      streamId = __biome_log_for_category();
      if (os_log_type_enabled(streamId, OS_LOG_TYPE_FAULT))
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
    streamId = __biome_log_for_category();
    if (os_log_type_enabled(streamId, OS_LOG_TYPE_INFO))
    {
      v23 = MEMORY[0x1E698E9C8];
      segmentPath2 = [(BMFrameStore *)*p_currentFrameStore segmentPath];
      v25 = [v23 privacyPathname:segmentPath2];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_1C928A000, streamId, OS_LOG_TYPE_INFO, "Segment is no longer accessible (bookmark): %{public}@", buf, 0xCu);
    }

    goto LABEL_29;
  }

  atomicReadTotalFramesV2 = [(BMFrameStore *)*p_currentFrameStore atomicReadTotalFramesV2];
  if (v12 <= atomicReadTotalFramesV2)
  {
    goto LABEL_30;
  }

  v17 = atomicReadTotalFramesV2;
  v18 = [(BMFrameStore *)*p_currentFrameStore isCheckSumValidAtOffsetV2:*p_frameStoreOffset frameNumber:v12];
  streamId = __biome_log_for_category();
  v19 = os_log_type_enabled(streamId, OS_LOG_TYPE_FAULT);
  if (!v18)
  {
    if (v19)
    {
      v31 = *p_frameStoreOffset;
      v32 = MEMORY[0x1E698E9C8];
      segmentPath3 = [(BMFrameStore *)*p_currentFrameStore segmentPath];
      v34 = [v32 privacyPathname:segmentPath3];
      *buf = 134218754;
      *&buf[4] = v31;
      *&buf[12] = 1024;
      *&buf[14] = v12;
      *&buf[18] = 1024;
      *&buf[20] = v17;
      v37 = 2114;
      v38 = v34;
      _os_log_fault_impl(&dword_1C928A000, streamId, OS_LOG_TYPE_FAULT, "frameStore checksum mismatched, offset %zu, frame:%d is beyond totalFrames:%d for store: %{public}@", buf, 0x22u);
    }

    goto LABEL_33;
  }

  if (v19)
  {
    v20 = *p_frameStoreOffset;
    v21 = MEMORY[0x1E698E9C8];
    segmentPath4 = [(BMFrameStore *)*p_currentFrameStore segmentPath];
    segmentPath = [v21 privacyPathname:segmentPath4];
    *buf = 134218754;
    *&buf[4] = v20;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 1024;
    *&buf[20] = v17;
    v37 = 2114;
    v38 = segmentPath;
    _os_log_fault_impl(&dword_1C928A000, streamId, OS_LOG_TYPE_FAULT, "frameStore checksum matched, although offset %zu, frame:%d is beyond totalFrames:%d for store: %{public}@", buf, 0x22u);

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
    streamId = [(BMStreamDatastore *)self->_ds streamId];
    segmentName = [(BMFrameStore *)self->_currentFrameStore segmentName];
    v11 = [(BMStoreBookmark *)v27 initWithStream:streamId segment:segmentName iterationStartTime:self->_frameStoreOffset offset:self->_iterationStartTime];

    goto LABEL_39;
  }

  streamId = __biome_log_for_category();
  if (os_log_type_enabled(streamId, OS_LOG_TYPE_FAULT))
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

- (BOOL)skipToBookmarkOffset:(id)offset
{
  offsetCopy = offset;
  segmentName = [offsetCopy segmentName];
  segmentName2 = [(BMFrameStore *)self->_currentFrameStore segmentName];
  v7 = [segmentName isEqualToString:segmentName2];

  if (v7)
  {
    self->_frameStoreOffset = [offsetCopy offset];
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

- (void)setEndTime:(double)time maxEvents:(unint64_t)events lastN:(unint64_t)n reverse:(BOOL)reverse
{
  self->_endTime = time;
  self->_maxEvents = events;
  v6 = 8;
  if (!reverse)
  {
    v6 = 0;
  }

  v7 = self->_options & 0xFFFFFFFFFFFFFFF7 | v6;
  self->_lastEventCount = n;
  self->_options = v7;
}

- (BMStoreEnumerator)initWithStreamDatastore:(id)datastore bookmarkEnumerator:(id)enumerator error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  datastoreCopy = datastore;
  enumeratorCopy = enumerator;
  streamId = [datastoreCopy streamId];
  config = [datastoreCopy config];
  v13 = [config storeLocationOption] & 6;

  if (v13)
  {
    [BMStoreEnumerator initWithStreamDatastore:a2 bookmarkEnumerator:self error:?];
  }

  v14 = __biome_log_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    streamPath = [datastoreCopy streamPath];
    *buf = 138412802;
    v25 = streamId;
    v26 = 2112;
    v27 = streamPath;
    v28 = 2112;
    v29 = enumeratorCopy;
    _os_log_impl(&dword_1C928A000, v14, OS_LOG_TYPE_DEFAULT, "Enumerator for %@ from %@ using bookmarkEnumerator %@", buf, 0x20u);
  }

  v23.receiver = self;
  v23.super_class = BMStoreEnumerator;
  v16 = [(BMStoreEnumerator *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_ds, datastore);
    objc_storeStrong(&v17->_bookmarkEnumerator, enumerator);
    currentFrameStore = v17->_currentFrameStore;
    v17->_currentFrameStore = 0;

    v17->_frameStoreOffset = 0;
    v17->_iterationStartTime = CFAbsoluteTimeGetCurrent();
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [distantFuture timeIntervalSinceReferenceDate];
    v17->_endTime = v20;

    *&v17->_maxEvents = xmmword_1C92B82F0;
    *&v17->_lastEventCount = xmmword_1C92B82F0;
    v17->_dataType = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BMStoreEnumerator)initWithStreamDatastore:(id)datastore bookmark:(id)bookmark options:(unint64_t)options error:(id *)error
{
  v106[1] = *MEMORY[0x1E69E9840];
  datastoreCopy = datastore;
  bookmarkCopy = bookmark;
  streamId = [datastoreCopy streamId];
  streamId2 = [bookmarkCopy streamId];
  v14 = [streamId isEqualToString:streamId2];

  if (v14)
  {
    streamId3 = [datastoreCopy streamId];
    config = [datastoreCopy config];
    storeLocationOption = [config storeLocationOption];

    if ((storeLocationOption & 4) != 0)
    {
      v20 = @":subscriptions";
    }

    else
    {
      config2 = [datastoreCopy config];
      storeLocationOption2 = [config2 storeLocationOption];

      if ((storeLocationOption2 & 2) != 0)
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
      segmentDirectory = [datastoreCopy segmentDirectory];
      segmentName = [bookmarkCopy segmentName];
      *buf = 138413314;
      v98 = streamId3;
      v99 = 2112;
      *v100 = v20;
      *&v100[8] = 2112;
      *v101 = segmentDirectory;
      *&v101[8] = 2112;
      v102 = segmentName;
      v103 = 2048;
      offset = [bookmarkCopy offset];
      _os_log_impl(&dword_1C928A000, v28, OS_LOG_TYPE_DEFAULT, "Enumerator for %@%@ starting from %@/%@+0x%llx", buf, 0x34u);
    }

    segmentName2 = [bookmarkCopy segmentName];
    v90 = 0;
    v32 = [datastoreCopy segmentWithFilename:segmentName2 error:&v90];
    v26 = v90;

    if (v26)
    {
      if (error)
      {
        v33 = v26;
        selfCopy = 0;
        *error = v26;
LABEL_49:

        goto LABEL_50;
      }

LABEL_48:
      selfCopy = 0;
      goto LABEL_49;
    }

    if (!bookmarkCopy || (~[bookmarkCopy offset] & 0xFFFFFFFE) == 0)
    {
LABEL_19:
      offset2 = [bookmarkCopy offset];
      [bookmarkCopy iterationStartTime];
      v36 = v35;
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      [distantFuture timeIntervalSinceReferenceDate];
      v39 = [(BMStoreEnumerator *)self initWithStreamDatastore:datastoreCopy currentFrameStore:v32 frameStoreOffset:offset2 iterationStartTime:-1 endTime:-1 maxEvents:options lastN:v36 options:v38 dataType:0];

      self = v39;
      selfCopy = self;
      goto LABEL_49;
    }

    if ([v32 datastoreVersion] == 9)
    {
      offset3 = [bookmarkCopy offset];
      if (offset3 <= [v32 bytesUsed] - 56)
      {
        goto LABEL_19;
      }

      v41 = [v32 isCheckSumValidAtOffsetV1:{objc_msgSend(bookmarkCopy, "offset")}];
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
      offset4 = [bookmarkCopy offset];
      bytesUsed = [v32 bytesUsed];
      v56 = MEMORY[0x1E698E9C8];
      segmentPath = [v32 segmentPath];
      v58 = [v56 privacyPathname:segmentPath];
      v50 = [v85 initWithFormat:@"frameStore checksum mismatched and is beyond frame offset:%zu bytesUsed:%d for store: %@", offset4, bytesUsed, v58];

      if (!error)
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
      *error = [v51 errorWithDomain:@"com.apple.biome.BiomeStorage" code:-1 userInfo:v59];

      goto LABEL_38;
    }

    if ([v32 datastoreVersion] != 10)
    {
      goto LABEL_19;
    }

    if ([bookmarkCopy offset])
    {
      v44 = [v32 frameNumberFromOffsetToOffsetTableEntryV2:{objc_msgSend(bookmarkCopy, "offset")}];
      if ((v44 & 0x80000000) != 0)
      {
        v45 = __biome_log_for_category();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          [BMStoreEnumerator initWithStreamDatastore:bookmark:options:error:];
        }

        v84 = objc_alloc(MEMORY[0x1E696AEC0]);
        offset5 = [bookmarkCopy offset];
        frameStoreSize = [v32 frameStoreSize];
        v47 = MEMORY[0x1E698E9C8];
        segmentPath2 = [v32 segmentPath];
        v49 = [v47 privacyPathname:segmentPath2];
        v50 = [v84 initWithFormat:@"initWithStreamDatastore: bookmark offset (%zu) is beyond frameStore size:%zu for store: %@", offset5, frameStoreSize, v49];

        if (!error)
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

    if (([datastoreCopy isDataAccessible] & 1) == 0)
    {
      v64 = __biome_log_for_category();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = MEMORY[0x1E698E9C8];
        streamPath = [datastoreCopy streamPath];
        v67 = [v65 privacyPathname:streamPath];
        *buf = 138543362;
        v98 = v67;
        _os_log_impl(&dword_1C928A000, v64, OS_LOG_TYPE_INFO, "Segment is no longer accessible: %{public}@", buf, 0xCu);
      }

      goto LABEL_48;
    }

    atomicReadTotalFramesV2 = [v32 atomicReadTotalFramesV2];
    if (v44 <= atomicReadTotalFramesV2)
    {
      goto LABEL_19;
    }

    v83 = atomicReadTotalFramesV2;
    v86 = [v32 isCheckSumValidAtOffsetV2:objc_msgSend(bookmarkCopy frameNumber:{"offset"), v44}];
    v42 = __biome_log_for_category();
    v61 = os_log_type_enabled(v42, OS_LOG_TYPE_FAULT);
    if ((v86 & 1) == 0)
    {
      if (v61)
      {
        offset6 = [bookmarkCopy offset];
        v76 = MEMORY[0x1E698E9C8];
        segmentPath3 = [v32 segmentPath];
        v77 = [v76 privacyPathname:segmentPath3];
        *buf = 134218754;
        v98 = offset6;
        v99 = 1024;
        *v100 = v44;
        *&v100[4] = 1024;
        *&v100[6] = v83;
        *v101 = 2114;
        *&v101[2] = v77;
        _os_log_fault_impl(&dword_1C928A000, v42, OS_LOG_TYPE_FAULT, "frameStore checksum mismatched, offset %zu, frame:%d is beyond totalFrames:%d for store: %{public}@", buf, 0x22u);
      }

      v88 = objc_alloc(MEMORY[0x1E696AEC0]);
      offset7 = [bookmarkCopy offset];
      v70 = MEMORY[0x1E698E9C8];
      segmentPath4 = [v32 segmentPath];
      v72 = [v70 privacyPathname:segmentPath4];
      v73 = [v88 initWithFormat:@"frameStore checksum mismatched, offset %zu, frame:%d is beyond totalFrames:%d for store: %@", offset7, v44, v83, v72];

      if (error)
      {
        v74 = MEMORY[0x1E696ABC0];
        v91 = *MEMORY[0x1E696A578];
        v92 = v73;
        v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        *error = [v74 errorWithDomain:@"com.apple.biome.BiomeStorage" code:-1 userInfo:v75];
      }

      goto LABEL_48;
    }

    if (v61)
    {
      offset8 = [bookmarkCopy offset];
      v62 = MEMORY[0x1E698E9C8];
      segmentPath5 = [v32 segmentPath];
      v63 = [v62 privacyPathname:segmentPath5];
      *buf = 134218754;
      v98 = offset8;
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
  streamId4 = [datastoreCopy streamId];
  streamId5 = [bookmarkCopy streamId];
  streamId3 = [v22 initWithFormat:@"Data store streamId is %@ while bookmark streamId is %@", streamId4, streamId5];

  if (error)
  {
    v25 = MEMORY[0x1E696ABC0];
    v105 = *MEMORY[0x1E696A578];
    v106[0] = streamId3;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:&v105 count:1];
    [v25 errorWithDomain:@"com.apple.biome.BiomeStorage" code:-1 userInfo:v26];
    *error = selfCopy = 0;
LABEL_50:

    goto LABEL_51;
  }

  selfCopy = 0;
LABEL_51:

  v68 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BMStoreEnumerator)initWithStreamDatastore:(id)datastore startTime:(double)time endTime:(double)endTime maxEvents:(unint64_t)events lastN:(unint64_t)n options:(unint64_t)options dataType:(Class)type
{
  v50 = *MEMORY[0x1E69E9840];
  datastoreCopy = datastore;
  v17 = datastoreCopy;
  v18 = time < endTime;
  if ((options & 8) == 0)
  {
    v18 = time > endTime;
  }

  if (!v18)
  {
    if ([datastoreCopy isDataAccessible])
    {
      if (n == -1)
      {
        v22 = (options >> 3) & 1;
      }

      else
      {
        v22 = (options & 8) == 0;
      }

      if (n == -1)
      {
        timeCopy = endTime;
      }

      else
      {
        options ^= 8uLL;
        timeCopy = time;
      }

      if (n == -1)
      {
        endTime = time;
      }

      v24 = [v17 segmentContainingTimestamp:endTime];
      self = [(BMStoreEnumerator *)self initWithStreamDatastore:v17 currentFrameStore:v24 frameStoreOffset:0xFFFFFFFFLL iterationStartTime:-1 endTime:n maxEvents:options lastN:CFAbsoluteTimeGetCurrent() options:timeCopy dataType:type];

      if (!self)
      {
        goto LABEL_50;
      }

      v41 = 0;
      v25 = [(BMStoreEnumerator *)self advanceBookmarkToStartTime:&v41 eventsFound:n lastN:endTime];
      if ([v17 isDataAccessible])
      {
        if (n == -1)
        {
LABEL_49:
          self->_maxEvents = events;
LABEL_50:
          self = self;
          selfCopy = self;
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
            self->_endTime = endTime;
            self->_options ^= 8uLL;
            if (v41 < events)
            {
              events = v41;
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

          currentFrameStore = [(BMStoreEnumerator *)self currentFrameStore];
          atomicReadTotalFramesV2 = [currentFrameStore atomicReadTotalFramesV2];

          v38 = self->_frameStoreOffset;
          if (v22)
          {
            if (v38 != 4294967294)
            {
              goto LABEL_47;
            }
          }

          else if (v38 != [(BMFrameStore *)*p_currentFrameStore offsetTableOffsetFromFrameNumberV2:atomicReadTotalFramesV2])
          {
            goto LABEL_47;
          }
        }

LABEL_45:
        self->_frameStoreOffset = 0xFFFFFFFFLL;
        v40 = [v17 segmentContainingTimestamp:timeCopy];
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
      streamPath = [v17 streamPath];
      streamId = [v32 privacyPathname:streamPath];
      *buf = 138543362;
      v43 = streamId;
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
      streamPath = [v17 streamPath];
      streamId = [v29 privacyPathname:streamPath];
      *buf = 138543362;
      v43 = streamId;
      v31 = "Segment is no longer accessible: %{public}@";
    }

    _os_log_impl(&dword_1C928A000, v19, OS_LOG_TYPE_INFO, v31, buf, 0xCu);

LABEL_33:
    goto LABEL_34;
  }

  v19 = __biome_log_for_category();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    streamId = [v17 streamId];
    v21 = "YES";
    *buf = 138544130;
    v43 = streamId;
    v44 = 2048;
    if ((options & 8) == 0)
    {
      v21 = "NO";
    }

    timeCopy2 = time;
    v46 = 2048;
    endTimeCopy2 = endTime;
    v48 = 2080;
    v49 = v21;
    _os_log_impl(&dword_1C928A000, v19, OS_LOG_TYPE_INFO, "initWithStreamDatastore: stream: %{public}@ with startTime: %f, endTime: %f, and reverse: %s will result in no events, so returning nil", buf, 0x2Au);
    goto LABEL_33;
  }

LABEL_34:

  selfCopy = 0;
LABEL_35:

  v34 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BMStoreEnumerator)initWithStreamDatastore:(id)datastore currentFrameStore:(id)store frameStoreOffset:(unint64_t)offset iterationStartTime:(double)time endTime:(double)endTime maxEvents:(unint64_t)events lastN:(unint64_t)n options:(unint64_t)self0 dataType:(Class)self1
{
  datastoreCopy = datastore;
  storeCopy = store;
  v26.receiver = self;
  v26.super_class = BMStoreEnumerator;
  v22 = [(BMStoreEnumerator *)&v26 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_ds, datastore);
    objc_storeStrong(&v23->_currentFrameStore, store);
    v23->_frameStoreOffset = offset;
    v23->_iterationStartTime = time;
    v23->_endTime = endTime;
    v23->_maxEvents = events;
    v23->_eventCount = 0;
    v23->_lastEventCount = n;
    v23->_options = options;
    v23->_dataType = type;
    bookmarkEnumerator = v23->_bookmarkEnumerator;
    v23->_bookmarkEnumerator = 0;
  }

  return v23;
}

- (void)nextEventWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_autoreleasePoolPush();
  nextEvent = [(BMStoreEnumerator *)self nextEvent];
  contextCopy[2](contextCopy, nextEvent, self->_currentFrameStore);

  objc_autoreleasePoolPop(v4);
}

- (id)peekEvent
{
  v2 = [(BMStoreEnumerator *)self copyNextEventAndMoveBookmark:0];

  return v2;
}

- (BOOL)advanceBookmarkToStartTime:(double)time eventsFound:(unint64_t *)found lastN:(unint64_t)n
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

    return [(BMStoreEnumerator *)self advanceBookmarkV1ToStartTime:found eventsFound:n lastN:time];
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
      datastoreVersion = [(BMFrameStore *)self->_currentFrameStore datastoreVersion];
      segmentPath = [(BMFrameStore *)self->_currentFrameStore segmentPath];
      *buf = 67109378;
      *&buf[4] = datastoreVersion;
      LOWORD(v20) = 2112;
      *(&v20 + 2) = segmentPath;
      _os_log_impl(&dword_1C928A000, v13, v14, "advanceBookmarkToStartTime: unknown datastoreVersion (%d) in frameStore: %@", buf, 0x12u);
    }

    goto LABEL_15;
  }

  v12 = *MEMORY[0x1E69E9840];

  return [(BMStoreEnumerator *)self advanceBookmarkV2ToStartTime:found eventsFound:n lastN:time];
}

- (BOOL)advanceBookmarkV1ToStartTime:(double)time eventsFound:(unint64_t *)found lastN:(unint64_t)n
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
        if (v15 >= time)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }

      objc_storeStrong(&self->_currentFrameStore, v31[5]);
      [v37[5] creationTimestamp];
      if (v18 < time)
      {
        goto LABEL_15;
      }

LABEL_13:
      if (n != -1 && ++v27 < n)
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
      if (v19 > time)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    [v7 creationTimestamp];
    if (v17 <= time)
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
  if (found)
  {
    *found = v27;
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

- (BOOL)advanceBookmarkV2ToStartTime:(double)time eventsFound:(unint64_t *)found lastN:(unint64_t)n
{
  v19 = *MEMORY[0x1E69E9840];
  if (n == -1)
  {
    options = self->_options;
    if ([(BMStoreEnumerator *)self isDataAccessible])
    {
      v10 = [(BMFrameStore *)self->_currentFrameStore firstFrameNumberForTimestampV2:(options >> 3) & 1 reverse:time];
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
        segmentPath = [(BMFrameStore *)self->_currentFrameStore segmentPath];
        v14 = [v12 privacyPathname:segmentPath];
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

    return [BMStoreEnumerator advanceBookmarkV1ToStartTime:"advanceBookmarkV1ToStartTime:eventsFound:lastN:" eventsFound:found lastN:?];
  }

  return result;
}

- (id)copyNextEventAndMoveBookmark:(BOOL)bookmark makeEvent:(id)event
{
  bookmarkCopy = bookmark;
  v65 = *MEMORY[0x1E69E9840];
  eventCopy = event;
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
  bookmarkEnumerator = [(BMStoreEnumerator *)self bookmarkEnumerator];

  if (bookmarkEnumerator)
  {
    bookmarkEnumerator2 = [(BMStoreEnumerator *)self bookmarkEnumerator];
    nextBookmark = [bookmarkEnumerator2 nextBookmark];

    if (!nextBookmark)
    {
      bookmarkEnumerator3 = [(BMStoreEnumerator *)self bookmarkEnumerator];
      error = [bookmarkEnumerator3 error];

      if (!error)
      {
        v37 = 0;
        goto LABEL_40;
      }

      v13 = __biome_log_for_category();
      if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
      {
        bookmarkEnumerator4 = [(BMStoreEnumerator *)self bookmarkEnumerator];
        error2 = [bookmarkEnumerator4 error];
        v19 = [(BMStoreEnumerator *)self ds];
        streamPath = [v19 streamPath];
        *buf = 138412546;
        v60 = error2;
        v61 = 2112;
        v62 = streamPath;
        _os_log_error_impl(&dword_1C928A000, &v13->super, OS_LOG_TYPE_ERROR, "Error calling [BMStoreBookmarkEnumerator nextBookmark]: %@ for stream %@ to create frame store", buf, 0x16u);
      }

      goto LABEL_33;
    }

    segmentName = [(BMFrameStore *)self->_currentFrameStore segmentName];
    segmentName2 = [nextBookmark segmentName];
    v12 = [segmentName isEqualToString:segmentName2];

    if (v12)
    {
      v13 = self->_currentFrameStore;
    }

    else
    {
      v21 = [(BMStoreEnumerator *)self ds];
      segmentName3 = [nextBookmark segmentName];
      v46 = 0;
      v13 = [v21 segmentWithFilename:segmentName3 error:&v46];
      v23 = v46;

      if (v23)
      {
        v24 = __biome_log_for_category();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v42 = [(BMStoreEnumerator *)self ds];
          streamPath2 = [v42 streamPath];
          segmentName4 = [nextBookmark segmentName];
          *buf = 138412802;
          v60 = streamPath2;
          v61 = 2112;
          v62 = segmentName4;
          v63 = 2112;
          v64 = v23;
          _os_log_error_impl(&dword_1C928A000, v24, OS_LOG_TYPE_ERROR, "Unable to create frame store for stream: %@ from segmentName: %@, error:%@", buf, 0x20u);
        }

        goto LABEL_33;
      }
    }

    frameStoreOffset = [nextBookmark offset];
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
    if (!bookmarkCopy)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v33 = 1;
    if (!bookmarkCopy)
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
    if (eventCopy)
    {
      eventCopy[2](eventCopy, v48[5], v54[5], v33);
    }

    else
    {
      [BMStoreEnumerator _eventWithFrameStore:"_eventWithFrameStore:frame:error:" frame:v48[5] error:?];
    }
    v37 = ;
    objc_storeStrong(&self->_currentFrameStore, v48[5]);
    v38 = v54[5];
    if (bookmarkCopy)
    {
      nextOffset = [v38 nextOffset];
    }

    else
    {
      nextOffset = [v38 offset];
    }

    self->_frameStoreOffset = nextOffset;
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
  v3 = *self;
  [*a2 segmentPath];
  objc_claimAutoreleasedReturnValue();
  v10 = [OUTLINED_FUNCTION_5() privacyPathname:v2];
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

@end