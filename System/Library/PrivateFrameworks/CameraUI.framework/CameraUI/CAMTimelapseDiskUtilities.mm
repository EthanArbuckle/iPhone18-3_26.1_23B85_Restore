@interface CAMTimelapseDiskUtilities
+ (BOOL)hasPendingWork;
+ (BOOL)removeDummyFileForTimelapseUUID:(id)a3;
+ (BOOL)reserveDummyFileForTimelapseUUID:(id)a3 width:(int64_t)a4 height:(int64_t)a5 useHEVC:(BOOL)a6;
+ (BOOL)writeSecondaryStateToDisk:(id)a3 forTimelapseUUID:(id)a4;
+ (BOOL)writeStateToDisk:(id)a3 createDirectoryIfNeeded:(BOOL)a4;
+ (id)directoryPathForTimelapseUUID:(id)a3;
+ (id)dummyFilePathForTimelapseUUID:(id)a3;
+ (id)readFrameFilePathsForTimelapseUUID:(id)a3;
+ (id)readSecondaryStateForTimelapseUUID:(id)a3;
+ (id)readSortedStatesFromDiskMergeSecondaryState:(BOOL)a3;
+ (id)readStateForTimelapseUUID:(id)a3 mergeSecondaryState:(BOOL)a4;
+ (id)secondaryStateFilePathForTimelapseUUID:(id)a3;
+ (id)sortedArrayFromFilePathDictionary:(id)a3 reverse:(BOOL)a4;
+ (id)stateFilePathForTimelapseUUID:(id)a3;
+ (id)timelapseDirectoryPathCreateIfNeeded:(BOOL)a3;
+ (id)timelapseUUIDsOnDisk;
+ (id)updateSecondaryStateForMovieWriteAttemptForTimelapseUUID:(id)a3;
+ (id)updateSecondaryStateForTimelapseUUID:(id)a3 forStateReadSuccessfully:(BOOL)a4;
+ (id)updateSecondaryStateForTimelapseUUID:(id)a3 withStopReasons:(int64_t)a4 stopTime:(id)a5;
+ (int64_t)frameIndexFromImageFileName:(id)a3;
@end

@implementation CAMTimelapseDiskUtilities

+ (BOOL)hasPendingWork
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 timelapseDirectoryPathCreateIfNeeded:0];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  v5 = 0;
  if (v4)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = 0;
    v7 = [v6 contentsOfDirectoryAtPath:v2 error:&v11];
    v8 = v11;

    if (v8)
    {
      v9 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v13 = v2;
        v14 = 2114;
        v15 = v8;
        _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get contents of %{public}@: %{public}@", buf, 0x16u);
      }
    }

    v5 = [v7 count] != 0;
  }

  return v5;
}

+ (id)timelapseDirectoryPathCreateIfNeeded:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69BF168] photoDCIMDirectory];
  v5 = [v4 stringByAppendingPathComponent:@".MISC/Timelapse"];

  if (v3)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    [v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v5;
}

+ (id)directoryPathForTimelapseUUID:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = v3;
    v5 = +[CAMTimelapseDiskUtilities timelapseDirectoryPath];
    v6 = [v5 stringByAppendingPathComponent:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)frameIndexFromImageFileName:(id)a3
{
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = objc_autoreleasePoolPush();
  v5 = [a3 lowercaseString];
  v6 = [MEMORY[0x1E696AE88] scannerWithString:v5];
  v7 = [@"FRAME_" lowercaseString];
  v8 = [v6 scanString:v7 intoString:0];

  if (!v8 || ![v6 scanInteger:&v13] || (objc_msgSend(@".JPG", "lowercaseString"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v6, "scanString:intoString:", v9, 0), v9, !v10) || (objc_msgSend(v6, "isAtEnd") & 1) == 0)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_autoreleasePoolPop(v4);
  v11 = v13;

  return v11;
}

+ (id)timelapseUUIDsOnDisk
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = +[CAMTimelapseDiskUtilities timelapseDirectoryPath];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0;
  v5 = [v4 contentsOfDirectoryAtPath:v3 error:&v21];
  v6 = v21;
  if (v6)
  {
    v7 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CAMTimelapseDiskUtilities timelapseUUIDsOnDisk];
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v3 stringByAppendingPathComponent:v13];
        v16 = 0;
        if ([v4 fileExistsAtPath:v14 isDirectory:&v16] && v16 == 1)
        {
          [v2 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  return v2;
}

+ (id)stateFilePathForTimelapseUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 stateFileName];
  v6 = [a1 directoryPathForTimelapseUUID:v4];

  v7 = [v6 stringByAppendingPathComponent:v5];

  return v7;
}

+ (id)readStateForTimelapseUUID:(id)a3 mergeSecondaryState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 stateFilePathForTimelapseUUID:v6];
  v8 = [CAMTimelapseState stateWithContentsOfFile:v7];
  if (v4)
  {
    v9 = [a1 readSecondaryStateForTimelapseUUID:v6];
    [v8 mergeSecondaryState:v9];
  }

  return v8;
}

+ (BOOL)writeStateToDisk:(id)a3 createDirectoryIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 timelapseUUID];
    v9 = [a1 stateFilePathForTimelapseUUID:v8];

    v10 = [v7 writeToFile:v9 createDirectoryIfNeeded:v4];
    if ((v10 & 1) == 0)
    {
      v11 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[CAMTimelapseDiskUtilities writeStateToDisk:createDirectoryIfNeeded:];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)secondaryStateFilePathForTimelapseUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 secondaryStateFileName];
  v6 = [a1 directoryPathForTimelapseUUID:v4];

  v7 = [v6 stringByAppendingPathComponent:v5];

  return v7;
}

+ (id)readSecondaryStateForTimelapseUUID:(id)a3
{
  v3 = [a1 secondaryStateFilePathForTimelapseUUID:a3];
  v4 = [CAMNebulaSecondaryState secondaryStateWithContentsOfFile:v3];

  return v4;
}

+ (BOOL)writeSecondaryStateToDisk:(id)a3 forTimelapseUUID:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [a1 secondaryStateFilePathForTimelapseUUID:a4];
    v8 = [v6 writeToFile:v7];
    if ((v8 & 1) == 0)
    {
      v9 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CAMTimelapseDiskUtilities writeSecondaryStateToDisk:forTimelapseUUID:];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)updateSecondaryStateForTimelapseUUID:(id)a3 withStopReasons:(int64_t)a4 stopTime:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a1 readSecondaryStateForTimelapseUUID:v9];
  if (!v10)
  {
    v10 = objc_alloc_init(CAMNebulaSecondaryState);
  }

  [(CAMNebulaSecondaryState *)v10 addStopReasons:a4 stopTime:v8];
  [a1 writeSecondaryStateToDisk:v10 forTimelapseUUID:v9];

  return v10;
}

+ (id)updateSecondaryStateForMovieWriteAttemptForTimelapseUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 readSecondaryStateForTimelapseUUID:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(CAMNebulaSecondaryState);
  }

  [(CAMNebulaSecondaryState *)v5 notifyWillAttemptToWriteMovie];
  [a1 writeSecondaryStateToDisk:v5 forTimelapseUUID:v4];

  return v5;
}

+ (id)updateSecondaryStateForTimelapseUUID:(id)a3 forStateReadSuccessfully:(BOOL)a4
{
  v6 = a3;
  v7 = [a1 readSecondaryStateForTimelapseUUID:v6];
  if (!v7 && !a4)
  {
    v7 = objc_alloc_init(CAMNebulaSecondaryState);
  }

  if (v7)
  {
    if (a4)
    {
      v8 = 0;
    }

    else
    {
      v8 = [(CAMNebulaSecondaryState *)v7 failedStateReadAttemptsCount]+ 1;
    }

    [(CAMNebulaSecondaryState *)v7 setFailedStateReadAttemptsCount:v8];
    [a1 writeSecondaryStateToDisk:v7 forTimelapseUUID:v6];
  }

  return v7;
}

+ (id)readSortedStatesFromDiskMergeSecondaryState:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [a1 timelapseUUIDsOnDisk];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 readStateForTimelapseUUID:*(*(&v13 + 1) + 8 * i) mergeSecondaryState:v3];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [v5 sortUsingComparator:&__block_literal_global_50];

  return v5;
}

uint64_t __73__CAMTimelapseDiskUtilities_readSortedStatesFromDiskMergeSecondaryState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startTime];
  v6 = [v4 startTime];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)readFrameFilePathsForTimelapseUUID:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v21 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [CAMTimelapseDiskUtilities directoryPathForTimelapseUUID:v3];
  v26 = 0;
  v6 = [v4 contentsOfDirectoryAtPath:v5 error:&v26];
  v7 = v26;
  if (v7)
  {
    v8 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CAMTimelapseDiskUtilities readFrameFilePathsForTimelapseUUID:];
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v19 = v4;
      v20 = v3;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [CAMTimelapseDiskUtilities frameIndexFromImageFileName:v13];
          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = v14;
            v16 = [v5 stringByAppendingPathComponent:v13];
            v17 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
            [v21 setObject:v16 forKey:v17];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
      v4 = v19;
      v3 = v20;
    }
  }

  return v21;
}

+ (id)sortedArrayFromFilePathDictionary:(id)a3 reverse:(BOOL)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [v5 allKeys];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__CAMTimelapseDiskUtilities_sortedArrayFromFilePathDictionary_reverse___block_invoke;
  v20[3] = &__block_descriptor_33_e11_q24__0_8_16l;
  v21 = a4;
  v8 = [v7 sortedArrayUsingComparator:v20];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v5 objectForKey:{*(*(&v16 + 1) + 8 * i), v16}];
        [v6 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v11);
  }

  return v6;
}

uint64_t __71__CAMTimelapseDiskUtilities_sortedArrayFromFilePathDictionary_reverse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 32) == 1)
  {
    v3 = a3;
    a3 = a2;
  }

  else
  {
    v3 = a2;
  }

  return [v3 compare:a3];
}

+ (id)dummyFilePathForTimelapseUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 dummyFileName];
  v6 = [a1 directoryPathForTimelapseUUID:v4];

  v7 = [v6 stringByAppendingPathComponent:v5];

  return v7;
}

+ (BOOL)reserveDummyFileForTimelapseUUID:(id)a3 width:(int64_t)a4 height:(int64_t)a5 useHEVC:(BOOL)a6
{
  v6 = a6;
  v51 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = +[CAMTimelapseSettings sharedInstance];
  v12 = [v11 maxMovieFileLengthForWidth:a4 height:a5 useHEVC:v6];

  v13 = MEMORY[0x1E69BF208];
  v14 = NSHomeDirectory();
  v15 = [v13 diskSpaceAvailableForPath:v14];

  if (v15 < 0 || v12 <= v15)
  {
    v16 = [a1 dummyFilePathForTimelapseUUID:v10];
    v18 = [MEMORY[0x1E696AC08] defaultManager];
    v19 = [v18 fileExistsAtPath:v16];

    if (v19)
    {
      v20 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v48 = v16;
        _os_log_impl(&dword_1A3640000, v20, OS_LOG_TYPE_DEFAULT, "Cannot reserve disk space. File already exists at %{public}@", buf, 0xCu);
      }

      v17 = 0;
    }

    else
    {
      v20 = [a1 directoryPathForTimelapseUUID:v10];
      v21 = [MEMORY[0x1E696AC08] defaultManager];
      v46 = 0;
      v22 = [v21 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:&v46];
      v23 = v46;

      if (!v22 || v23)
      {
        v24 = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v48 = v20;
          _os_log_impl(&dword_1A3640000, v24, OS_LOG_TYPE_DEFAULT, "Failed to create directory %{public}@", buf, 0xCu);
        }
      }

      v25 = fopen([v16 fileSystemRepresentation], "wb");
      if (v25)
      {
        v26 = v25;
        if (fseek(v25, v12 - 1, 0))
        {
          v27 = os_log_create("com.apple.camera", "Nebula");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v48 = v16;
            _os_log_impl(&dword_1A3640000, v27, OS_LOG_TYPE_DEFAULT, "Failed to seek to end of file %{public}@", buf, 0xCu);
          }
        }

        __ptr = 0;
        if (fwrite(&__ptr, 1uLL, 1uLL, v26) != 1)
        {
          v28 = os_log_create("com.apple.camera", "Nebula");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v48 = v16;
            _os_log_impl(&dword_1A3640000, v28, OS_LOG_TYPE_DEFAULT, "Failed to write byte at end of file %{public}@", buf, 0xCu);
          }
        }

        if (fclose(v26))
        {
          v29 = os_log_create("com.apple.camera", "Nebula");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v48 = v16;
            _os_log_impl(&dword_1A3640000, v29, OS_LOG_TYPE_DEFAULT, "Failed to close file %{public}@", buf, 0xCu);
          }
        }

        v30 = [MEMORY[0x1E696AC08] defaultManager];
        v44 = 0;
        v31 = [v30 attributesOfItemAtPath:v16 error:&v44];
        v23 = v44;

        if (!v31 || v23)
        {
          v32 = os_log_create("com.apple.camera", "Nebula");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v48 = v16;
            v49 = 2114;
            v50 = v23;
            _os_log_impl(&dword_1A3640000, v32, OS_LOG_TYPE_DEFAULT, "Failed to get attribures for file %{public}@ with error %{public}@", buf, 0x16u);
          }
        }

        v33 = [v31 objectForKey:*MEMORY[0x1E696A3B8]];
        v34 = [v33 longLongValue];
        v17 = v34 == v12;
        if (v34 != v12)
        {
          v35 = [MEMORY[0x1E696AC08] defaultManager];
          v36 = [v35 fileExistsAtPath:v16];

          if (v36)
          {

            v37 = [MEMORY[0x1E696AC08] defaultManager];
            v43 = 0;
            v38 = [v37 removeItemAtPath:v16 error:&v43];
            v39 = v43;

            if (!v38 || (v23 = 0, v39))
            {
              v40 = os_log_create("com.apple.camera", "Nebula");
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v48 = v16;
                _os_log_impl(&dword_1A3640000, v40, OS_LOG_TYPE_DEFAULT, "Failed to remove file %{public}@", buf, 0xCu);
              }

              v23 = v39;
            }
          }
        }
      }

      else
      {
        v41 = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [CAMTimelapseDiskUtilities reserveDummyFileForTimelapseUUID:v16 width:v41 height:? useHEVC:?];
        }

        v17 = 0;
      }
    }
  }

  else
  {
    v16 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v48 = v12;
      v49 = 2048;
      v50 = v15;
      _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "Cannot reserve disk space. %lld bytes needed, %lld available", buf, 0x16u);
    }

    v17 = 0;
  }

  return v17;
}

+ (BOOL)removeDummyFileForTimelapseUUID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a1 dummyFilePathForTimelapseUUID:a3];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = 0;
    v7 = [v6 removeItemAtPath:v3 error:&v12];
    v8 = v12;

    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      v10 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v14 = v3;
        v15 = 2114;
        v16 = v8;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Failed to remove file %{public}@ with error %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (void)reserveDummyFileForTimelapseUUID:(uint64_t)a1 width:(NSObject *)a2 height:useHEVC:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Cannot open file at %{public}@", &v2, 0xCu);
}

@end