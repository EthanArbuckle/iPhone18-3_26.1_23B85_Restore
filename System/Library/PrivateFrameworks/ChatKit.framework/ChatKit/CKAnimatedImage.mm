@interface CKAnimatedImage
+ (id)animatedImageFromOptimizedBitmapAtFileURL:(id)l error:(id *)error;
- (CGSize)size;
- (CKAnimatedImage)initWithImages:(id)images durations:(id)durations;
- (CKAnimatedImage)initWithMultiFrameImage:(id)image;
- (NSArray)frameEndTimestamps;
- (NSArray)frameStartTimestamps;
- (NSArray)frames;
- (UIImage)image;
- (double)endTimestampForFrameIndex:(unint64_t)index;
- (double)scale;
- (double)timeInLoopForTime:(double)time;
- (id)description;
- (id)frameForAnimationTime:(double)time;
- (int64_t)frameIndexForAnimationTime:(double)time;
- (void)_calculateFrameTimestamps;
@end

@implementation CKAnimatedImage

- (id)description
{
  v14.receiver = self;
  v14.super_class = CKAnimatedImage;
  v3 = [(CKAnimatedImage *)&v14 description];
  image = [(CKAnimatedImage *)self image];
  image2 = [(CKAnimatedImage *)self image];
  images = [image2 images];
  v7 = [images count];
  image3 = [(CKAnimatedImage *)self image];
  [image3 duration];
  v10 = v9;
  durations = [(CKAnimatedImage *)self durations];
  v12 = [v3 stringByAppendingFormat:@" (image:%@ #images:%ld duration:%f #durations:%ld)", image, v7, v10, objc_msgSend(durations, "count")];

  return v12;
}

- (CKAnimatedImage)initWithImages:(id)images durations:(id)durations
{
  durationsCopy = durations;
  imagesCopy = images;
  v8 = [[CKMultiFrameImage alloc] initWithFrameImages:imagesCopy frameDurations:durationsCopy];

  if (v8)
  {
    self = [(CKAnimatedImage *)self initWithMultiFrameImage:v8];
    selfCopy = self;
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CKAnimatedImage initWithImages:durations:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (CKAnimatedImage)initWithMultiFrameImage:(id)image
{
  imageCopy = image;
  if (![imageCopy frameCount])
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKAnimatedImage initWithMultiFrameImage:];
    }

    goto LABEL_10;
  }

  frameCount = [imageCopy frameCount];
  frameDurations = [imageCopy frameDurations];
  v8 = [frameDurations count];

  if (frameCount != v8)
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKAnimatedImage initWithMultiFrameImage:];
    }

LABEL_10:

    selfCopy = 0;
    goto LABEL_11;
  }

  v14.receiver = self;
  v14.super_class = CKAnimatedImage;
  v9 = [(CKAnimatedImage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_multiFrameImage, image);
  }

  self = v10;
  selfCopy = self;
LABEL_11:

  return selfCopy;
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
    frameDurations = [(CKMultiFrameImage *)self->_multiFrameImage frameDurations];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __24__CKAnimatedImage_image__block_invoke;
    v9[3] = &unk_1E72F5AB0;
    v9[4] = &v10;
    [frameDurations enumerateObjectsUsingBlock:v9];

    loadAllFrameImages = [(CKMultiFrameImage *)self->_multiFrameImage loadAllFrameImages];
    v6 = [MEMORY[0x1E69DCAB8] animatedImageWithImages:loadAllFrameImages duration:v11[3]];
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
  image = [(CKAnimatedImage *)self image];
  images = [image images];

  return images;
}

- (CGSize)size
{
  image = [(CKAnimatedImage *)self image];
  [image size];
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
  image = [(CKAnimatedImage *)self image];
  [image scale];
  v4 = v3;

  return v4;
}

+ (id)animatedImageFromOptimizedBitmapAtFileURL:(id)l error:(id *)error
{
  v11 = 0;
  v5 = [CKMultiFrameImage multiFrameImageFromOptimizedBitmapAtFileURL:l error:&v11];
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

    if (error)
    {
      v9 = v6;
      v7 = 0;
      *error = v6;
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
  durations = [(CKAnimatedImage *)self durations];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = durations;
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

- (double)timeInLoopForTime:(double)time
{
  frameEndTimestamps = [(CKAnimatedImage *)self frameEndTimestamps];
  lastObject = [frameEndTimestamps lastObject];
  [lastObject doubleValue];
  v8 = v7;

  [(CKAnimatedImage *)self animationStartTimeOffset];
  v10 = time - fmax(fmin(v9, time), 0.0);

  return fmod(v10, v8);
}

- (double)endTimestampForFrameIndex:(unint64_t)index
{
  frameEndTimestamps = [(CKAnimatedImage *)self frameEndTimestamps];
  v6 = [frameEndTimestamps count];

  if (v6 <= index)
  {
    return 0.0;
  }

  frameEndTimestamps2 = [(CKAnimatedImage *)self frameEndTimestamps];
  v8 = [frameEndTimestamps2 objectAtIndex:index];

  [v8 doubleValue];
  v10 = v9;

  return v10;
}

- (int64_t)frameIndexForAnimationTime:(double)time
{
  v33 = *MEMORY[0x1E69E9840];
  frameStartTimestamps = [(CKAnimatedImage *)self frameStartTimestamps];
  frameEndTimestamps = [(CKAnimatedImage *)self frameEndTimestamps];
  v7 = [frameStartTimestamps count];
  [(CKAnimatedImage *)self timeInLoopForTime:time];
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
    if ([frameEndTimestamps count])
    {
      firstObject = [frameStartTimestamps firstObject];
      [firstObject doubleValue];
      v24 = v23;

      firstObject2 = [frameEndTimestamps firstObject];
      [firstObject2 doubleValue];
      v27 = v26;

      if (v11 >= v24 && v11 < v27)
      {
        goto LABEL_2;
      }
    }

    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v29 = [frameStartTimestamps indexOfObject:v28 inSortedRange:0 options:objc_msgSend(frameStartTimestamps usingComparator:{"count"), 1280, &__block_literal_global_208}];

    if (v29 <= 0)
    {
      goto LABEL_2;
    }

    if (v29 <= [frameStartTimestamps count])
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
      v15 = [frameStartTimestamps objectAtIndexedSubscript:previouslyReturnedFrameIndexHint];
      [v15 doubleValue];
      v17 = v16;

      v18 = [frameEndTimestamps objectAtIndexedSubscript:previouslyReturnedFrameIndexHint];
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

- (id)frameForAnimationTime:(double)time
{
  v4 = [(CKAnimatedImage *)self frameIndexForAnimationTime:time];
  frames = [(CKAnimatedImage *)self frames];
  v6 = frames;
  if ((v4 & 0x8000000000000000) != 0 || v4 >= [frames count])
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CKAnimatedImage frameForAnimationTime:];
    }

    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = [v6 objectAtIndexedSubscript:v4];
  }

  v9 = firstObject;

  return v9;
}

@end