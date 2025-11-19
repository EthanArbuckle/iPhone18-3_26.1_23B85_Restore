@interface BPSBiomeStorePublisher
- (BPSBiomeStorePublisher)initWithStreamDatastoreReader:(id)a3 streamsAccessClient:(id)a4;
- (BPSBiomeStorePublisher)initWithStreamId:(id)a3 storeConfig:(id)a4 streamsAccessClient:(id)a5 eventDataClass:(Class)a6;
- (id)_newEnumerator;
- (id)bookmark;
- (id)nextEvent;
- (id)startWithSubscriber:(id)a3;
- (id)validateBookmark:(id)a3;
- (id)withBookmark:(id)a3;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSBiomeStorePublisher

- (id)bookmark
{
  v2 = [(BPSBiomeStorePublisher *)self enumerator];
  v3 = [v2 bookmark];

  return v3;
}

- (id)nextEvent
{
  v3 = [(BPSBiomeStorePublisher *)self enumerator];
  v4 = [v3 nextEvent];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    [(BPSBiomeStorePublisher *)self setFinished:1];
  }

  return v4;
}

- (void)reset
{
  [(BPSBiomeStorePublisher *)self setFinished:0];

  [(BPSBiomeStorePublisher *)self setEnumerator:0];
}

- (id)_newEnumerator
{
  v55 = *MEMORY[0x1E69E9840];
  startTime = self->_startTime;
  v5 = [MEMORY[0x1E695DF00] distantPast];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  if (startTime == v7)
  {
    v8 = 0.0;
    if (self->_reversed)
    {
      v9 = [MEMORY[0x1E695DF00] distantFuture];
      [v9 timeIntervalSinceReferenceDate];
      v8 = v10;
    }
  }

  else
  {
    v8 = self->_startTime;
  }

  endTime = self->_endTime;
  v12 = [MEMORY[0x1E695DF00] distantFuture];
  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;

  if (endTime == v14)
  {
    v15 = 0.0;
    if (!self->_reversed)
    {
      v16 = [MEMORY[0x1E695DF00] distantFuture];
      [v16 timeIntervalSinceReferenceDate];
      v15 = v17;
    }
  }

  else
  {
    v15 = self->_endTime;
  }

  if (self->_bookmark)
  {
    if (!self->_indexSearch)
    {
      goto LABEL_11;
    }

    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [(BPSBiomeStorePublisher *)self streamId];
    bookmark = self->_bookmark;
    [v21 handleFailureInMethod:a2 object:self file:@"BPSBiomeStorePublisher.m" lineNumber:273 description:{@"both bookmark and indexSearch may not both be set. Stream: %@, bookmark: %@, indexSearch: %@", v22, bookmark, self->_indexSearch}];

    if (self->_bookmark)
    {
LABEL_11:
      v18 = [(BMStreamDatastoreReader *)self->_streamDatastoreReader newEnumeratorFromBookmark:?];
      if (v18)
      {
        v19 = v18;
        [v18 setEndTime:self->_maxEvents maxEvents:self->_lastEventCount lastN:self->_reversed reverse:v15];
        goto LABEL_35;
      }

      v20 = __biome_log_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(BPSBiomeStorePublisher *)self _newEnumerator];
      }

      goto LABEL_28;
    }
  }

  indexSearch = self->_indexSearch;
  if (indexSearch)
  {
    if (self->_lastEventCount != -1)
    {
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      v43 = [(BPSBiomeStorePublisher *)self streamId];
      v44 = self->_indexSearch;
      [v42 handleFailureInMethod:a2 object:self file:@"BPSBiomeStorePublisher.m" lineNumber:287 description:{@"lastN and indexSearch may not both be set. Stream: %@, indexSearch: %@ lastN: %lu", v43, v44, self->_lastEventCount}];

      indexSearch = self->_indexSearch;
    }

    v25 = self->_startTime;
    v26 = self->_endTime;
    maxEvents = self->_maxEvents;
    reversed = self->_reversed;
    v46 = 0;
    v29 = [(BMIndexSearch *)indexSearch performSearchWithStartTime:maxEvents endTime:reversed maxEvents:&v46 reversed:v25 error:v26];
    v30 = v46;
    if (v29)
    {
      streamDatastoreReader = self->_streamDatastoreReader;
      v45 = v30;
      v19 = [(BMStreamDatastoreReader *)streamDatastoreReader newEnumeratorFromBookmarkEnumerator:v29 error:&v45];
      v20 = v45;

      if (v19)
      {

        goto LABEL_35;
      }

      v32 = __biome_log_for_category();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v40 = [(BPSBiomeStorePublisher *)self streamId];
        v41 = self->_indexSearch;
        *buf = 138412802;
        v48 = v40;
        v49 = 2112;
        v50 = *&v41;
        v51 = 2112;
        v52 = *&v20;
        _os_log_error_impl(&dword_1848EE000, v32, OS_LOG_TYPE_ERROR, "newEnumeratorFromBookmark nil for stream: %@ and _indexSearch: %@, error: %@. No enumeration performed", buf, 0x20u);
      }
    }

    else
    {
      v32 = __biome_log_for_category();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v37 = self->_indexSearch;
        v38 = [(BPSBiomeStorePublisher *)self streamId];
        *buf = 138412802;
        v48 = v37;
        v49 = 2112;
        v50 = *&v38;
        v51 = 2112;
        v52 = *&v30;
        _os_log_error_impl(&dword_1848EE000, v32, OS_LOG_TYPE_ERROR, "[BMIndexSearch performSearchWithError:] returns a nil BMIndexRowEnumerator for BMIndexSearch: %@ nil on stream: %@. Error: %@, No enumeration performed", buf, 0x20u);
      }

      v20 = v30;
    }

LABEL_28:
  }

  if (self->_indexSearch)
  {
LABEL_30:
    v19 = 0;
    goto LABEL_35;
  }

  if (self->_reversed)
  {
    v33 = 8;
  }

  else
  {
    v33 = 0;
  }

  v19 = [(BMStreamDatastoreReader *)self->_streamDatastoreReader newEnumeratorFromStartTime:self->_maxEvents endTime:self->_lastEventCount maxEvents:v33 lastN:v8 options:v15];
  if (!v19)
  {
    v36 = __biome_log_for_category();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v39 = [(BPSBiomeStorePublisher *)self streamId];
      *buf = 138413058;
      v48 = v39;
      v49 = 2048;
      v50 = v8;
      v51 = 2048;
      v52 = v15;
      v53 = 2048;
      v54 = v33;
      _os_log_error_impl(&dword_1848EE000, v36, OS_LOG_TYPE_ERROR, "newEnumeratorFromStartTime nil for stream: %@, start time: %lf endTime: %lf options: %lu", buf, 0x2Au);
    }

    goto LABEL_30;
  }

LABEL_35:
  v34 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BPSBiomeStorePublisher)initWithStreamId:(id)a3 storeConfig:(id)a4 streamsAccessClient:(id)a5 eventDataClass:(Class)a6
{
  v10 = MEMORY[0x1E698F150];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 alloc];
  v15 = [v14 initWithStream:v13 config:v12 eventDataClass:a6 useCase:*MEMORY[0x1E698E928]];

  v16 = [(BPSBiomeStorePublisher *)self initWithStreamDatastoreReader:v15 streamsAccessClient:v11];
  return v16;
}

- (BPSBiomeStorePublisher)initWithStreamDatastoreReader:(id)a3 streamsAccessClient:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = BPSBiomeStorePublisher;
  v9 = [(BPSBiomeStorePublisher *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_reversed = 0;
    v11 = [MEMORY[0x1E695DF00] distantPast];
    [v11 timeIntervalSinceReferenceDate];
    v10->_startTime = v12;

    v13 = [MEMORY[0x1E695DF00] distantFuture];
    [v13 timeIntervalSinceReferenceDate];
    v10->_endTime = v14;

    v10->_maxEvents = -1;
    v10->_lastEventCount = -1;
    objc_storeStrong(&v10->_streamDatastoreReader, a3);
    objc_storeStrong(&v10->_accessClient, a4);
  }

  return v10;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v8 = [(BPSBiomeStorePublisher *)self _newEnumerator];
  v5 = [_BPSInnerBiomeSubscription alloc];
  v6 = [(BPSBiomeStorePublisher *)self streamId];
  v7 = [(_BPSInnerBiomeSubscription *)v5 initWithStreamEnumerator:v8 downstream:v4 streamId:v6 accessClient:self->_accessClient];

  [v4 receiveSubscription:v7];
}

- (id)startWithSubscriber:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = [(BPSBiomeStorePublisher *)self _newEnumerator];
  if (([(BMStreamDatastoreReader *)self->_streamDatastoreReader isDataAccessible]& 1) != 0)
  {
    if (v4)
    {
      [(BPSBiomeStorePublisher *)self setEnumerator:v4];
      v5 = 0;
      goto LABEL_7;
    }

    v16 = objc_alloc(MEMORY[0x1E696AEC0]);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v9 = [v16 initWithFormat:@"%@ failed to create enumerator", v18];

    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E698F0B0];
    v23 = *MEMORY[0x1E696A578];
    v24 = v9;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v13 = v19;
    v14 = v20;
    v15 = 3;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 initWithFormat:@"%@ data is not accessible", v8];

    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E698F0B0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = v9;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v13 = v10;
    v14 = v11;
    v15 = 1;
  }

  v5 = [v13 errorWithDomain:v14 code:v15 userInfo:v12];

LABEL_7:
  v21 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)validateBookmark:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v5 initWithFormat:@"%@ expected bookmark of class %@, but received %@", v7, v9, v3];

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E698F0B0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = v10;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v4 = [v11 errorWithDomain:v12 code:2 userInfo:v13];
  }

  else
  {
    v4 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)withBookmark:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFB0] null];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BPSBiomeStorePublisher withBookmark:v7];
    }

    goto LABEL_8;
  }

  if (!v4)
  {
LABEL_8:
    v9 = self;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 value];
  }

  else
  {
    v8 = v4;
  }

  v10 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_bookmark, v10);
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BPSBiomeStorePublisher withBookmark:?];
    }
  }

  v12 = self;

LABEL_16:

  return self;
}

@end