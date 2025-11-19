@interface BWMotionDataTimeMachine
- (BWMotionDataTimeMachine)initWithCapacity:(unint64_t)a3 synchronizedSlaveMotionDataCachingEnabled:(BOOL)a4 cacheEntireMetadataDictionary:(BOOL)a5;
- (id)copyMotionDataForSerialNumber:(unint64_t)a3;
- (id)copyMotionDataForStartingSerialNumber:(unint64_t)a3 endingSerialNumber:(unint64_t)a4;
- (unint64_t)addMotionDataToCacheForSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (unint64_t)earliestAvailableMotionDataSerialNumber;
- (unint64_t)latestAvailableMotionDataSerialNumber;
- (void)_copyMotionDataForSampleBuffer:(uint64_t)a1;
- (void)dealloc;
@end

@implementation BWMotionDataTimeMachine

- (BWMotionDataTimeMachine)initWithCapacity:(unint64_t)a3 synchronizedSlaveMotionDataCachingEnabled:(BOOL)a4 cacheEntireMetadataDictionary:(BOOL)a5
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Capacity must be non-zero" userInfo:0]);
  }

  v28.receiver = self;
  v28.super_class = BWMotionDataTimeMachine;
  v8 = [(BWMotionDataTimeMachine *)&v28 init];
  if (v8)
  {
    v8->_cache = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    v8->_capacity = a3;
    v8->_synchronizedSlaveMotionDataCachingEnabled = a4;
    v8->_cacheEntireMetadataDictionary = a5;
    v8->_propertyMutex = FigSimpleMutexCreate();
    v9 = objc_alloc(MEMORY[0x1E695DEC8]);
    v10 = *off_1E798B208;
    v27[0] = *off_1E798B540;
    v27[1] = v10;
    v11 = *off_1E798B550;
    v27[2] = *off_1E798B530;
    v27[3] = v11;
    v12 = *off_1E798B290;
    v27[4] = *off_1E798B190;
    v27[5] = v12;
    v13 = *off_1E798B668;
    v27[6] = *off_1E798B3D0;
    v27[7] = v13;
    v14 = *off_1E798B598;
    v27[8] = *off_1E798B790;
    v27[9] = v14;
    v15 = *off_1E798B5A8;
    v27[10] = *off_1E798B5D8;
    v27[11] = v15;
    v16 = *off_1E798B670;
    v27[12] = *off_1E798B5A0;
    v27[13] = v16;
    v17 = *off_1E798B3B8;
    v27[14] = *off_1E798B520;
    v27[15] = v17;
    v18 = *off_1E798D4B8;
    v27[16] = *off_1E798B7A0;
    v27[17] = v18;
    v19 = *off_1E798B2A8;
    v27[18] = *off_1E798B6B0;
    v27[19] = v19;
    v20 = *off_1E798D4B0;
    v27[20] = *off_1E798B328;
    v27[21] = v20;
    v21 = *off_1E798D4A8;
    v27[22] = *off_1E798B3D8;
    v27[23] = v21;
    v22 = *off_1E798A5C8;
    v27[24] = *off_1E798A6F0;
    v27[25] = v22;
    v23 = *off_1E798B508;
    v27[26] = *off_1E798B588;
    v27[27] = v23;
    v8->_motionMetadataKeys = [v9 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v27, 28)}];
    v24 = objc_alloc(MEMORY[0x1E695DEC8]);
    v26[0] = *off_1E798A420;
    v26[1] = 0x1F216AB90;
    v8->_sampleBufferAttachmentKeys = [v24 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v26, 2)}];
  }

  return v8;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = BWMotionDataTimeMachine;
  [(BWMotionDataTimeMachine *)&v3 dealloc];
}

- (unint64_t)earliestAvailableMotionDataSerialNumber
{
  FigSimpleMutexLock();
  earliestAvailableMotionDataSerialNumber = self->_earliestAvailableMotionDataSerialNumber;
  FigSimpleMutexUnlock();
  return earliestAvailableMotionDataSerialNumber;
}

- (unint64_t)latestAvailableMotionDataSerialNumber
{
  FigSimpleMutexLock();
  latestAvailableMotionDataSerialNumber = self->_latestAvailableMotionDataSerialNumber;
  FigSimpleMutexUnlock();
  return latestAvailableMotionDataSerialNumber;
}

- (unint64_t)addMotionDataToCacheForSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [(BWMotionDataTimeMachine *)self _copyMotionDataForSampleBuffer:a3];
  if (self->_synchronizedSlaveMotionDataCachingEnabled)
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(a3, 0x1F21AAA50);
    if (AttachedMedia)
    {
      v7 = AttachedMedia;
    }

    else
    {
      v7 = BWSampleBufferGetAttachedMedia(a3, @"SynchronizedSlaveFrame");
      if (!v7)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
LABEL_5:
        v9 = v8;
        goto LABEL_7;
      }
    }

    v8 = [(BWMotionDataTimeMachine *)self _copyMotionDataForSampleBuffer:v7];
    goto LABEL_5;
  }

  v7 = 0;
  v9 = 0;
LABEL_7:
  FigSimpleMutexLock();
  earliestAvailableMotionDataSerialNumber = self->_earliestAvailableMotionDataSerialNumber;
  latestAvailableMotionDataSerialNumber = self->_latestAvailableMotionDataSerialNumber;
  v12 = latestAvailableMotionDataSerialNumber + 1;
  self->_latestAvailableMotionDataSerialNumber = latestAvailableMotionDataSerialNumber + 1;
  if (earliestAvailableMotionDataSerialNumber)
  {
    if (latestAvailableMotionDataSerialNumber - earliestAvailableMotionDataSerialNumber + 2 > self->_capacity)
    {
      [(NSMutableArray *)self->_cache removeObjectAtIndex:0];
      v12 = self->_latestAvailableMotionDataSerialNumber;
      ++self->_earliestAvailableMotionDataSerialNumber;
    }
  }

  else
  {
    self->_earliestAvailableMotionDataSerialNumber = v12;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12];
  v14 = *off_1E798CE70;
  [v5 setObject:v13 forKeyedSubscript:*off_1E798CE70];
  [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", v12), v14}];
  v15 = *off_1E798A2D8;
  v16 = BWSampleBufferGetAttachedMedia(a3, *off_1E798A2D8);
  if (v16)
  {
    v17 = v16;
    v18 = CMGetAttachment(a3, *off_1E798A3C8, 0);
    CMSetAttachment(v17, *off_1E798A4B0, [v18 objectForKeyedSubscript:*off_1E798A8F8], 1u);
    [v5 setObject:v17 forKeyedSubscript:v15];
    if (v18)
    {
      [v5 setObject:objc_msgSend(v18 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A8E8), *off_1E798A8E8}];
    }
  }

  if (v7)
  {
    v19 = BWSampleBufferGetAttachedMedia(v7, v15);
    if (v19)
    {
      [v9 setObject:v19 forKeyedSubscript:v15];
      v20 = CMGetAttachment(v7, *off_1E798A3C8, 0);
      if (v20)
      {
        [v9 setObject:objc_msgSend(v20 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A8E8), *off_1E798A8E8}];
      }
    }
  }

  v21 = objc_alloc(MEMORY[0x1E695DF20]);
  if (v9)
  {
    v22 = [v21 initWithObjectsAndKeys:{v5, BWMotionDataTimeMachineKeyPrimaryMotionData, v9, BWMotionDataTimeMachineKeySynchronizedSlaveFrameMotionData, 0}];
  }

  else
  {
    v22 = [v21 initWithObjectsAndKeys:{v5, BWMotionDataTimeMachineKeyPrimaryMotionData, 0, v25, v26}];
  }

  v23 = v22;
  [(NSMutableArray *)self->_cache addObject:v22];
  FigSimpleMutexUnlock();

  return v12;
}

- (id)copyMotionDataForSerialNumber:(unint64_t)a3
{
  FigSimpleMutexLock();
  earliestAvailableMotionDataSerialNumber = self->_earliestAvailableMotionDataSerialNumber;
  if (a3 < earliestAvailableMotionDataSerialNumber || self->_latestAvailableMotionDataSerialNumber < a3)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v7 = [(NSMutableArray *)self->_cache objectAtIndexedSubscript:a3 - earliestAvailableMotionDataSerialNumber];
  FigSimpleMutexUnlock();
  if (!v7)
  {
    return 0;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v7];

  return v8;
}

- (id)copyMotionDataForStartingSerialNumber:(unint64_t)a3 endingSerialNumber:(unint64_t)a4
{
  v4 = a4 - a3;
  if (a4 < a3)
  {
    [BWMotionDataTimeMachine copyMotionDataForStartingSerialNumber:endingSerialNumber:];
    return 0;
  }

  FigSimpleMutexLock();
  earliestAvailableMotionDataSerialNumber = self->_earliestAvailableMotionDataSerialNumber;
  v9 = a3 - earliestAvailableMotionDataSerialNumber;
  if (a3 >= earliestAvailableMotionDataSerialNumber && self->_latestAvailableMotionDataSerialNumber >= a4)
  {
    v14 = v4 + 1;
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    if (self->_synchronizedSlaveMotionDataCachingEnabled)
    {
      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    }

    else
    {
      v11 = 0;
    }

    if (v9 < v9 + v14)
    {
      do
      {
        v15 = [(NSMutableArray *)self->_cache objectAtIndexedSubscript:v9];
        v16 = objc_alloc(MEMORY[0x1E695DF90]);
        v17 = [v16 initWithDictionary:{objc_msgSend(v15, "objectForKeyedSubscript:", BWMotionDataTimeMachineKeyPrimaryMotionData)}];
        [v10 addObject:v17];

        if (self->_synchronizedSlaveMotionDataCachingEnabled)
        {
          v18 = objc_alloc(MEMORY[0x1E695DF90]);
          v19 = [v18 initWithDictionary:{objc_msgSend(v15, "objectForKeyedSubscript:", BWMotionDataTimeMachineKeySynchronizedSlaveFrameMotionData)}];
          [v11 addObject:v19];
        }

        ++v9;
        --v14;
      }

      while (v14);
    }

    FigSimpleMutexUnlock();
    if (v10)
    {
      v20 = objc_alloc(MEMORY[0x1E695DF20]);
      if (v11)
      {
        v21 = [v20 initWithObjectsAndKeys:{v10, BWMotionDataTimeMachineKeyPrimaryMotionData, v11, BWMotionDataTimeMachineKeySynchronizedSlaveFrameMotionData, 0}];
      }

      else
      {
        v21 = [v20 initWithObjectsAndKeys:{v10, BWMotionDataTimeMachineKeyPrimaryMotionData, 0, v22, v23}];
      }

      v12 = v21;
      goto LABEL_6;
    }
  }

  else
  {
    FigSimpleMutexUnlock();
    v10 = 0;
    v11 = 0;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (void)_copyMotionDataForSampleBuffer:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v5 = *(a1 + 57);
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  if (v5 == 1)
  {
    v7 = [v6 initWithDictionary:v4];
    v15 = v7;
  }

  else
  {
    v15 = [v6 initWithCapacity:0];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v16 = *(a1 + 16);
    v7 = OUTLINED_FUNCTION_0_75(v15, v17, v18, v19, v20, v21, v22, v23, v54.value, *&v54.timescale, v54.epoch, v55.value, *&v55.timescale, v55.epoch, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76);
    if (v7)
    {
      v24 = v7;
      v25 = *v78;
      do
      {
        v26 = 0;
        do
        {
          if (*v78 != v25)
          {
            objc_enumerationMutation(v16);
          }

          v27 = *(*(&v77 + 1) + 8 * v26);
          v28 = [v4 objectForKeyedSubscript:v27];
          if (v28)
          {
            v28 = [v15 setObject:v28 forKeyedSubscript:v27];
          }

          ++v26;
        }

        while (v24 != v26);
        v7 = OUTLINED_FUNCTION_0_75(v28, v29, v30, v31, v32, v33, v34, v35, v54.value, *&v54.timescale, v54.epoch, v55.value, *&v55.timescale, v55.epoch, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76);
        v24 = v7;
      }

      while (v7);
    }
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v36 = *(a1 + 24);
  v37 = OUTLINED_FUNCTION_1_84(v7, v8, v9, v10, v11, v12, v13, v14, v54.value, *&v54.timescale, v54.epoch, v55.value, *&v55.timescale, v55.epoch, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, 0);
  if (v37)
  {
    v38 = v37;
    v39 = *v73;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v73 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v72 + 1) + 8 * i);
        v42 = CMGetAttachment(target, v41, 0);
        if (v42)
        {
          v42 = [v15 setObject:v42 forKeyedSubscript:v41];
        }
      }

      v38 = OUTLINED_FUNCTION_1_84(v42, v43, v44, v45, v46, v47, v48, v49, v54.value, *&v54.timescale, v54.epoch, v55.value, *&v55.timescale, v55.epoch, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
    }

    while (v38);
  }

  v50 = *off_1E798A420;
  if (![v15 objectForKeyedSubscript:*off_1E798A420])
  {
    memset(&v55, 0, sizeof(v55));
    CMSampleBufferGetPresentationTimeStamp(&v55, target);
    v51 = *MEMORY[0x1E695E480];
    v54 = v55;
    v52 = CMTimeCopyAsDictionary(&v54, v51);
    [v15 setObject:v52 forKeyedSubscript:v50];
    if (v52)
    {
      CFRelease(v52);
    }
  }

  return v15;
}

@end