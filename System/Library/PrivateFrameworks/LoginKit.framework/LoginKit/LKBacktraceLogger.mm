@interface LKBacktraceLogger
- (BOOL)_copyFrameInformation:(unint64_t)information destination:(unint64_t)destination size:(unint64_t)size;
- (__darwin_arm_thread_state64)_getThreadStateForThread:(SEL)thread;
- (id)getBacktraceFromTrackedThread;
- (void)_symbolicateBuffer:(const unint64_t *)buffer symbolsBuffer:(dl_info *)symbolsBuffer count:(int)count;
- (void)trackCurrentThread;
@end

@implementation LKBacktraceLogger

- (void)trackCurrentThread
{
  v3 = MEMORY[0x259C5CE20](self, a2);

  [(LKBacktraceLogger *)self setTrackedThread:v3];
}

- (id)getBacktraceFromTrackedThread
{
  trackedThread = [(LKBacktraceLogger *)self trackedThread];

  return [(LKBacktraceLogger *)self _getBacktraceFromThread:trackedThread];
}

- (__darwin_arm_thread_state64)_getThreadStateForThread:(SEL)thread
{
  *&retstr->__lr = 0u;
  *&retstr->__pc = 0u;
  *&retstr->__x[26] = 0u;
  *&retstr->__x[28] = 0u;
  *&retstr->__x[22] = 0u;
  *&retstr->__x[24] = 0u;
  *&retstr->__x[18] = 0u;
  *&retstr->__x[20] = 0u;
  *&retstr->__x[14] = 0u;
  *&retstr->__x[16] = 0u;
  *&retstr->__x[10] = 0u;
  *&retstr->__x[12] = 0u;
  *&retstr->__x[6] = 0u;
  *&retstr->__x[8] = 0u;
  *&retstr->__x[2] = 0u;
  *&retstr->__x[4] = 0u;
  *retstr->__x = 0u;
  old_stateCnt = 68;
  result = thread_get_state(a4, 6, retstr, &old_stateCnt);
  if (result)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (result)
    {
      [LKBacktraceLogger _getThreadStateForThread:];
    }
  }

  return result;
}

- (BOOL)_copyFrameInformation:(unint64_t)information destination:(unint64_t)destination size:(unint64_t)size
{
  outsize = 0;
  v6 = vm_read_overwrite(*MEMORY[0x277D85F48], information, size, destination, &outsize);
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [LKBacktraceLogger _copyFrameInformation:information destination:? size:?];
  }

  return v6 == 0;
}

- (void)_symbolicateBuffer:(const unint64_t *)buffer symbolsBuffer:(dl_info *)symbolsBuffer count:(int)count
{
  if (count >= 1)
  {
    v7 = 0;
    v8 = 8 * count;
    symbolsBufferCopy = symbolsBuffer;
    do
    {
      if (v7)
      {
        v10 = ((buffer[v7 / 8] & 0xFFFFFFFFFFFFFFFCLL) - 1);
        symbolsBufferCopy2 = symbolsBufferCopy;
      }

      else
      {
        v10 = *buffer;
        symbolsBufferCopy2 = symbolsBuffer;
      }

      dladdr(v10, symbolsBufferCopy2);
      v7 += 8;
      ++symbolsBufferCopy;
    }

    while (v8 != v7);
  }
}

- (void)_getBacktraceFromThread:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "link register: 0x%lx", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_getBacktraceFromThread:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "frame pointer: 0x%lx", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_copyFrameInformation:(uint64_t)a1 destination:size:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to copy frame information from 0x%lx", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end