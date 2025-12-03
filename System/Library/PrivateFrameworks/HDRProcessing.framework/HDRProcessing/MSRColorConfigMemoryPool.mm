@interface MSRColorConfigMemoryPool
- (MSRColorConfigMemoryPool)initWithCapacity:(unsigned int)capacity Size:(unsigned int)size;
- (id)generateColorConfig:(id)config msrCU:(void *)u;
- (id)getAlloc;
- (void)dealloc;
- (void)dumpPoolState;
@end

@implementation MSRColorConfigMemoryPool

- (MSRColorConfigMemoryPool)initWithCapacity:(unsigned int)capacity Size:(unsigned int)size
{
  v9.receiver = self;
  v9.super_class = MSRColorConfigMemoryPool;
  v6 = [(MSRColorConfigMemoryPool *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_data = 0;
    v6->_size = size;
    v6->_capacity = capacity;
    *&v6->_allocated = 0;
    v6->_array = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6->_capacity];
  }

  return v7;
}

- (void)dealloc
{
  if (GetConfig() && (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0x16u, 0) == 1))
  {
    p_array = &self->_array;
  }

  else
  {
    p_array = &self->_data;
  }

  *p_array = 0;
  [(MSRColorConfigMemoryPool *)self dumpPoolState];
  v5.receiver = self;
  v5.super_class = MSRColorConfigMemoryPool;
  [(MSRColorConfigMemoryPool *)&v5 dealloc];
}

- (void)dumpPoolState
{
  if (GetConfig())
  {
    Config = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(Config, 0x17u, 0) == 1)
    {
      if (GetConfig())
      {
        v4 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v4, 0x16u, 0) == 1)
        {
          if (self->_array)
          {
            v5 = -1;
            do
            {
              ++v5;
            }

            while ([(NSMutableArray *)self->_array count]> v5);
            array = self->_array;

            [(NSMutableArray *)array count];
          }
        }
      }
    }
  }
}

- (id)getAlloc
{
  objc_sync_enter(self);
  if (GetConfig() && (v3 = GetConfig(), *HDRConfig::GetConfigEntryValue(v3, 0x16u, 0) == 1))
  {
    v4 = [(NSMutableArray *)self->_array count];
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = [(NSMutableArray *)self->_array objectAtIndexedSubscript:v5];
        if ([v6 retainCount] == 1)
        {
          break;
        }

        if (GetConfig())
        {
          Config = GetConfig();
          HDRConfig::GetConfigEntryValue(Config, 0x17u, 0);
        }

        if (v4 == ++v5)
        {
          goto LABEL_9;
        }
      }

      if (GetConfig())
      {
        v13 = GetConfig();
        HDRConfig::GetConfigEntryValue(v13, 0x17u, 0);
      }

      if (v4 - 1 != v5)
      {
        [(NSMutableArray *)self->_array addObject:v6];
        [(NSMutableArray *)self->_array removeObjectAtIndex:v5];
      }

      [(MSRColorConfigMemoryPool *)self dumpPoolState];
      v12 = v6;
    }

    else
    {
LABEL_9:
      if (v4 && self->_capacity + self->_released < self->_allocated + 1)
      {
        v8 = 0;
        while ([-[NSMutableArray objectAtIndexedSubscript:](self->_array objectAtIndexedSubscript:{v8), "retainCount"}] < 2)
        {
          if (v4 == ++v8)
          {
            goto LABEL_27;
          }
        }

        [(NSMutableArray *)self->_array removeObjectAtIndex:v8];
        ++self->_released;
        if (GetConfig())
        {
          v14 = GetConfig();
          HDRConfig::GetConfigEntryValue(v14, 0x17u, 0);
        }
      }

LABEL_27:
      v15 = [MEMORY[0x277CBEB28] dataWithLength:self->_size];
      [(NSMutableArray *)self->_array addObject:v15];
      ++self->_allocated;
      if (GetConfig())
      {
        v16 = GetConfig();
        HDRConfig::GetConfigEntryValue(v16, 0x17u, 0);
      }

      [(MSRColorConfigMemoryPool *)self dumpPoolState];
      v12 = v15;
    }
  }

  else
  {
    if (!self->_data)
    {
      v9 = [MEMORY[0x277CBEB28] dataWithLength:self->_size];
      self->_data = v9;
      v10 = v9;
    }

    if (GetConfig())
    {
      v11 = GetConfig();
      HDRConfig::GetConfigEntryValue(v11, 0x17u, 0);
    }

    [(MSRColorConfigMemoryPool *)self dumpPoolState];
    v12 = self->_data;
  }

  v17 = v12;
  objc_sync_exit(self);
  return v17;
}

- (id)generateColorConfig:(id)config msrCU:(void *)u
{
  if (GetConfig())
  {
    Config = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(Config, 0x16u, 0))
    {
      return config;
    }
  }

  v9 = MEMORY[0x277CBEA90];
  size = self->_size;

  return [v9 dataWithBytes:u length:size];
}

@end