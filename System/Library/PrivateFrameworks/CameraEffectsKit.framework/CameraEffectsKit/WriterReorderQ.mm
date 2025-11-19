@interface WriterReorderQ
- (WriterReorderQ)init;
- (id)clearQueuedFrameSet;
- (id)getReorderedFrameSet:(id)a3;
- (void)clearQueuedFrameSet;
- (void)setLastReorderedTime:(id *)a3;
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

- (id)getReorderedFrameSet:(id)a3
{
  v4 = a3;
  memset(&v25, 0, sizeof(v25));
  v5 = [v4 colorSampleBuffer];
  v6 = v5;
  if (v5)
  {
    [v5 presentationTimeStamp];
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

  v8 = [(WriterReorderQ *)self frameSet];

  if (v8)
  {
    memset(&v24, 0, sizeof(v24));
    v9 = [(WriterReorderQ *)self frameSet];
    v10 = [v9 colorSampleBuffer];
    v11 = v10;
    if (v10)
    {
      [v10 presentationTimeStamp];
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

      v16 = v4;
    }

    else
    {
      if (v15)
      {
        [WriterReorderQ getReorderedFrameSet:?];
      }

      v16 = [(WriterReorderQ *)self frameSet];
      [(WriterReorderQ *)self setFrameSet:v4];
    }

    memset(&time1, 0, sizeof(time1));
    v17 = [v16 colorSampleBuffer];
    v18 = v17;
    if (v17)
    {
      [v17 presentationTimeStamp];
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

    [(WriterReorderQ *)self setFrameSet:v4];
  }

  v16 = 0;
LABEL_31:

  return v16;
}

- (id)clearQueuedFrameSet
{
  v3 = JFXLog_DebugWriterReorder();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(WriterReorderQ *)self clearQueuedFrameSet];
  }

  v4 = [(WriterReorderQ *)self frameSet];
  [(WriterReorderQ *)self setFrameSet:0];

  return v4;
}

- (void)setLastReorderedTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_lastReorderedTime.epoch = a3->var3;
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
  v3 = [a1 frameSet];
  v4 = [v3 colorSampleBuffer];
  v5 = v4;
  if (v4)
  {
    [v4 presentationTimeStamp];
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