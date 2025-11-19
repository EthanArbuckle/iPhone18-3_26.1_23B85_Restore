@interface GKTable
- (GKTable)initWithSize:(unint64_t)a3;
- (id)allObjects;
- (id)objectForKey:(unsigned int)a3;
- (void)dealloc;
- (void)lock;
- (void)makeObjectsPerformSelector:(SEL)a3;
- (void)makeObjectsPerformSelector:(SEL)a3 withObject:(id)a4;
- (void)print;
- (void)removeAllObjects;
- (void)removeObjectForKey:(unsigned int)a3;
- (void)setObject:(id)a3 forKey:(unsigned int)a4;
- (void)touchObject:(id)a3;
- (void)touchObjectForKey:(unsigned int)a3;
- (void)unlock;
@end

@implementation GKTable

- (GKTable)initWithSize:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = GKTable;
  v4 = [(GKTable *)&v9 init];
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
    v6 = malloc_type_calloc(v5, 0x20uLL, 0x10800406DC01D99uLL);
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
          [GKTable initWithSize:];
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
  [(GKTable *)self removeAllObjects];
  free(self->_items);
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = GKTable;
  [(GKTable *)&v3 dealloc];
}

- (id)objectForKey:(unsigned int)a3
{
  [(GKTable *)self lock];
  count = self->_count;
  if (count)
  {
    v6 = 0;
    while (self->_items[v6].var0 != a3)
    {
      ++v6;
      if (!--count)
      {
        goto LABEL_5;
      }
    }

    v8 = micro();
    v9 = &self->_items[v6];
    v9->var3 = v8;
    v7 = v9->var1;
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  [(GKTable *)self unlock];
  return v7;
}

- (id)allObjects
{
  [(GKTable *)self lock];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_count];
  if (v3 && self->_count)
  {
    v4 = 0;
    v5 = 8;
    do
    {
      [v3 addObject:*(&self->_items->var0 + v5)];
      ++v4;
      v5 += 32;
    }

    while (v4 < self->_count);
  }

  [(GKTable *)self unlock];

  return v3;
}

- (void)setObject:(id)a3 forKey:(unsigned int)a4
{
  v40 = *MEMORY[0x277D85DE8];
  [(GKTable *)self lock];
  count = self->_count;
  if (!count)
  {
    LODWORD(v10) = 0;
LABEL_7:
    if (count == self->_size)
    {
      v11 = count + 20;
      items = malloc_type_realloc(self->_items, 32 * (count + 20), 0x10800406DC01D99uLL);
      if (!items)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            v23 = *__error();
            v24 = 136316674;
            v25 = v21;
            v26 = 2080;
            v27 = "[GKTable setObject:forKey:]";
            v28 = 1024;
            v29 = 482;
            v30 = 2048;
            v31 = self;
            v32 = 2112;
            v33 = a3;
            v34 = 1024;
            v35 = a4;
            v36 = 1024;
            LODWORD(v37) = v23;
            _os_log_error_impl(&dword_24E50C000, v22, OS_LOG_TYPE_ERROR, " [%s] %s:%d GKTable[%p] setObject:[%@]forKey:[%d] realloc error %d", &v24, 0x3Cu);
          }
        }

        goto LABEL_20;
      }

      self->_items = items;
      self->_size = v11;
      count = self->_count;
    }

    else
    {
      items = self->_items;
    }

    items[count].var0 = a4;
    *&self->_items[self->_count].var2 = vdupq_lane_s64(COERCE__INT64(micro()), 0);
    v13 = a3;
    v14 = self->_count;
    self->_items[v14].var1 = v13;
    self->_count = v14 + 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136316674;
        v25 = v15;
        v26 = 2080;
        v27 = "[GKTable setObject:forKey:]";
        v28 = 1024;
        v29 = 493;
        v30 = 2048;
        v31 = self;
        v32 = 2112;
        v33 = a3;
        v34 = 1024;
        v35 = a4;
        v36 = 1024;
        LODWORD(v37) = v10;
        _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKTable[%p] setObject:[%@] forKey:[%d] @%d", &v24, 0x3Cu);
      }
    }

    goto LABEL_20;
  }

  v8 = 0;
  v9 = 8;
  while (*(self->_items + v9 - 8) != a4)
  {
    ++v8;
    v9 += 32;
    if (count == v8)
    {
      v10 = self->_count;
      goto LABEL_7;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(&self->_items->var0 + v9);
      v24 = 136316930;
      v25 = v17;
      v26 = 2080;
      v27 = "[GKTable setObject:forKey:]";
      v28 = 1024;
      v29 = 466;
      v30 = 2048;
      v31 = self;
      v32 = 2112;
      v33 = a3;
      v34 = 1024;
      v35 = a4;
      v36 = 2112;
      v37 = v19;
      v38 = 1024;
      v39 = v8;
      _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKTable[%p] setObject:[%@] forKey:[%d] replacing [%@] @%d", &v24, 0x46u);
    }
  }

  if ([*(&self->_items->var0 + v9) conformsToProtocol:&unk_28619F958])
  {
    [*(&self->_items->var0 + v9) cleanupForGKTable:self];
  }

  *(&self->_items->var1 + v9) = vdupq_lane_s64(COERCE__INT64(micro()), 0);
  *(&self->_items->var0 + v9) = a3;
LABEL_20:
  [(GKTable *)self unlock];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)touchObject:(id)a3
{
  [(GKTable *)self lock];
  if (self->_count)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if ([self->_items[v5].var1 isEqual:a3])
      {
        *&self->_items[v5].var2 = vdupq_lane_s64(COERCE__INT64(micro()), 0);
      }

      ++v6;
      ++v5;
    }

    while (v6 < self->_count);
  }

  [(GKTable *)self unlock];
}

- (void)touchObjectForKey:(unsigned int)a3
{
  [(GKTable *)self lock];
  count = self->_count;
  if (count)
  {
    v6 = 0;
    v7 = 0;
    items = self->_items;
    do
    {
      if (items[v6].var0 == a3)
      {
        *&v9 = micro();
        items = self->_items;
        count = self->_count;
        *&items[v6].var2 = vdupq_lane_s64(v9, 0);
      }

      ++v7;
      ++v6;
    }

    while (v7 < count);
  }

  [(GKTable *)self unlock];
}

- (void)removeObjectForKey:(unsigned int)a3
{
  v33 = *MEMORY[0x277D85DE8];
  [(GKTable *)self lock];
  count = self->_count;
  if (count)
  {
    v7 = 0;
    v8 = 0;
    v9 = MEMORY[0x277CE5818];
    *&v5 = 136316674;
    v18 = v5;
    do
    {
      if (self->_items[v7].var0 == a3)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            var1 = self->_items[v7].var1;
            *buf = v18;
            v20 = v10;
            v21 = 2080;
            v22 = "[GKTable removeObjectForKey:]";
            v23 = 1024;
            v24 = 524;
            v25 = 2048;
            v26 = self;
            v27 = 2112;
            v28 = var1;
            v29 = 1024;
            v30 = a3;
            v31 = 1024;
            v32 = v8;
            _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKTable[%p] removeObject:[%@] forKey:[%d] @%d", buf, 0x3Cu);
          }
        }

        if ([self->_items[v7].var1 conformsToProtocol:{&unk_28619F958, v18}])
        {
          [self->_items[v7].var1 cleanupForGKTable:self];
        }

        count = self->_count - 1;
        self->_count = count;
        if (v8 < count)
        {
          items = self->_items;
          v14 = &items[v7];
          v15 = &items[count];
          v16 = *&v15->var2;
          *&v14->var0 = *&v15->var0;
          *&v14->var2 = v16;
          count = self->_count;
        }
      }

      ++v8;
      ++v7;
    }

    while (v8 < count);
  }

  [(GKTable *)self unlock];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeAllObjects
{
  [(GKTable *)self lock];
  if (self->_count)
  {
    v3 = 0;
    v4 = 8;
    do
    {
      if ([*(&self->_items->var0 + v4) conformsToProtocol:&unk_28619F958])
      {
        [*(&self->_items->var0 + v4) cleanupForGKTable:self];
      }

      ++v3;
      v4 += 32;
    }

    while (v3 < self->_count);
  }

  self->_count = 0;

  [(GKTable *)self unlock];
}

- (void)makeObjectsPerformSelector:(SEL)a3
{
  [(GKTable *)self lock];
  if (self->_count)
  {
    v5 = 0;
    v6 = 8;
    do
    {
      v7 = *(&self->_items->var0 + v6);
      if (objc_opt_respondsToSelector())
      {
        [*(&self->_items->var0 + v6) performSelector:a3];
      }

      ++v5;
      v6 += 32;
    }

    while (v5 < self->_count);
  }

  [(GKTable *)self unlock];
}

- (void)makeObjectsPerformSelector:(SEL)a3 withObject:(id)a4
{
  [(GKTable *)self lock];
  if (self->_count)
  {
    v7 = 0;
    v8 = 8;
    do
    {
      v9 = *(&self->_items->var0 + v8);
      if (objc_opt_respondsToSelector())
      {
        [*(&self->_items->var0 + v8) performSelector:a3 withObject:a4];
      }

      ++v7;
      v8 += 32;
    }

    while (v7 < self->_count);
  }

  [(GKTable *)self unlock];
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
  v3 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v4 = micro();
  [(GKTable *)self lock];
  v5 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "GKTable[%x] (%lu/%lu): {\n", self, self->_count, self->_size);
  if (self->_count)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      fprintf(*v5, "\t%d => [%s] (Q:-%.3lf, U:-%.3lf)\n", self->_items[v6].var0, [objc_msgSend(self->_items[v6].var1 "description")], v4 - self->_items[v6].var3, v4 - self->_items[v6].var2);
      ++v7;
      ++v6;
    }

    while (v7 < self->_count);
  }

  fwrite("}\n", 2uLL, 1uLL, *v5);
  [(GKTable *)self unlock];

  [v3 drain];
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