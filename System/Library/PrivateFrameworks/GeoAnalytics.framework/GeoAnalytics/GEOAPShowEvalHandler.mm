@interface GEOAPShowEvalHandler
- (void)endEvalData;
- (void)evalData:(id)data ofType:(unint64_t)type createTime:(id)time;
@end

@implementation GEOAPShowEvalHandler

- (void)endEvalData
{
  dispatch_semaphore_signal(self->_wait);
  [(NSXPCConnection *)self->_xpcConn invalidate];
  xpcConn = self->_xpcConn;
  self->_xpcConn = 0;
}

- (void)evalData:(id)data ofType:(unint64_t)type createTime:(id)time
{
  v13 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  dataCopy = data;
  v9 = GEOGetGEOAPShowEvalHandlerAnalyticsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    v12 = "[GEOAPShowEvalHandler evalData:ofType:createTime:]";
    _os_log_impl(&dword_1AB634000, v9, OS_LOG_TYPE_DEBUG, "%s", &v11, 0xCu);
  }

  (*(self->_visitorBlock + 2))();
  v10 = *MEMORY[0x1E69E9840];
}

@end