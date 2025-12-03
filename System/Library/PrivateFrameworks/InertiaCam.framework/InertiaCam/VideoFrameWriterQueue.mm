@interface VideoFrameWriterQueue
- (BOOL)WaitForFinish;
- (VideoFrameWriterProgressRecipient)frameWriterUpdateCallback;
- (VideoFrameWriterQueue)initWithOutputURL:(id)l forMovieDimensions:(CGSize)dimensions outputTransform:(CGAffineTransform *)transform startTime:(id *)time endTime:(id *)endTime;
- (id)FindFrameWithIndex:(int64_t)index;
- (unint64_t)FramesInQueue;
- (void)AddAFrame:(id)frame;
- (void)DrainIfAbove:(unsigned int)above downTo:(unsigned int)to;
- (void)FrameRequestCallback;
- (void)StartWatchingForFrames;
- (void)dealloc;
@end

@implementation VideoFrameWriterQueue

- (VideoFrameWriterQueue)initWithOutputURL:(id)l forMovieDimensions:(CGSize)dimensions outputTransform:(CGAffineTransform *)transform startTime:(id *)time endTime:(id *)endTime
{
  height = dimensions.height;
  width = dimensions.width;
  v49.receiver = self;
  v49.super_class = VideoFrameWriterQueue;
  lCopy = l;
  v13 = [(VideoFrameWriterQueue *)&v49 init];
  v42 = *&time->var0;
  *&v43 = time->var3;
  [v13 setStartTime:&v42];
  v42 = *&endTime->var0;
  *&v43 = endTime->var3;
  [v13 setEndTime:&v42];
  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:32];
  [v13 setFrameArray:v14];

  *(v13 + 140) = 0x500000001;
  v15 = dispatch_queue_create("frame write queue", 0);
  v16 = *(v13 + 6);
  *(v13 + 6) = v15;

  v17 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v18 = *(v13 + 5);
  *(v13 + 5) = v17;

  v19 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:1];
  v20 = *(v13 + 13);
  *(v13 + 13) = v19;

  v21 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:1];
  v22 = *(v13 + 19);
  *(v13 + 19) = v21;

  v23 = objc_alloc(MEMORY[0x277CE6460]);
  v24 = *MEMORY[0x277CE5DA8];
  v48 = 0;
  v25 = [v23 initWithURL:lCopy fileType:v24 error:&v48];

  v26 = v48;
  [v13 setVideoWriter:v25];

  if (v26)
  {
    [v13 setWriteError:v26];
  }

  v27 = MEMORY[0x277CBEAC0];
  v28 = *MEMORY[0x277CE6300];
  v29 = *MEMORY[0x277CE62C8];
  v30 = [MEMORY[0x277CCABB0] numberWithLong:rint(width)];
  v31 = *MEMORY[0x277CE63C0];
  v32 = [MEMORY[0x277CCABB0] numberWithLong:rint(height)];
  v33 = [v27 dictionaryWithObjectsAndKeys:{v28, v29, v30, v31, v32, *MEMORY[0x277CE6360], 0}];

  v34 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5EA8] outputSettings:v33];
  [v13 setWriterInput:v34];

  v35 = *&transform->c;
  v45 = *&transform->a;
  v46 = v35;
  v47 = *&transform->tx;
  writerInput = [v13 writerInput];
  v42 = v45;
  v43 = v46;
  v44 = v47;
  [writerInput setTransform:&v42];

  v37 = MEMORY[0x277CBEAC0];
  v38 = [MEMORY[0x277CCABB0] numberWithInt:1111970369];
  v39 = [v37 dictionaryWithObjectsAndKeys:{v38, *MEMORY[0x277CC4E30], 0}];

  v40 = [MEMORY[0x277CE6478] assetWriterInputPixelBufferAdaptorWithAssetWriterInput:*(v13 + 2) sourcePixelBufferAttributes:v39];
  [v13 setInputAdaptor:v40];

  [*(v13 + 1) addInput:*(v13 + 2)];
  return v13;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VideoFrameWriterQueue;
  [(VideoFrameWriterQueue *)&v2 dealloc];
}

- (void)AddAFrame:(id)frame
{
  frameArrayLock = self->frameArrayLock;
  frameCopy = frame;
  [(NSLock *)frameArrayLock lock];
  [(NSMutableArray *)self->frameArray addObject:frameCopy];

  [(NSLock *)self->frameArrayLock unlock];
  drainMinimum = self->_drainMinimum;
  drainMaximum = self->_drainMaximum;

  [(VideoFrameWriterQueue *)self DrainIfAbove:drainMaximum downTo:drainMinimum];
}

- (unint64_t)FramesInQueue
{
  [(NSLock *)self->frameArrayLock lock];
  v3 = [(NSMutableArray *)self->frameArray count];
  [(NSLock *)self->frameArrayLock unlock];
  return v3;
}

- (BOOL)WaitForFinish
{
  if ([(NSConditionLock *)self->_writingDoneLock tryLockWhenCondition:3])
  {
    [(NSLock *)self->frameArrayLock lock];
    v3 = [(NSMutableArray *)self->frameArray count];
    if (v3)
    {
      v4 = v3 - 1;
      do
      {
        [(NSMutableArray *)self->frameArray removeObjectAtIndex:v4--];
      }

      while (v4 != -1);
    }

    [(NSLock *)self->frameArrayLock unlock];
  }

  else
  {
    [(NSConditionLock *)self->_writingDoneLock lock];
    [(NSConditionLock *)self->_writingDoneLock unlockWithCondition:2];
    [(NSConditionLock *)self->_writingDoneLock lockWhenCondition:3];
  }

  [(NSConditionLock *)self->_writingDoneLock unlockWithCondition:1];
  [(AVAssetWriterInput *)self->writerInput markAsFinished];
  videoWriter = self->videoWriter;
  v13 = *&self->endTime.value;
  epoch = self->endTime.epoch;
  [(AVAssetWriter *)videoWriter endSessionAtSourceTime:&v13];
  v6 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
  v7 = self->videoWriter;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_254B462D0;
  v11[3] = &unk_2797A9A20;
  v12 = v6;
  v8 = v6;
  [(AVAssetWriter *)v7 finishWritingWithCompletionHandler:v11];
  [v8 lockWhenCondition:1];
  [v8 unlock];
  writeSuccess = self->writeSuccess;

  return writeSuccess;
}

- (id)FindFrameWithIndex:(int64_t)index
{
  [(NSLock *)self->frameArrayLock lock];
  v5 = [(NSMutableArray *)self->frameArray count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->frameArray objectAtIndex:v7];
      if ([v8 frameNumber] == index)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    [(NSMutableArray *)self->frameArray removeObjectAtIndex:v7];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  [(NSLock *)self->frameArrayLock unlock];

  return v8;
}

- (void)FrameRequestCallback
{
  v3 = objc_autoreleasePoolPush();
  if ([(AVAssetWriterInput *)self->writerInput isReadyForMoreMediaData])
  {
    v4 = 0;
    while (2)
    {
      if (![(VideoFrameWriterQueue *)self canceled]&& (v4 & 1) == 0)
      {
        while (1)
        {
          v5 = [(VideoFrameWriterQueue *)self FindFrameWithIndex:[(VideoFrameWriterQueue *)self nextFrameIndex]];
          if (v5)
          {
            v6 = v5;
            inputAdaptor = self->inputAdaptor;
            pixelBuffer = [v5 pixelBuffer];
            [v6 frameTime];
            LOBYTE(inputAdaptor) = [(AVAssetWriterInputPixelBufferAdaptor *)inputAdaptor appendPixelBuffer:pixelBuffer withPresentationTime:v14];
            WeakRetained = objc_loadWeakRetained(&self->frameWriterUpdateCallback);
            [WeakRetained updateCallbackForFrameIndex:-[VideoFrameWriterQueue nextFrameIndex](self withPixelBuffer:{"nextFrameIndex"), objc_msgSend(v6, "pixelBuffer")}];

            [(VideoFrameWriterQueue *)self setNextFrameIndex:[(VideoFrameWriterQueue *)self nextFrameIndex]+ 1];
            [v6 DeallocPixBuffer];

            if ((inputAdaptor & 1) == 0)
            {
              self->writeSuccess = 0;
              NSLog(&cfstr_FailedToAppend.isa);
              error = [(AVAssetWriter *)self->videoWriter error];
              v12 = error;
              if (error)
              {
                NSLog(&cfstr_ErrorCodeD.isa, [error code]);
                v13 = [v12 description];
                NSLog(&cfstr_ErrorDescripti.isa, [v13 UTF8String]);

                [(VideoFrameWriterQueue *)self setWriteError:v12];
              }

              [(NSConditionLock *)self->_writingDoneLock lock];
              [(NSConditionLock *)self->_writingDoneLock unlockWithCondition:3];

              goto LABEL_25;
            }

            if ([(NSConditionLock *)self->_drainConditionLock tryLockWhenCondition:1])
            {
              if ([(VideoFrameWriterQueue *)self FramesInQueue]<= self->_drainTarget)
              {
                v10 = 2;
              }

              else
              {
                v10 = 1;
              }

              [(NSConditionLock *)self->_drainConditionLock unlockWithCondition:v10];
            }

LABEL_18:
            v4 = 0;
            goto LABEL_19;
          }

          if ([(VideoFrameWriterQueue *)self canceled])
          {
            goto LABEL_18;
          }

          if ([(NSConditionLock *)self->_writingDoneLock tryLockWhenCondition:2])
          {
            self->_doneQueueing = 1;
            [(NSConditionLock *)self->_writingDoneLock unlockWithCondition:2];
          }

          if (self->_doneQueueing && ![(VideoFrameWriterQueue *)self FramesInQueue])
          {
            break;
          }

          [MEMORY[0x277CCACC8] sleepForTimeInterval:0.1];
        }

        [(NSConditionLock *)self->_writingDoneLock lock];
        [(NSConditionLock *)self->_writingDoneLock unlockWithCondition:3];
        v4 = 1;
LABEL_19:
        if ([(AVAssetWriterInput *)self->writerInput isReadyForMoreMediaData])
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_25:
  if (self->canceled && [(NSConditionLock *)self->_writingDoneLock tryLockWhenCondition:2])
  {
    self->_doneQueueing = 1;
    [(NSConditionLock *)self->_writingDoneLock unlockWithCondition:3];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)StartWatchingForFrames
{
  self->nextFrameIndex = 0;
  [(AVAssetWriter *)self->videoWriter startWriting];
  videoWriter = self->videoWriter;
  startTime = self->startTime;
  [(AVAssetWriter *)videoWriter startSessionAtSourceTime:&startTime];
  self->writeSuccess = 1;
  writerInput = self->writerInput;
  frameWriteQueue = self->frameWriteQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_254B46714;
  v6[3] = &unk_2797A9A20;
  v6[4] = self;
  [(AVAssetWriterInput *)writerInput requestMediaDataWhenReadyOnQueue:frameWriteQueue usingBlock:v6];
}

- (void)DrainIfAbove:(unsigned int)above downTo:(unsigned int)to
{
  if ([(VideoFrameWriterQueue *)self FramesInQueue]> above)
  {
    [(NSConditionLock *)self->_drainConditionLock lock];
    self->_drainTarget = to;
    [(NSConditionLock *)self->_drainConditionLock unlockWithCondition:1];
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
    if ([(NSConditionLock *)self->_drainConditionLock lockWhenCondition:2 beforeDate:?])
    {
      [(NSConditionLock *)self->_drainConditionLock unlockWithCondition:0];
    }
  }
}

- (VideoFrameWriterProgressRecipient)frameWriterUpdateCallback
{
  WeakRetained = objc_loadWeakRetained(&self->frameWriterUpdateCallback);

  return WeakRetained;
}

@end