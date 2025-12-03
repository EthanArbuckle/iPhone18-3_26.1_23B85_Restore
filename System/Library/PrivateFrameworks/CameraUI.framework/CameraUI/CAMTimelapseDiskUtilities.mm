@interface CAMTimelapseDiskUtilities
+ (BOOL)hasPendingWork;
+ (BOOL)removeDummyFileForTimelapseUUID:(id)d;
+ (BOOL)reserveDummyFileForTimelapseUUID:(id)d width:(int64_t)width height:(int64_t)height useHEVC:(BOOL)c;
+ (BOOL)writeSecondaryStateToDisk:(id)disk forTimelapseUUID:(id)d;
+ (BOOL)writeStateToDisk:(id)disk createDirectoryIfNeeded:(BOOL)needed;
+ (id)directoryPathForTimelapseUUID:(id)d;
+ (id)dummyFilePathForTimelapseUUID:(id)d;
+ (id)readFrameFilePathsForTimelapseUUID:(id)d;
+ (id)readSecondaryStateForTimelapseUUID:(id)d;
+ (id)readSortedStatesFromDiskMergeSecondaryState:(BOOL)state;
+ (id)readStateForTimelapseUUID:(id)d mergeSecondaryState:(BOOL)state;
+ (id)secondaryStateFilePathForTimelapseUUID:(id)d;
+ (id)sortedArrayFromFilePathDictionary:(id)dictionary reverse:(BOOL)reverse;
+ (id)stateFilePathForTimelapseUUID:(id)d;
+ (id)timelapseDirectoryPathCreateIfNeeded:(BOOL)needed;
+ (id)timelapseUUIDsOnDisk;
+ (id)updateSecondaryStateForMovieWriteAttemptForTimelapseUUID:(id)d;
+ (id)updateSecondaryStateForTimelapseUUID:(id)d forStateReadSuccessfully:(BOOL)successfully;
+ (id)updateSecondaryStateForTimelapseUUID:(id)d withStopReasons:(int64_t)reasons stopTime:(id)time;
+ (int64_t)frameIndexFromImageFileName:(id)name;
@end

@implementation CAMTimelapseDiskUtilities

+ (BOOL)hasPendingWork
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [self timelapseDirectoryPathCreateIfNeeded:0];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fileExistsAtPath:v2];

  v5 = 0;
  if (v4)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = 0;
    v7 = [defaultManager2 contentsOfDirectoryAtPath:v2 error:&v11];
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

+ (id)timelapseDirectoryPathCreateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  photoDCIMDirectory = [MEMORY[0x1E69BF168] photoDCIMDirectory];
  v5 = [photoDCIMDirectory stringByAppendingPathComponent:@".MISC/Timelapse"];

  if (neededCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v5;
}

+ (id)directoryPathForTimelapseUUID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v4 = dCopy;
    v5 = +[CAMTimelapseDiskUtilities timelapseDirectoryPath];
    v6 = [v5 stringByAppendingPathComponent:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)frameIndexFromImageFileName:(id)name
{
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = objc_autoreleasePoolPush();
  lowercaseString = [name lowercaseString];
  v6 = [MEMORY[0x1E696AE88] scannerWithString:lowercaseString];
  lowercaseString2 = [@"FRAME_" lowercaseString];
  v8 = [v6 scanString:lowercaseString2 intoString:0];

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
  array = [MEMORY[0x1E695DF70] array];
  v3 = +[CAMTimelapseDiskUtilities timelapseDirectoryPath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:v3 error:&v21];
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
        if ([defaultManager fileExistsAtPath:v14 isDirectory:&v16] && v16 == 1)
        {
          [array addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  return array;
}

+ (id)stateFilePathForTimelapseUUID:(id)d
{
  dCopy = d;
  stateFileName = [self stateFileName];
  v6 = [self directoryPathForTimelapseUUID:dCopy];

  v7 = [v6 stringByAppendingPathComponent:stateFileName];

  return v7;
}

+ (id)readStateForTimelapseUUID:(id)d mergeSecondaryState:(BOOL)state
{
  stateCopy = state;
  dCopy = d;
  v7 = [self stateFilePathForTimelapseUUID:dCopy];
  v8 = [CAMTimelapseState stateWithContentsOfFile:v7];
  if (stateCopy)
  {
    v9 = [self readSecondaryStateForTimelapseUUID:dCopy];
    [v8 mergeSecondaryState:v9];
  }

  return v8;
}

+ (BOOL)writeStateToDisk:(id)disk createDirectoryIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  diskCopy = disk;
  v7 = diskCopy;
  if (diskCopy)
  {
    timelapseUUID = [diskCopy timelapseUUID];
    v9 = [self stateFilePathForTimelapseUUID:timelapseUUID];

    v10 = [v7 writeToFile:v9 createDirectoryIfNeeded:neededCopy];
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

+ (id)secondaryStateFilePathForTimelapseUUID:(id)d
{
  dCopy = d;
  secondaryStateFileName = [self secondaryStateFileName];
  v6 = [self directoryPathForTimelapseUUID:dCopy];

  v7 = [v6 stringByAppendingPathComponent:secondaryStateFileName];

  return v7;
}

+ (id)readSecondaryStateForTimelapseUUID:(id)d
{
  v3 = [self secondaryStateFilePathForTimelapseUUID:d];
  v4 = [CAMNebulaSecondaryState secondaryStateWithContentsOfFile:v3];

  return v4;
}

+ (BOOL)writeSecondaryStateToDisk:(id)disk forTimelapseUUID:(id)d
{
  diskCopy = disk;
  if (diskCopy)
  {
    v7 = [self secondaryStateFilePathForTimelapseUUID:d];
    v8 = [diskCopy writeToFile:v7];
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

+ (id)updateSecondaryStateForTimelapseUUID:(id)d withStopReasons:(int64_t)reasons stopTime:(id)time
{
  timeCopy = time;
  dCopy = d;
  v10 = [self readSecondaryStateForTimelapseUUID:dCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(CAMNebulaSecondaryState);
  }

  [(CAMNebulaSecondaryState *)v10 addStopReasons:reasons stopTime:timeCopy];
  [self writeSecondaryStateToDisk:v10 forTimelapseUUID:dCopy];

  return v10;
}

+ (id)updateSecondaryStateForMovieWriteAttemptForTimelapseUUID:(id)d
{
  dCopy = d;
  v5 = [self readSecondaryStateForTimelapseUUID:dCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(CAMNebulaSecondaryState);
  }

  [(CAMNebulaSecondaryState *)v5 notifyWillAttemptToWriteMovie];
  [self writeSecondaryStateToDisk:v5 forTimelapseUUID:dCopy];

  return v5;
}

+ (id)updateSecondaryStateForTimelapseUUID:(id)d forStateReadSuccessfully:(BOOL)successfully
{
  dCopy = d;
  v7 = [self readSecondaryStateForTimelapseUUID:dCopy];
  if (!v7 && !successfully)
  {
    v7 = objc_alloc_init(CAMNebulaSecondaryState);
  }

  if (v7)
  {
    if (successfully)
    {
      v8 = 0;
    }

    else
    {
      v8 = [(CAMNebulaSecondaryState *)v7 failedStateReadAttemptsCount]+ 1;
    }

    [(CAMNebulaSecondaryState *)v7 setFailedStateReadAttemptsCount:v8];
    [self writeSecondaryStateToDisk:v7 forTimelapseUUID:dCopy];
  }

  return v7;
}

+ (id)readSortedStatesFromDiskMergeSecondaryState:(BOOL)state
{
  stateCopy = state;
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  timelapseUUIDsOnDisk = [self timelapseUUIDsOnDisk];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [timelapseUUIDsOnDisk countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(timelapseUUIDsOnDisk);
        }

        v11 = [self readStateForTimelapseUUID:*(*(&v13 + 1) + 8 * i) mergeSecondaryState:stateCopy];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [timelapseUUIDsOnDisk countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [array sortUsingComparator:&__block_literal_global_50];

  return array;
}

uint64_t __73__CAMTimelapseDiskUtilities_readSortedStatesFromDiskMergeSecondaryState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startTime];
  v6 = [v4 startTime];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)readFrameFilePathsForTimelapseUUID:(id)d
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [CAMTimelapseDiskUtilities directoryPathForTimelapseUUID:dCopy];
  v26 = 0;
  v6 = [defaultManager contentsOfDirectoryAtPath:v5 error:&v26];
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
      v19 = defaultManager;
      v20 = dCopy;
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
            [dictionary setObject:v16 forKey:v17];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
      defaultManager = v19;
      dCopy = v20;
    }
  }

  return dictionary;
}

+ (id)sortedArrayFromFilePathDictionary:(id)dictionary reverse:(BOOL)reverse
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  array = [MEMORY[0x1E695DF70] array];
  allKeys = [dictionaryCopy allKeys];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__CAMTimelapseDiskUtilities_sortedArrayFromFilePathDictionary_reverse___block_invoke;
  v20[3] = &__block_descriptor_33_e11_q24__0_8_16l;
  reverseCopy = reverse;
  v8 = [allKeys sortedArrayUsingComparator:v20];

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

        v14 = [dictionaryCopy objectForKey:{*(*(&v16 + 1) + 8 * i), v16}];
        [array addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v11);
  }

  return array;
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

+ (id)dummyFilePathForTimelapseUUID:(id)d
{
  dCopy = d;
  dummyFileName = [self dummyFileName];
  v6 = [self directoryPathForTimelapseUUID:dCopy];

  v7 = [v6 stringByAppendingPathComponent:dummyFileName];

  return v7;
}

+ (BOOL)reserveDummyFileForTimelapseUUID:(id)d width:(int64_t)width height:(int64_t)height useHEVC:(BOOL)c
{
  cCopy = c;
  v51 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v11 = +[CAMTimelapseSettings sharedInstance];
  v12 = [v11 maxMovieFileLengthForWidth:width height:height useHEVC:cCopy];

  v13 = MEMORY[0x1E69BF208];
  v14 = NSHomeDirectory();
  v15 = [v13 diskSpaceAvailableForPath:v14];

  if (v15 < 0 || v12 <= v15)
  {
    v16 = [self dummyFilePathForTimelapseUUID:dCopy];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v19 = [defaultManager fileExistsAtPath:v16];

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
      v20 = [self directoryPathForTimelapseUUID:dCopy];
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v46 = 0;
      v22 = [defaultManager2 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:&v46];
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

        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        v44 = 0;
        v31 = [defaultManager3 attributesOfItemAtPath:v16 error:&v44];
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
        longLongValue = [v33 longLongValue];
        v17 = longLongValue == v12;
        if (longLongValue != v12)
        {
          defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
          v36 = [defaultManager4 fileExistsAtPath:v16];

          if (v36)
          {

            defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
            v43 = 0;
            v38 = [defaultManager5 removeItemAtPath:v16 error:&v43];
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

+ (BOOL)removeDummyFileForTimelapseUUID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [self dummyFilePathForTimelapseUUID:d];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = 0;
    v7 = [defaultManager2 removeItemAtPath:v3 error:&v12];
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