@interface CAMBurstImageSet
+ (id)burstImageSet;
+ (id)burstImageSetWithOptions:(id)options;
- (CAMBurstImageSet)init;
- (CAMBurstImageSet)initWithOptions:(id)options;
- (id)bestImageIdentifiers;
- (id)coverImageIdentifier;
- (id)imageClusterForIndex:(unint64_t)index;
- (id)statsForImageWithIdentifier:(id)identifier;
- (unint64_t)imageClusterCount;
- (void)dealloc;
- (void)setLoggingListener:(void *)listener withUserInfo:(void *)info;
@end

@implementation CAMBurstImageSet

+ (id)burstImageSet
{
  v2 = objc_alloc_init(CAMBurstImageSet);

  return v2;
}

+ (id)burstImageSetWithOptions:(id)options
{
  v3 = [[CAMBurstImageSet alloc] initWithOptions:options];

  return v3;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
  }

  v4.receiver = self;
  v4.super_class = CAMBurstImageSet;
  [(CAMBurstImageSet *)&v4 dealloc];
}

- (CAMBurstImageSet)init
{
  v4.receiver = self;
  v4.super_class = CAMBurstImageSet;
  v2 = [(CAMBurstImageSet *)&v4 init];
  if (v2)
  {
    v2->_priv = [[CAMBurstImageSetInternal alloc] initWithOptions:0];
  }

  return v2;
}

- (CAMBurstImageSet)initWithOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = CAMBurstImageSet;
  v4 = [(CAMBurstImageSet *)&v6 init];
  if (v4)
  {
    v4->_priv = [[CAMBurstImageSetInternal alloc] initWithOptions:options];
  }

  return v4;
}

- (id)bestImageIdentifiers
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(CAMBurstImageSetInternal *)self->_priv bestImageIdentifiersArray]&& [(NSArray *)[(CAMBurstImageSetInternal *)self->_priv bestImageIdentifiersArray] count])
  {
    priv = self->_priv;

    return [(CAMBurstImageSetInternal *)priv bestImageIdentifiersArray];
  }

  else
  {
    [(CAMBurstImageSet *)self secondsSinceStart];
    v6 = v5;
    bestImageIdentifiers = [(CAMBurstImageSetInternal *)self->_priv bestImageIdentifiers];
    if ([(CAMBurstImageSetInternal *)self->_priv burstLogFileName])
    {
      context = objc_autoreleasePoolPush();
      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
      [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", v6), @"BurstSet_TimeDoneCapturing"}];
      v23 = bestImageIdentifiers;
      v9 = [MEMORY[0x1E695DEC8] arrayWithArray:bestImageIdentifiers];
      v10 = MEMORY[0x1E696AD98];
      [(CAMBurstImageSet *)self secondsSinceStart];
      [v8 setObject:objc_msgSend(v10 forKey:{"numberWithDouble:"), @"BurstSet_TimeDone"}];
      [v8 setObject:v9 forKey:kBurstDoc_BestImageIds[0]];
      v11 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[CAMBurstImageSet allImageIdentifiers](self, "allImageIdentifiers")}];
      [v8 setObject:v11 forKey:kBurstDoc_AllImageIdentifiers[0]];
      v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            v18 = [(CAMBurstImageSet *)self statsForImageWithIdentifier:v17];
            if (v18)
            {
              [v12 setObject:objc_msgSend(MEMORY[0x1E695DF90] forKey:{"dictionaryWithDictionary:", v18), v17}];
            }

            else
            {
              puts("   initWithBurstImageSet - Error: stats not found");
            }
          }

          v14 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v14);
      }

      [v8 setObject:v12 forKey:kBurstDoc_AllImageStats[0]];
      if ([(CAMBurstImageSetInternal *)self->_priv burstLogFileName])
      {
        burstLogFileName = [(CAMBurstImageSetInternal *)self->_priv burstLogFileName];
        [v8 setObject:burstLogFileName forKey:kBurstDoc_LogFile[0]];
      }

      [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", -[CAMBurstImageSetInternal maxNumPendingFrames](self->_priv, "maxNumPendingFrames")), @"BurstSet_Setting_MaxNumPendingFrames"}];
      [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[CAMBurstImageSetInternal enableAnalysis](self->_priv, "enableAnalysis") ^ 1), @"BurstSet_Setting_DisableAnalysis"}];
      [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[CAMBurstImageSetInternal enableFaceCore](self->_priv, "enableFaceCore") ^ 1), @"BurstSet_Setting_DisableFaceCore"}];
      [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", -[CAMBurstImageSetInternal dummyAnalysisCount](self->_priv, "dummyAnalysisCount")), @"BurstSet_Setting_DummyAnalysisCount"}];
      [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[CAMBurstImageSetInternal isFaceDetectionForced](self->_priv, "isFaceDetectionForced")), @"BurstSet_Setting_ForceFaceDetection"}];
      [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[CAMBurstImageSetInternal enableDumpYUV](self->_priv, "enableDumpYUV")), @"BurstSet_Setting_EnableDumpYUV"}];
      [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[CAMBurstImageSetInternal isAction](self->_priv, "isAction")), @"BurstSet_IsAction"}];
      [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[CAMBurstImageSetInternal isPortrait](self->_priv, "isPortrait")), @"BurstSet_IsPortrait"}];
      v20 = [-[CAMBurstImageSetInternal burstDocumentDirectory](self->_priv "burstDocumentDirectory")];
      if ([(CAMBurstImageSetInternal *)self->_priv burstCoverSelection])
      {
        burstCoverSelection = [(CAMBurstImageSetInternal *)self->_priv burstCoverSelection];
      }

      else
      {
        burstCoverSelection = @"nil";
      }

      [v8 setObject:burstCoverSelection forKey:@"BurstSet_CoverImage"];
      [v8 writeToFile:v20 atomically:1];
      objc_autoreleasePoolPop(context);
      return v23;
    }

    return bestImageIdentifiers;
  }
}

- (id)coverImageIdentifier
{
  result = [-[CAMBurstImageSet bestImageIdentifiers](self "bestImageIdentifiers")];
  if (result)
  {
    if ([(CAMBurstImageSetInternal *)self->_priv burstLogFileName])
    {
      v4 = [-[CAMBurstImageSetInternal burstDocumentDirectory](self->_priv "burstDocumentDirectory")];
      v5 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v4];
      if ([(CAMBurstImageSetInternal *)self->_priv burstCoverSelection])
      {
        burstCoverSelection = [(CAMBurstImageSetInternal *)self->_priv burstCoverSelection];
      }

      else
      {
        burstCoverSelection = @"nil";
      }

      [v5 setObject:burstCoverSelection forKey:@"BurstSet_CoverImage"];
    }

    priv = self->_priv;

    return [(CAMBurstImageSetInternal *)priv burstCoverSelection];
  }

  return result;
}

- (unint64_t)imageClusterCount
{
  clusterArray = [(CAMBurstImageSetInternal *)self->_priv clusterArray];

  return [(NSMutableArray *)clusterArray count];
}

- (id)imageClusterForIndex:(unint64_t)index
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)[(CAMBurstImageSetInternal *)self->_priv clusterArray] objectAtIndex:index];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_msgSend(v3, "burstImages"), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  burstImages = [v4 burstImages];
  v7 = [burstImages countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(burstImages);
        }

        [v5 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "imageId")}];
      }

      v8 = [burstImages countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)statsForImageWithIdentifier:(id)identifier
{
  statsByImageIdentifier = [(CAMBurstImageSetInternal *)self->_priv statsByImageIdentifier];

  return [(NSMutableDictionary *)statsByImageIdentifier objectForKey:identifier];
}

- (void)setLoggingListener:(void *)listener withUserInfo:(void *)info
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 64;
  BurstLoggingSetCallback(listener, info);
  sysctlbyname("kern.osversion", v5, &v4, 0, 0);
  BurstLoggingMessage("BURST ANALYSIS VERSION = %s (%s)\n", [kCAMBurstImageSet_VersionString UTF8String], v5);
}

@end