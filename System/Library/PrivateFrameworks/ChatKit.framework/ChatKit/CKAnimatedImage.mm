@interface CKAnimatedImage
+ (id)animatedImageFromOptimizedBitmapAtFileURL:(id)a3 error:(id *)a4;
- (CGSize)size;
- (CKAnimatedImage)initWithImages:(id)a3 durations:(id)a4;
- (CKAnimatedImage)initWithMultiFrameImage:(id)a3;
- (NSArray)frameEndTimestamps;
- (NSArray)frameStartTimestamps;
- (NSArray)frames;
- (UIImage)image;
- (double)endTimestampForFrameIndex:(unint64_t)a3;
- (double)scale;
- (double)timeInLoopForTime:(double)a3;
- (id)description;
- (id)frameForAnimationTime:(double)a3;
- (int64_t)frameIndexForAnimationTime:(double)a3;
- (void)_calculateFrameTimestamps;
@end

@implementation CKAnimatedImage

- (id)description
{
  v14.receiver = self;
  v14.super_class = CKAnimatedImage;
  v3 = [(CKAnimatedImage *)&v14 description];
  v4 = [(CKAnimatedImage *)self image];
  v5 = [(CKAnimatedImage *)self image];
  v6 = [v5 images];
  v7 = [v6 count];
  v8 = [(CKAnimatedImage *)self image];
  [v8 duration];
  v10 = v9;
  v11 = [(CKAnimatedImage *)self durations];
  v12 = [v3 stringByAppendingFormat:@" (image:%@ #images:%ld duration:%f #durations:%ld)", v4, v7, v10, objc_msgSend(v11, "count")];

  return v12;
}

- (CKAnimatedImage)initWithImages:(id)a3 durations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CKMultiFrameImage alloc] initWithFrameImages:v7 frameDurations:v6];

  if (v8)
  {
    self = [(CKAnimatedImage *)self initWithMultiFrameImage:v8];
    v9 = self;
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CKAnimatedImage initWithImages:durations:];
    }

    v9 = 0;
  }

  return v9;
}

- (CKAnimatedImage)initWithMultiFrameImage:(id)a3
{
  v5 = a3;
  if (![v5 frameCount])
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKAnimatedImage initWithMultiFrameImage:];
    }

    goto LABEL_10;
  }

  v6 = [v5 frameCount];
  v7 = [v5 frameDurations];
  v8 = [v7 count];

  if (v6 != v8)
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKAnimatedImage initWithMultiFrameImage:];
    }

LABEL_10:

    v11 = 0;
    goto LABEL_11;
  }

  v14.receiver = self;
  v14.super_class = CKAnimatedImage;
  v9 = [(CKAnimatedImage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_multiFrameImage, a3);
  }

  self = v10;
  v11 = self;
LABEL_11:

  return v11;
}

- (UIImage)image
{
  cachedMultiFrameUIImage = self->_cachedMultiFrameUIImage;
  if (!cachedMultiFrameUIImage)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v4 = [(CKMultiFrameImage *)self->_multiFrameImage frameDurations];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __24__CKAnimatedImage_image__block_invoke;
    v9[3] = &unk_1E72F5AB0;
    v9[4] = &v10;
    [v4 enumerateObjectsUsingBlock:v9];

    v5 = [(CKMultiFrameImage *)self->_multiFrameImage loadAllFrameImages];
    v6 = [MEMORY[0x1E69DCAB8] animatedImageWithImages:v5 duration:v11[3]];
    v7 = self->_cachedMultiFrameUIImage;
    self->_cachedMultiFrameUIImage = v6;

    _Block_object_dispose(&v10, 8);
    cachedMultiFrameUIImage = self->_cachedMultiFrameUIImage;
  }

  return cachedMultiFrameUIImage;
}

double __24__CKAnimatedImage_image__block_invoke(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  v3 = *(*(a1 + 32) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

- (NSArray)frames
{
  v2 = [(CKAnimatedImage *)self image];
  v3 = [v2 images];

  return v3;
}

- (CGSize)size
{
  v2 = [(CKAnimatedImage *)self image];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)scale
{
  v2 = [(CKAnimatedImage *)self image];
  [v2 scale];
  v4 = v3;

  return v4;
}

+ (id)animatedImageFromOptimizedBitmapAtFileURL:(id)a3 error:(id *)a4
{
  v11 = 0;
  v5 = [CKMultiFrameImage multiFrameImageFromOptimizedBitmapAtFileURL:a3 error:&v11];
  v6 = v11;
  if (v5)
  {
    v7 = [[CKAnimatedImage alloc] initWithMultiFrameImage:v5];
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CKAnimatedImage animatedImageFromOptimizedBitmapAtFileURL:error:];
    }

    if (a4)
    {
      v9 = v6;
      v7 = 0;
      *a4 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSArray)frameStartTimestamps
{
  frameStartTimestamps = self->_frameStartTimestamps;
  if (!frameStartTimestamps)
  {
    [(CKAnimatedImage *)self _calculateFrameTimestamps];
    frameStartTimestamps = self->_frameStartTimestamps;
  }

  return frameStartTimestamps;
}

- (NSArray)frameEndTimestamps
{
  frameEndTimestamps = self->_frameEndTimestamps;
  if (!frameEndTimestamps)
  {
    [(CKAnimatedImage *)self _calculateFrameTimestamps];
    frameEndTimestamps = self->_frameEndTimestamps;
  }

  return frameEndTimestamps;
}

- (void)_calculateFrameTimestamps
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(CKAnimatedImage *)self durations];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = 0.0;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = [MEMORY[0x1E696AD98] numberWithDouble:{v10, v20}];
        [v4 addObject:v13];

        [v12 doubleValue];
        v10 = v10 + v14;
        v15 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
        [v5 addObject:v15];

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = [v4 copy];
  frameStartTimestamps = self->_frameStartTimestamps;
  self->_frameStartTimestamps = v16;

  v18 = [v5 copy];
  frameEndTimestamps = self->_frameEndTimestamps;
  self->_frameEndTimestamps = v18;
}

- (double)timeInLoopForTime:(double)a3
{
  v5 = [(CKAnimatedImage *)self frameEndTimestamps];
  v6 = [v5 lastObject];
  [v6 doubleValue];
  v8 = v7;

  [(CKAnimatedImage *)self animationStartTimeOffset];
  v10 = a3 - fmax(fmin(v9, a3), 0.0);

  return fmod(v10, v8);
}

- (double)endTimestampForFrameIndex:(unint64_t)a3
{
  v5 = [(CKAnimatedImage *)self frameEndTimestamps];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0.0;
  }

  v7 = [(CKAnimatedImage *)self frameEndTimestamps];
  v8 = [v7 objectAtIndex:a3];

  [v8 doubleValue];
  v10 = v9;

  return v10;
}

- (int64_t)frameIndexForAnimationTime:(double)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [(CKAnimatedImage *)self frameStartTimestamps];
  v6 = [(CKAnimatedImage *)self frameEndTimestamps];
  v7 = [v5 count];
  [(CKAnimatedImage *)self timeInLoopForTime:a3];
  if (v8 == 0.0)
  {
LABEL_2:
    previouslyReturnedFrameIndexHint = 0;
    self->_previouslyReturnedFrameIndexHint = 0;
    goto LABEL_3;
  }

  v11 = v8;
  v12 = v7 - 1;
  previouslyReturnedFrameIndexHint = self->_previouslyReturnedFrameIndexHint;
  if (v12 < previouslyReturnedFrameIndexHint)
  {
LABEL_15:
    if ([v6 count])
    {
      v22 = [v5 firstObject];
      [v22 doubleValue];
      v24 = v23;

      v25 = [v6 firstObject];
      [v25 doubleValue];
      v27 = v26;

      if (v11 >= v24 && v11 < v27)
      {
        goto LABEL_2;
      }
    }

    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v29 = [v5 indexOfObject:v28 inSortedRange:0 options:objc_msgSend(v5 usingComparator:{"count"), 1280, &__block_literal_global_208}];

    if (v29 <= 0)
    {
      goto LABEL_2;
    }

    if (v29 <= [v5 count])
    {
      previouslyReturnedFrameIndexHint = v29 - 1;
      self->_previouslyReturnedFrameIndexHint = v29 - 1;
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = 134217984;
          v32 = v29 - 1;
          _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "Fell back to a binary search to determine frame index: %ld", &v31, 0xCu);
        }
      }
    }

    else
    {
      self->_previouslyReturnedFrameIndexHint = v12;
      previouslyReturnedFrameIndexHint = v12;
    }
  }

  else
  {
    v13 = previouslyReturnedFrameIndexHint + 5;
    if (previouslyReturnedFrameIndexHint + 5 >= v12)
    {
      v13 = v12;
    }

    if (previouslyReturnedFrameIndexHint > v13)
    {
      v13 = self->_previouslyReturnedFrameIndexHint;
    }

    v14 = v13 + 1;
    while (1)
    {
      v15 = [v5 objectAtIndexedSubscript:previouslyReturnedFrameIndexHint];
      [v15 doubleValue];
      v17 = v16;

      v18 = [v6 objectAtIndexedSubscript:previouslyReturnedFrameIndexHint];
      [v18 doubleValue];
      v20 = v19;

      if (v11 >= v17 && v11 < v20)
      {
        break;
      }

      if (v14 == ++previouslyReturnedFrameIndexHint)
      {
        goto LABEL_15;
      }
    }

    self->_previouslyReturnedFrameIndexHint = previouslyReturnedFrameIndexHint;
  }

LABEL_3:

  return previouslyReturnedFrameIndexHint;
}

- (id)frameForAnimationTime:(double)a3
{
  v4 = [(CKAnimatedImage *)self frameIndexForAnimationTime:a3];
  v5 = [(CKAnimatedImage *)self frames];
  v6 = v5;
  if ((v4 & 0x8000000000000000) != 0 || v4 >= [v5 count])
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CKAnimatedImage frameForAnimationTime:];
    }

    v7 = [v6 firstObject];
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:v4];
  }

  v9 = v7;

  return v9;
}

@end