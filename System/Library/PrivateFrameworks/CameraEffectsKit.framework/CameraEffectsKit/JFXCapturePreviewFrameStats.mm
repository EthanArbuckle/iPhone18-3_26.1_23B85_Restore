@interface JFXCapturePreviewFrameStats
- (void)printLabels;
- (void)printStats;
@end

@implementation JFXCapturePreviewFrameStats

- (void)printLabels
{
  v2 = JFXLog_automation();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_242A3B000, v2, OS_LOG_TYPE_DEFAULT, " GetBGBuffers | GenMatte (Total) | Render | WaitToDisplay | Total  | Dropped ", v3, 2u);
  }
}

- (void)printStats
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = JFXLog_automation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self->_frameTimes[0];
    v5 = self->_frameTimes[1];
    v6 = self->_frameTimes[2];
    v7 = self->_frameTimes[3];
    v8 = self->_frameTimes[4];
    v9 = self->_frameTimes[5];
    dropped = self->_dropped;
    v11 = 134219520;
    v12 = v4;
    v13 = 2048;
    v14 = v6;
    v15 = 2048;
    v16 = v5;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = v9;
    v23 = 1024;
    v24 = dropped;
    _os_log_impl(&dword_242A3B000, v3, OS_LOG_TYPE_DEFAULT, " %12.3f | %8.3f (%5.3f) | %6.3f | %13.3f | %7.3f | %d ", &v11, 0x44u);
  }
}

@end