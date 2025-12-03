@interface WriterReorderQ
- (WriterReorderQ)init;
- (id)clearQueuedFrameSet;
- (id)getReorderedFrameSet:(id)set;
- (void)clearQueuedFrameSet;
- (void)setLastReorderedTime:(id *)time;
@end

@implementation WriterReorderQ

- (WriterReorderQ)init
{
  v7.receiver = self;
  v7.super_class = WriterReorderQ;
  v2 = [(WriterReorderQ *)&v7 init];
  v3 = v2;
  if (v2)
  {
    frameSet = v2->_frameSet;
    v2->_frameSet = 0;

    v5 = MEMORY[0x277CC08F0];
    *&v3->_lastReorderedTime.value = *MEMORY[0x277CC08F0];
    v3->_lastReorderedTime.epoch = *(v5 + 16);
  }

  return v3;
}

- (id)getReorderedFrameSet:(id)set
{
  setCopy = set;
  memset(&v25, 0, sizeof(v25));
  colorSampleBuffer = [setCopy colorSampleBuffer];
  v6 = colorSampleBuffer;
  if (colorSampleBuffer)
  {
    [colorSampleBuffer presentationTimeStamp];
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
  }

  if ((v25.flags & 1) == 0)
  {
    v7 = JFXLog_DebugWriterReorder();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [WriterReorderQ getReorderedFrameSet:];
    }
  }

  frameSet = [(WriterReorderQ *)self frameSet];

  if (frameSet)
  {
    memset(&v24, 0, sizeof(v24));
    frameSet2 = [(WriterReorderQ *)self frameSet];
    colorSampleBuffer2 = [frameSet2 colorSampleBuffer];
    v11 = colorSampleBuffer2;
    if (colorSampleBuffer2)
    {
      [colorSampleBuffer2 presentationTimeStamp];
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
    }

    time1 = v25;
    time2 = v24;
    v13 = CMTimeCompare(&time1, &time2);
    v14 = JFXLog_DebugWriterReorder();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (v13 < 0)
    {
      if (v15)
      {
        [WriterReorderQ getReorderedFrameSet:?];
      }

      frameSet3 = setCopy;
    }

    else
    {
      if (v15)
      {
        [WriterReorderQ getReorderedFrameSet:?];
      }

      frameSet3 = [(WriterReorderQ *)self frameSet];
      [(WriterReorderQ *)self setFrameSet:setCopy];
    }

    memset(&time1, 0, sizeof(time1));
    colorSampleBuffer3 = [frameSet3 colorSampleBuffer];
    v18 = colorSampleBuffer3;
    if (colorSampleBuffer3)
    {
      [colorSampleBuffer3 presentationTimeStamp];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    [(WriterReorderQ *)self lastReorderedTime];
    v21 = time1;
    if ((CMTimeCompare(&v21, &time2) & 0x80000000) == 0)
    {
      time2 = time1;
      [(WriterReorderQ *)self setLastReorderedTime:&time2];
      goto LABEL_31;
    }

    v19 = JFXLog_DebugWriterReorder();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [WriterReorderQ getReorderedFrameSet:];
    }
  }

  else
  {
    v12 = JFXLog_DebugWriterReorder();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [WriterReorderQ getReorderedFrameSet:?];
    }

    [(WriterReorderQ *)self setFrameSet:setCopy];
  }

  frameSet3 = 0;
LABEL_31:

  return frameSet3;
}

- (id)clearQueuedFrameSet
{
  v3 = JFXLog_DebugWriterReorder();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(WriterReorderQ *)self clearQueuedFrameSet];
  }

  frameSet = [(WriterReorderQ *)self frameSet];
  [(WriterReorderQ *)self setFrameSet:0];

  return frameSet;
}

- (void)setLastReorderedTime:(id *)time
{
  v3 = *&time->var0;
  self->_lastReorderedTime.epoch = time->var3;
  *&self->_lastReorderedTime.value = v3;
}

- (void)getReorderedFrameSet:(uint64_t)a1 .cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10(a1);
  v2 = JFXNSStringForCMTime(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v3, v4, "Queued frame was out of order: %@", v5, v6, v7, v8, v9);
}

- (void)getReorderedFrameSet:(uint64_t)a1 .cold.3(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10(a1);
  v2 = JFXNSStringForCMTime(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v3, v4, "Queued frame was in order:  %@", v5, v6, v7, v8, v9);
}

- (void)getReorderedFrameSet:(uint64_t)a1 .cold.5(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10(a1);
  v2 = JFXNSStringForCMTime(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v3, v4, "Queued first reorder frame:   %@", v5, v6, v7, v8, v9);
}

- (void)clearQueuedFrameSet
{
  v8 = *MEMORY[0x277D85DE8];
  frameSet = [self frameSet];
  colorSampleBuffer = [frameSet colorSampleBuffer];
  v5 = colorSampleBuffer;
  if (colorSampleBuffer)
  {
    [colorSampleBuffer presentationTimeStamp];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  v6 = JFXNSStringForCMTime(&v7);
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "clearing queued frame:         %@", &v7, 0xCu);
}

@end