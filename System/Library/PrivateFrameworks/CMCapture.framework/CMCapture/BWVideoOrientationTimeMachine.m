@interface BWVideoOrientationTimeMachine
- (BWVideoOrientationTimeMachine)initWithCapacity:(unint64_t)a3 formatDescription:(opaqueCMFormatDescription *)a4 metadataLocalID:(unsigned int)a5;
- (CMSampleBufferRef)_newSbufWithCachedItem:(CMTime *)a3 trimAtStartPTS:(CMTime *)a4 referencePTS:;
- (id)_cachedItemsFromPTSSeconds:(double)a3 toPTSSeconds:(double)a4;
- (id)copyVideoOrientationSbufFromPTS:(id *)a3 toPTS:(id *)a4 referencePTS:(id *)a5;
- (id)debugDescription;
- (void)addItemToCacheWithPTS:(id *)a3 exifOrientation:(signed __int16)a4;
- (void)dealloc;
@end

@implementation BWVideoOrientationTimeMachine

- (BWVideoOrientationTimeMachine)initWithCapacity:(unint64_t)a3 formatDescription:(opaqueCMFormatDescription *)a4 metadataLocalID:(unsigned int)a5
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Capacity must be non-zero" userInfo:0]);
  }

  v12.receiver = self;
  v12.super_class = BWVideoOrientationTimeMachine;
  v8 = [(BWVideoOrientationTimeMachine *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_capacity = a3;
    v8->_cache = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8->_capacity];
    if (a4)
    {
      v10 = CFRetain(a4);
    }

    else
    {
      v10 = 0;
    }

    v9->_formatDescription = v10;
    v9->_metadataLocalID = a5;
    v9->_propertyMutex = FigSimpleMutexCreate();
  }

  return v9;
}

- (void)dealloc
{
  formatDescription = self->_formatDescription;
  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  FigSimpleMutexDestroy();
  v4.receiver = self;
  v4.super_class = BWVideoOrientationTimeMachine;
  [(BWVideoOrientationTimeMachine *)&v4 dealloc];
}

- (id)debugDescription
{
  FigSimpleMutexLock();
  v3 = [(NSMutableArray *)self->_cache copy];
  FigSimpleMutexUnlock();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [v4 stringWithFormat:@"<%@: %p> %@", NSStringFromClass(v5), self, v3];

  return v6;
}

- (void)addItemToCacheWithPTS:(id *)a3 exifOrientation:(signed __int16)a4
{
  v4 = a4;
  v11 = *a3;
  Seconds = CMTimeGetSeconds(&v11);
  v7 = [[BWVideoOrientationTimeMachineItem alloc] initWithPTSSeconds:v4 exifOrientation:Seconds];
  FigSimpleMutexLock();
  v8 = [(NSMutableArray *)self->_cache lastObject];
  if (!v8 || (v9 = v8, [v8 ptsSeconds], v10 < Seconds) && objc_msgSend(v9, "exifOrientation") != v4)
  {
    if ([(NSMutableArray *)self->_cache count]>= self->_capacity)
    {
      [(NSMutableArray *)self->_cache removeObjectAtIndex:0];
    }

    [(NSMutableArray *)self->_cache addObject:v7];
  }

  FigSimpleMutexUnlock();
}

- (id)_cachedItemsFromPTSSeconds:(double)a3 toPTSSeconds:(double)a4
{
  FigSimpleMutexLock();
  if ([(NSMutableArray *)self->_cache count])
  {
    v7 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      [-[NSMutableArray objectAtIndexedSubscript:](self->_cache objectAtIndexedSubscript:{v7), "ptsSeconds"}];
      if (v9 >= a4 && v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v9 > a3 && v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_17;
      }

      if (v9 < a4)
      {
        v8 = v7;
      }

      if (++v7 >= [(NSMutableArray *)self->_cache count])
      {
        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

LABEL_17:
        v13 = v8;
        if (v8 < [(NSMutableArray *)self->_cache count])
        {
          [-[NSMutableArray objectAtIndexedSubscript:](self->_cache objectAtIndexedSubscript:{v8), "ptsSeconds"}];
          v13 = v8;
          if (v14 < a4)
          {
            v15 = v8;
            do
            {
              v13 = v15++;
              if (v15 >= [(NSMutableArray *)self->_cache count])
              {
                break;
              }

              [-[NSMutableArray objectAtIndexedSubscript:](self->_cache objectAtIndexedSubscript:{v15), "ptsSeconds"}];
            }

            while (v16 < a4);
          }
        }

        v12 = [(NSMutableArray *)self->_cache subarrayWithRange:v8, v13 - v8 + 1];
        goto LABEL_23;
      }
    }
  }

  v12 = 0;
LABEL_23:
  FigSimpleMutexUnlock();
  return v12;
}

- (id)copyVideoOrientationSbufFromPTS:(id *)a3 toPTS:(id *)a4 referencePTS:(id *)a5
{
  if ((a3->var2 & 1) == 0)
  {
    return 0;
  }

  if ((a4->var2 & 1) == 0)
  {
    return 0;
  }

  time1 = *a3;
  time2 = *a4;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
    return 0;
  }

  if ((a5->var2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_72();
  OUTLINED_FUNCTION_1_82(a3->var3, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), a3->var0, *&a3->var1, v40);
  Seconds = CMTimeGetSeconds(&time1);
  OUTLINED_FUNCTION_0_72();
  OUTLINED_FUNCTION_1_82(a4->var3, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), a4->var0, *&a4->var1, v40);
  v10 = [(BWVideoOrientationTimeMachine *)self _cachedItemsFromPTSSeconds:Seconds toPTSSeconds:CMTimeGetSeconds(&time1)];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v36 objects:&v20 count:16];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v37;
LABEL_7:
  v15 = 0;
  while (1)
  {
    if (*v37 != v14)
    {
      objc_enumerationMutation(v10);
    }

    v16 = *(*(&v36 + 1) + 8 * v15);
    if (!v13)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
    }

    time1 = *a3;
    OUTLINED_FUNCTION_0_72();
    v17 = [(BWVideoOrientationTimeMachine *)self _newSbufWithCachedItem:v16 trimAtStartPTS:&time1 referencePTS:&time2];
    if (!v17)
    {
      return v13;
    }

    v18 = v17;
    [v13 addObject:v17];
    CFRelease(v18);
    if (v12 == ++v15)
    {
      v12 = [v10 countByEnumeratingWithState:&v36 objects:&v20 count:16];
      if (v12)
      {
        goto LABEL_7;
      }

      return v13;
    }
  }
}

- (CMSampleBufferRef)_newSbufWithCachedItem:(CMTime *)a3 trimAtStartPTS:(CMTime *)a4 referencePTS:
{
  if (result)
  {
    v6 = result;
    time = *a3;
    Seconds = CMTimeGetSeconds(&time);
    time = *a4;
    v8 = CMTimeGetSeconds(&time);
    [a2 ptsSeconds];
    v10 = v9 - v8;
    if (v10 < Seconds)
    {
      v10 = Seconds;
    }

    memset(&time, 0, sizeof(time));
    CMTimeMakeWithSeconds(&time, v10, a4->timescale);
    v11 = [a2 exifOrientation];
    v12 = *(v6 + 3);
    v13 = time;
    return FigCaptureMetadataUtilitiesCreateVideoOrientationSampleBuffer(&v13, 0, v11, v12);
  }

  return result;
}

@end