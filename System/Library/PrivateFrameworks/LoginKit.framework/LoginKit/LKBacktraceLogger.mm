@interface LKBacktraceLogger
- (BOOL)_copyFrameInformation:(unint64_t)a3 destination:(unint64_t)a4 size:(unint64_t)a5;
- (__darwin_arm_thread_state64)_getThreadStateForThread:(SEL)a3;
- (id)getBacktraceFromTrackedThread;
- (void)_symbolicateBuffer:(const unint64_t *)a3 symbolsBuffer:(dl_info *)a4 count:(int)a5;
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
  v3 = [(LKBacktraceLogger *)self trackedThread];

  return [(LKBacktraceLogger *)self _getBacktraceFromThread:v3];
}

- (__darwin_arm_thread_state64)_getThreadStateForThread:(SEL)a3
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

- (BOOL)_copyFrameInformation:(unint64_t)a3 destination:(unint64_t)a4 size:(unint64_t)a5
{
  outsize = 0;
  v6 = vm_read_overwrite(*MEMORY[0x277D85F48], a3, a5, a4, &outsize);
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [LKBacktraceLogger _copyFrameInformation:a3 destination:? size:?];
  }

  return v6 == 0;
}

- (void)_symbolicateBuffer:(const unint64_t *)a3 symbolsBuffer:(dl_info *)a4 count:(int)a5
{
  if (a5 >= 1)
  {
    v7 = 0;
    v8 = 8 * a5;
    v9 = a4;
    do
    {
      if (v7)
      {
        v10 = ((a3[v7 / 8] & 0xFFFFFFFFFFFFFFFCLL) - 1);
        v11 = v9;
      }

      else
      {
        v10 = *a3;
        v11 = a4;
      }

      dladdr(v10, v11);
      v7 += 8;
      ++v9;
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