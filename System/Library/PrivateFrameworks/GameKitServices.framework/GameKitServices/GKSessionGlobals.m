@interface GKSessionGlobals
- (BOOL)hasActivePID:(unsigned int)a3;
- (GKSessionGlobals)init;
- (void)lock;
- (void)registerPID:(unsigned int)a3;
- (void)unlock;
- (void)unregisterPID:(unsigned int)a3;
@end

@implementation GKSessionGlobals

- (GKSessionGlobals)init
{
  v8 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = GKSessionGlobals;
  v2 = [(GKSessionGlobals *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_activePIDList = 0;
    v2->_activePIDListSize = 0;
    v2->_activePIDListCount = 0;
    v7.__sig = 0xAAAAAAAAAAAAAAAALL;
    *v7.__opaque = 0xAAAAAAAAAAAAAAAALL;
    pthread_mutexattr_init(&v7);
    pthread_mutexattr_settype(&v7, 2);
    pthread_mutex_init(&v3->_lock, &v7);
    pthread_mutexattr_destroy(&v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)registerPID:(unsigned int)a3
{
  activePIDListCount = self->_activePIDListCount;
  if (activePIDListCount == self->_activePIDListSize)
  {
    v6 = activePIDListCount + 5;
    activePIDList = malloc_type_realloc(self->_activePIDList, 4 * (activePIDListCount + 5), 0x100004052888210uLL);
    if (!activePIDList)
    {
      return;
    }

    self->_activePIDList = activePIDList;
    self->_activePIDListSize = v6;
    activePIDListCount = self->_activePIDListCount;
  }

  else
  {
    activePIDList = self->_activePIDList;
  }

  self->_activePIDListCount = activePIDListCount + 1;
  activePIDList[activePIDListCount] = a3;
}

- (void)unregisterPID:(unsigned int)a3
{
  activePIDListCount = self->_activePIDListCount;
  if (!activePIDListCount)
  {
    goto LABEL_7;
  }

  activePIDList = self->_activePIDList;
  v6 = self->_activePIDListCount;
  for (i = activePIDList; *i != a3; ++i)
  {
    if (!--v6)
    {
      return;
    }
  }

  v8 = activePIDListCount - 1;
  self->_activePIDListCount = v8;
  *i = activePIDList[v8];
  if (!v8)
  {
LABEL_7:
    free(self->_activePIDList);
    self->_activePIDList = 0;
    self->_activePIDListSize = 0;
  }
}

- (BOOL)hasActivePID:(unsigned int)a3
{
  activePIDListCount = self->_activePIDListCount;
  if (!activePIDListCount)
  {
    return 0;
  }

  activePIDList = self->_activePIDList;
  if (*activePIDList == a3)
  {
    return 1;
  }

  v6 = 1;
  do
  {
    v7 = v6;
    if (activePIDListCount == v6)
    {
      break;
    }

    v8 = activePIDList[v6++];
  }

  while (v8 != a3);
  return v7 < activePIDListCount;
}

- (void)lock
{
  OUTLINED_FUNCTION_6_2();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unlock
{
  OUTLINED_FUNCTION_6_2();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
  v6 = *MEMORY[0x277D85DE8];
}

@end