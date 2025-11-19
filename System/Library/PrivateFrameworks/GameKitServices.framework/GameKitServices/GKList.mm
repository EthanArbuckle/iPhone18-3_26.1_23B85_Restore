@interface GKList
- (BOOL)hasID:(unsigned int)a3;
- (GKList)initWithSize:(unint64_t)a3;
- (id)allMatchingObjectsFromTable:(id)a3;
- (void)addID:(unsigned int)a3;
- (void)copyItemsInto:(id)a3;
- (void)dealloc;
- (void)lock;
- (void)print;
- (void)removeAllIDs;
- (void)removeID:(unsigned int)a3;
- (void)unlock;
@end

@implementation GKList

- (GKList)initWithSize:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = GKList;
  v4 = [(GKList *)&v9 init];
  if (v4)
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = 20;
    }

    v4->_count = 0;
    v4->_size = v5;
    v6 = malloc_type_calloc(v5, 4uLL, 0x100004052888210uLL);
    v4->_items = v6;
    if (v6)
    {
      v10.__sig = 0xAAAAAAAAAAAAAAAALL;
      *v10.__opaque = 0xAAAAAAAAAAAAAAAALL;
      pthread_mutexattr_init(&v10);
      pthread_mutexattr_settype(&v10, 2);
      pthread_mutex_init(&v4->_lock, &v10);
      pthread_mutexattr_destroy(&v10);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKList initWithSize:];
        }
      }

      v4 = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dealloc
{
  free(self->_items);
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = GKList;
  [(GKList *)&v3 dealloc];
}

- (BOOL)hasID:(unsigned int)a3
{
  [(GKList *)self lock];
  count = self->_count;
  if (count)
  {
    items = self->_items;
    if (*items == a3)
    {
      v7 = 1;
    }

    else
    {
      v8 = 1;
      do
      {
        v9 = v8;
        if (count == v8)
        {
          break;
        }

        v10 = items[v8++];
      }

      while (v10 != a3);
      v7 = v9 < count;
    }
  }

  else
  {
    v7 = 0;
  }

  [(GKList *)self unlock];
  return v7;
}

- (void)addID:(unsigned int)a3
{
  v28 = *MEMORY[0x277D85DE8];
  [(GKList *)self lock];
  count = self->_count;
  if (count)
  {
    items = self->_items;
    v7 = self->_count;
    do
    {
      v8 = *items++;
      if (v8 == a3)
      {
        goto LABEL_10;
      }
    }

    while (--v7);
  }

  if (count != self->_size)
  {
    v10 = self->_items;
    goto LABEL_9;
  }

  v9 = count + 20;
  v10 = malloc_type_realloc(self->_items, 4 * (count + 20), 0x100004052888210uLL);
  if (v10)
  {
    self->_items = v10;
    self->_size = v9;
    count = self->_count;
LABEL_9:
    self->_count = count + 1;
    v10[count] = a3;
LABEL_10:
    v11 = *MEMORY[0x277D85DE8];

    [(GKList *)self unlock];
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v15 = *__error();
      v16 = 136316418;
      v17 = v12;
      v18 = 2080;
      v19 = "[GKList addID:]";
      v20 = 1024;
      v21 = 281;
      v22 = 2048;
      v23 = self;
      v24 = 1024;
      v25 = a3;
      v26 = 1024;
      v27 = v15;
      _os_log_error_impl(&dword_24E50C000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d GKList[%p] addID:[%d] realloc error %d", &v16, 0x32u);
    }
  }

  [(GKList *)self unlock];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyItemsInto:(id)a3
{
  [(GKList *)self lock];
  if (self->_count)
  {
    v5 = 0;
    do
    {
      [a3 addID:self->_items[v5++]];
    }

    while (v5 < self->_count);
  }

  [(GKList *)self unlock];
}

- (void)removeID:(unsigned int)a3
{
  [(GKList *)self lock];
  count = self->_count;
  if (count)
  {
    v6 = 0;
    items = self->_items;
    do
    {
      if (items[v6] == a3)
      {
        self->_count = --count;
        if (v6 < count)
        {
          items[v6] = items[count];
        }
      }

      ++v6;
    }

    while (v6 < count);
  }

  [(GKList *)self unlock];
}

- (void)removeAllIDs
{
  [(GKList *)self lock];
  self->_count = 0;

  [(GKList *)self unlock];
}

- (id)allMatchingObjectsFromTable:(id)a3
{
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_count];
  if (v5 && self->_count)
  {
    v6 = 0;
    do
    {
      v7 = [a3 objectForKey:self->_items[v6]];
      if (v7)
      {
        [v5 addObject:v7];
      }

      ++v6;
    }

    while (v6 < self->_count);
  }

  return v5;
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

- (void)print
{
  [(GKList *)self lock];
  v3 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "GKList[%p] (%lu/%lu): {\n", self, self->_count, self->_size);
  if (self->_count)
  {
    v4 = 0;
    do
    {
      fprintf(*v3, "\t%d\n", self->_items[v4++]);
    }

    while (v4 < self->_count);
  }

  fwrite("}\n", 2uLL, 1uLL, *v3);

  [(GKList *)self unlock];
}

- (void)initWithSize:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x277D85DE8];
}

@end