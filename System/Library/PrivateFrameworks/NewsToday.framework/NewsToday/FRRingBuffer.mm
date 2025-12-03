@interface FRRingBuffer
- (FRRingBuffer)initWithCapacity:(unint64_t)capacity;
- (FRRingBuffer)initWithCapacity:(unint64_t)capacity dictionary:(id)dictionary;
- (NSDictionary)dictionary;
- (NSMutableArray)values;
- (id)description;
- (void)insertValue:(double)value;
@end

@implementation FRRingBuffer

- (FRRingBuffer)initWithCapacity:(unint64_t)capacity
{
  v6.receiver = self;
  v6.super_class = FRRingBuffer;
  v4 = [(FRRingBuffer *)&v6 init];
  if (v4)
  {
    if (!capacity && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [FRRingBuffer initWithCapacity:];
    }

    [(FRRingBuffer *)v4 setCapacity:capacity];
  }

  return v4;
}

- (FRRingBuffer)initWithCapacity:(unint64_t)capacity dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = [(FRRingBuffer *)self initWithCapacity:capacity];
  v8 = v7;
  if (dictionaryCopy && v7)
  {
    objc_opt_class();
    v9 = [dictionaryCopy objectForKeyedSubscript:@"Values"];
    v10 = FCDynamicCast();

    if (!v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [FRRingBuffer initWithCapacity:dictionary:];
    }

    v11 = [v10 mutableCopy];
    [(FRRingBuffer *)v8 setValues:v11];

    objc_opt_class();
    v12 = [dictionaryCopy objectForKeyedSubscript:@"Position"];
    v13 = FCDynamicCast();

    if (!v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [FRRingBuffer initWithCapacity:dictionary:];
    }

    -[FRRingBuffer setPosition:](v8, "setPosition:", [v13 integerValue]);
    objc_opt_class();
    v14 = [dictionaryCopy objectForKeyedSubscript:@"Min"];
    v15 = FCDynamicCast();

    if (!v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [FRRingBuffer initWithCapacity:dictionary:];
    }

    [v15 doubleValue];
    [(FRRingBuffer *)v8 setMin:?];
    objc_opt_class();
    v16 = [dictionaryCopy objectForKeyedSubscript:@"Max"];
    v17 = FCDynamicCast();

    if (!v17 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [FRRingBuffer initWithCapacity:dictionary:];
    }

    [v17 doubleValue];
    [(FRRingBuffer *)v8 setMax:?];
  }

  return v8;
}

- (NSMutableArray)values
{
  values = self->_values;
  if (!values)
  {
    v4 = objc_opt_new();
    [(FRRingBuffer *)self setValues:v4];

    if ([(FRRingBuffer *)self capacity])
    {
      v5 = 0;
      do
      {
        [(NSMutableArray *)self->_values setObject:&unk_286D9EFF0 atIndexedSubscript:v5++];
      }

      while ([(FRRingBuffer *)self capacity]> v5);
    }

    [(FRRingBuffer *)self setMin:1.79769313e308];
    [(FRRingBuffer *)self setMax:-1.79769313e308];
    [(FRRingBuffer *)self setPosition:0];
    values = self->_values;
  }

  return values;
}

- (void)insertValue:(double)value
{
  v32 = *MEMORY[0x277D85DE8];
  values = [(FRRingBuffer *)self values];
  v6 = [values objectAtIndexedSubscript:{-[FRRingBuffer position](self, "position")}];
  [v6 doubleValue];
  v8 = v7;

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  values2 = [(FRRingBuffer *)self values];
  [values2 setObject:v9 atIndexedSubscript:{-[FRRingBuffer position](self, "position")}];

  v11 = [(FRRingBuffer *)self position]+ 1;
  capacity = [(FRRingBuffer *)self capacity];
  if (capacity <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = capacity;
  }

  [(FRRingBuffer *)self setPosition:v11 % v13];
  [(FRRingBuffer *)self min];
  if (v8 != -1.79769313e308)
  {
    if (v8 == v14 || ([(FRRingBuffer *)self max], v8 == v17))
    {
      *&self->_min = xmmword_25BF738C0;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      values3 = [(FRRingBuffer *)self values];
      v19 = [values3 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v28;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v28 != v21)
            {
              objc_enumerationMutation(values3);
            }

            [*(*(&v27 + 1) + 8 * i) doubleValue];
            v24 = fmin(self->_min, v23);
            v25 = fmax(self->_max, v23);
            self->_min = v24;
            self->_max = v25;
          }

          v20 = [values3 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v20);
      }

      goto LABEL_21;
    }

    [(FRRingBuffer *)self min];
  }

  if (v14 > value)
  {
    [(FRRingBuffer *)self setMin:value];
  }

  [(FRRingBuffer *)self max];
  if (v15 >= value)
  {
LABEL_21:
    v26 = *MEMORY[0x277D85DE8];
    return;
  }

  v16 = *MEMORY[0x277D85DE8];

  [(FRRingBuffer *)self setMax:value];
}

- (NSDictionary)dictionary
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"Values";
  values = [(FRRingBuffer *)self values];
  v13[0] = values;
  v12[1] = @"Position";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[FRRingBuffer position](self, "position")}];
  v13[1] = v4;
  v12[2] = @"Min";
  v5 = MEMORY[0x277CCABB0];
  [(FRRingBuffer *)self min];
  v6 = [v5 numberWithDouble:?];
  v13[2] = v6;
  v12[3] = @"Max";
  v7 = MEMORY[0x277CCABB0];
  [(FRRingBuffer *)self max];
  v8 = [v7 numberWithDouble:?];
  v13[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  values = [(FRRingBuffer *)self values];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[FRRingBuffer position](self, "position")}];
  v6 = MEMORY[0x277CCABB0];
  [(FRRingBuffer *)self min];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x277CCABB0];
  [(FRRingBuffer *)self max];
  v9 = [v8 numberWithDouble:?];
  v10 = [v3 stringWithFormat:@"Ring Buffer with Values : %@\nPosition : %@\nMin : %@\nMax : %@\n", values, v5, v7, v9];

  return v10;
}

- (void)initWithCapacity:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Cannot be zero capacity"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithCapacity:dictionary:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Initializing FRRingBuffer with a dictionay with no values"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithCapacity:dictionary:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Initializing FRRingBuffer with a dictionay with no position"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithCapacity:dictionary:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Initializing FRRingBuffer with a dictionay with no min"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithCapacity:dictionary:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Initializing FRRingBuffer with a dictionay with no max"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end