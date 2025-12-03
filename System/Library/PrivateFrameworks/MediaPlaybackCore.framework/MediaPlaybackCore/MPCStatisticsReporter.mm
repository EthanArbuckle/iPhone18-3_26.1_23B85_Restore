@interface MPCStatisticsReporter
- (MPCPlaybackEngine)playbackEngine;
- (MPCStatisticsReporter)init;
- (NSString)recordScenarioName;
- (id)_reportDirectoryURL;
- (id)_reportingFileForRecorder:(id)recorder extension:(id)extension;
- (id)description;
- (void)_clearLocalReports;
- (void)_sendAnalyticsData;
- (void)_writeAnalyticsDataFromRecorder:(id)recorder;
- (void)_writeData:(id)data toFileAtPath:(id)path;
- (void)_writeSamplesFromRecorder:(id)recorder;
- (void)flush;
- (void)reportRecordedResults:(id)results;
@end

@implementation MPCStatisticsReporter

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  recordScenarioName = [(MPCStatisticsReporter *)self recordScenarioName];
  v6 = [v3 stringWithFormat:@"<%@: %p - recordScenarioName:%@>", v4, self, recordScenarioName];

  return v6;
}

- (void)_writeData:(id)data toFileAtPath:(id)path
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  pathCopy = path;
  dispatch_assert_queue_V2(self->_writerQueue);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [defaultManager fileExistsAtPath:pathCopy];

  if (v9)
  {
    v10 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:pathCopy];
    v11 = v10;
    if (v10)
    {
      v28 = 0;
      v12 = [v10 seekToEndReturningOffset:0 error:&v28];
      v13 = v28;
      v14 = v13;
      if (!v12 || v13)
      {
        v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy6 = self;
          v32 = 2114;
          v33 = v14;
          _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_ERROR, "[AP] - %{public}@ - Unable to seek to file for records update - error: %{public}@", buf, 0x16u);
        }

        goto LABEL_25;
      }

      v27 = 0;
      [v11 writeData:dataCopy error:&v27];
      v15 = v27;
      v14 = v27;
      v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy6 = self;
          v32 = 2114;
          v33 = v14;
          v18 = "[AP] - %{public}@ - Unable to write data for records update - error: %{public}@";
          v19 = v17;
          v20 = OS_LOG_TYPE_ERROR;
LABEL_23:
          _os_log_impl(&dword_1C5C61000, v19, v20, v18, buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy6 = self;
        v32 = 2114;
        v33 = pathCopy;
        v18 = "[AP] - %{public}@ - Records update successful at %{public}@";
        v19 = v17;
        v20 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_23;
      }

      [v11 closeFile];
      goto LABEL_25;
    }

    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy6 = self;
      v23 = "[AP] - %{public}@ - Unable to open file for records update";
      v24 = v14;
      v25 = 12;
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  v29 = 0;
  v21 = [dataCopy writeToFile:pathCopy options:0 error:&v29];
  v11 = v29;
  v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v14 = v22;
  if (!v21 || v11)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy6 = self;
      v32 = 2114;
      v33 = v11;
      v23 = "[AP] - %{public}@ - Unable to create file for records - error: %{public}@";
      v24 = v14;
      v25 = 22;
LABEL_17:
      _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
    }

LABEL_25:

    goto LABEL_26;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy6 = self;
    v32 = 2114;
    v33 = pathCopy;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Records creation successful at %{public}@", buf, 0x16u);
  }

  v11 = v14;
LABEL_26:
}

- (void)_writeSamplesFromRecorder:(id)recorder
{
  writerQueue = self->_writerQueue;
  recorderCopy = recorder;
  dispatch_assert_queue_V2(writerQueue);
  v9 = [(MPCStatisticsReporter *)self _reportingFileForRecorder:recorderCopy extension:@".csv"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v9];

  v8 = [recorderCopy flushSamplesToCSVDataWithHeader:v7 ^ 1u];

  if (v8)
  {
    [(MPCStatisticsReporter *)self _writeData:v8 toFileAtPath:v9];
  }
}

- (id)_reportingFileForRecorder:(id)recorder extension:(id)extension
{
  extensionCopy = extension;
  writerQueue = self->_writerQueue;
  recorderCopy = recorder;
  dispatch_assert_queue_V2(writerQueue);
  v9 = MSVGetDeviceProductType();
  v10 = v9;
  v11 = @"Unknown";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  recordScenarioName = [(MPCStatisticsReporter *)self recordScenarioName];
  v14 = MEMORY[0x1E696AEC0];
  modelID = [recorderCopy modelID];

  v16 = [v14 stringWithFormat:@"%@__%@", modelID, v12];

  if (recordScenarioName)
  {
    v17 = [v16 stringByAppendingFormat:@"__%@", recordScenarioName];

    v16 = v17;
  }

  v18 = [v16 stringByAppendingString:extensionCopy];

  _reportDirectoryURL = [(MPCStatisticsReporter *)self _reportDirectoryURL];
  path = [_reportDirectoryURL path];
  v21 = [path stringByAppendingPathComponent:v18];

  return v21;
}

- (id)_reportDirectoryURL
{
  v23[2] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_writerQueue);
  v3 = MEMORY[0x1E695DFF8];
  v4 = MSVMobileHomeDirectory();
  v23[0] = v4;
  v23[1] = @"Media/Espresso/Analytics";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v6 = [v3 fileURLWithPathComponents:v5];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v6 path];
  v9 = [defaultManager fileExistsAtPath:path isDirectory:0];

  if ((v9 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    path2 = [v6 path];
    v16 = 0;
    v12 = [defaultManager2 createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v16];
    v13 = v16;

    if ((v12 & 1) == 0)
    {
      v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543874;
        selfCopy = self;
        v19 = 2114;
        v20 = v6;
        v21 = 2114;
        v22 = v13;
        _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_FAULT, "[AP] - %{public}@ - Failed to create directory at URL: %{public}@ error: %{public}@", buf, 0x20u);
      }
    }
  }

  return v6;
}

- (void)_clearLocalReports
{
  v41 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_writerQueue);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  selfCopy = self;
  _reportDirectoryURL = [(MPCStatisticsReporter *)self _reportDirectoryURL];
  path = [_reportDirectoryURL path];
  v27 = defaultManager;
  v5 = [defaultManager enumeratorAtPath:path];

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    path2 = [_reportDirectoryURL path];
    *buf = 138543618;
    v35 = selfCopy;
    v36 = 2114;
    v37 = path2;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Removing local report files in %{public}@", buf, 0x16u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v31;
    *&v9 = 138543874;
    v24 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        pathExtension = [v13 pathExtension];
        if ([pathExtension isEqualToString:@"json"])
        {
        }

        else
        {
          pathExtension2 = [v13 pathExtension];
          v16 = [pathExtension2 isEqualToString:@"csv"];

          if (!v16)
          {
            continue;
          }
        }

        path3 = [_reportDirectoryURL path];
        v18 = [path3 stringByAppendingPathComponent:v13];

        v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v35 = selfCopy;
          v36 = 2114;
          v37 = v18;
          _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Removing %{public}@", buf, 0x16u);
        }

        v29 = 0;
        v20 = [v27 removeItemAtPath:v18 error:&v29];
        v21 = v29;
        v22 = v21;
        if (!v20 || v21)
        {
          v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v35 = selfCopy;
            v36 = 2114;
            v37 = v18;
            v38 = 2114;
            v39 = v22;
            _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_ERROR, "[AP] - %{public}@ - Failed to remove: %{public}@ - error:%{public}@", buf, 0x20u);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v10);
  }
}

- (void)_sendAnalyticsData
{
  selfCopy = self;
  v52 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_writerQueue);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _reportDirectoryURL = [(MPCStatisticsReporter *)selfCopy _reportDirectoryURL];
  path = [_reportDirectoryURL path];
  v35 = defaultManager;
  v5 = [defaultManager enumeratorAtPath:path];

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    path2 = [_reportDirectoryURL path];
    *buf = 138543618;
    v46 = selfCopy;
    v47 = 2114;
    v48 = path2;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Flushing local analytics files in %{public}@", buf, 0x16u);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = @"analytics";
    v12 = *v42;
    v33 = selfCopy;
    v34 = v8;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        if ([v14 containsString:v11])
        {
          pathExtension = [v14 pathExtension];
          v16 = [pathExtension isEqualToString:@"plist"];

          if (v16)
          {
            v17 = v11;
            path3 = [_reportDirectoryURL path];
            v19 = [path3 stringByAppendingPathComponent:v14];

            v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:v19];
            v40 = 0;
            v21 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v20 error:&v40];
            v22 = v40;
            v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
            v24 = v23;
            if (v22)
            {
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                v46 = selfCopy;
                v47 = 2114;
                v48 = v19;
                v49 = 2114;
                v50 = v22;
                _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_ERROR, "[AP] - %{public}@ - Error getting data in %{public}@: %{public}@", buf, 0x20u);
              }
            }

            else
            {
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                msv_compactDescription = [v21 msv_compactDescription];
                *buf = 138543874;
                v46 = v33;
                v47 = 2114;
                v48 = v19;
                v49 = 2114;
                v50 = msv_compactDescription;
                _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Sending data in %{public}@: %{public}@", buf, 0x20u);

                selfCopy = v33;
              }

              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3221225472;
              aBlock[2] = __43__MPCStatisticsReporter__sendAnalyticsData__block_invoke;
              aBlock[3] = &unk_1E82382A8;
              v39 = v21;
              v26 = _Block_copy(aBlock);
              coreAnalyticsEventName = [(MPCStatisticsReporter *)selfCopy coreAnalyticsEventName];
              AnalyticsSendEventLazy();

              selfCopy = v33;
              v24 = v39;
            }

            v28 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v46 = selfCopy;
              v47 = 2114;
              v48 = v19;
              _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Removing %{public}@", buf, 0x16u);
            }

            v37 = 0;
            v29 = [v35 removeItemAtPath:v19 error:&v37];
            v30 = v37;
            v31 = v30;
            if (!v29 || v30)
            {
              v32 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                v46 = selfCopy;
                v47 = 2114;
                v48 = v19;
                v49 = 2114;
                v50 = v31;
                _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_ERROR, "[AP] - %{public}@ - Failed to remove: %{public}@ - error:%{public}@", buf, 0x20u);
              }
            }

            v11 = v17;
            v8 = v34;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v10);
  }
}

- (void)_writeAnalyticsDataFromRecorder:(id)recorder
{
  v25 = *MEMORY[0x1E69E9840];
  writerQueue = self->_writerQueue;
  recorderCopy = recorder;
  dispatch_assert_queue_V2(writerQueue);
  v6 = MEMORY[0x1E696AEC0];
  recordID = [recorderCopy recordID];
  v8 = [v6 stringWithFormat:@"analytics_%@.plist", recordID];

  _reportDirectoryURL = [(MPCStatisticsReporter *)self _reportDirectoryURL];
  v10 = [_reportDirectoryURL URLByAppendingPathComponent:v8];

  dictionaryRepresentation = [recorderCopy dictionaryRepresentation];

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    path = [v10 path];
    msv_compactDescription = [dictionaryRepresentation msv_compactDescription];
    *buf = 138543874;
    selfCopy2 = self;
    v21 = 2114;
    v22 = path;
    v23 = 2114;
    v24 = msv_compactDescription;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Writing data to %{public}@ %{public}@", buf, 0x20u);
  }

  v18 = 0;
  [dictionaryRepresentation writeToURL:v10 error:&v18];
  v15 = v18;
  if (v15)
  {
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      path2 = [v10 path];
      *buf = 138543874;
      selfCopy2 = self;
      v21 = 2114;
      v22 = path2;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_ERROR, "[AP] - %{public}@ - Failed to write: %{public}@ - error:%{public}@", buf, 0x20u);
    }
  }
}

- (NSString)recordScenarioName
{
  standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
  vocalAttenuationStatisticsName = [standardUserDefaults vocalAttenuationStatisticsName];

  if (vocalAttenuationStatisticsName)
  {
    v4 = [vocalAttenuationStatisticsName stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)flush
{
  writerQueue = self->_writerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__MPCStatisticsReporter_flush__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(writerQueue, block);
}

- (void)reportRecordedResults:(id)results
{
  resultsCopy = results;
  writerQueue = self->_writerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__MPCStatisticsReporter_reportRecordedResults___block_invoke;
  v7[3] = &unk_1E82392C0;
  v8 = resultsCopy;
  selfCopy = self;
  v6 = resultsCopy;
  dispatch_async(writerQueue, v7);
}

uint64_t __47__MPCStatisticsReporter_reportRecordedResults___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isStoringSamples])
  {
    [*(a1 + 40) _writeSamplesFromRecorder:*(a1 + 32)];
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 _writeAnalyticsDataFromRecorder:v3];
}

- (MPCStatisticsReporter)init
{
  v9.receiver = self;
  v9.super_class = MPCStatisticsReporter;
  v2 = [(MPCStatisticsReporter *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaPlaybackCore/Suntory.statsReporterQueue", 0);
    writerQueue = v2->_writerQueue;
    v2->_writerQueue = v3;

    v5 = v2->_writerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__MPCStatisticsReporter_init__block_invoke;
    block[3] = &unk_1E8239298;
    v8 = v2;
    dispatch_async(v5, block);
  }

  return v2;
}

uint64_t __29__MPCStatisticsReporter_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _sendAnalyticsData];
  v2 = *(a1 + 32);

  return [v2 _clearLocalReports];
}

@end