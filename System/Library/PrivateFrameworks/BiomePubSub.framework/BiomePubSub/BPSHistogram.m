@interface BPSHistogram
- (BOOL)_correctKeyType:(id)a3;
- (BPSHistogram)init;
- (id)allKeysAtLevel:(unint64_t)a3;
- (id)scoreForKey:(id)a3;
- (void)_enumerateWithBlock:(id)a3 node:(id)a4 currentKey:(id)a5 stop:(BOOL *)a6;
- (void)_setKeyTypeFromKey:(id)a3;
- (void)addScore:(id)a3 forKey:(id)a4;
- (void)enumerateKeysAndScoresUsingBlock:(id)a3;
- (void)removeAllScores;
- (void)removeScoreForKey:(id)a3;
@end

@implementation BPSHistogram

- (BPSHistogram)init
{
  v7.receiver = self;
  v7.super_class = BPSHistogram;
  v2 = [(BPSHistogram *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    backingDictionary = v2->_backingDictionary;
    v2->_backingDictionary = v3;

    keyType = v2->_keyType;
    v2->_keyType = 0;
  }

  return v2;
}

- (void)_setKeyTypeFromKey:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(BPSHistogram *)self removeAllScores];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        [v5 addObject:{objc_opt_class(), v15}];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];
  keyType = self->_keyType;
  self->_keyType = v12;

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)_correctKeyType:(id)a3
{
  v4 = a3;
  keyType = self->_keyType;
  if (keyType && (v6 = -[NSArray count](keyType, "count"), v6 == [v4 count]))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__BPSHistogram__correctKeyType___block_invoke;
    v9[3] = &unk_1E8320F00;
    v9[4] = self;
    v9[5] = &v10;
    [v4 enumerateObjectsUsingBlock:v9];
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __32__BPSHistogram__correctKeyType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_opt_class() isEqual:{objc_msgSend(*(*(a1 + 32) + 16), "objectAtIndexedSubscript:", a3)}];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (id)scoreForKey:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4 copyItems:1];
  v6 = &unk_1F4870148;
  if (self->_keyType)
  {
    if ([(BPSHistogram *)self _correctKeyType:v5])
    {
      v7 = self->_backingDictionary;
      if ([v5 count] == 1)
      {
        v8 = v7;
LABEL_11:
        v12 = [v5 lastObject];
        v13 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v12];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = &unk_1F4870148;
        }

        v6 = v15;
      }

      else
      {
        v10 = 0;
        while (1)
        {
          v11 = [v5 objectAtIndexedSubscript:v10];
          v8 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:v11];

          if (!v8)
          {
            break;
          }

          ++v10;
          v7 = v8;
          if (v10 >= [v5 count] - 1)
          {
            goto LABEL_11;
          }
        }

        v6 = &unk_1F4870148;
      }
    }

    else
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(BPSHistogram *)v5 scoreForKey:?];
      }

      v6 = &unk_1F4870148;
    }
  }

  return v6;
}

- (void)addScore:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  p_keyType = &self->_keyType;
  keyType = self->_keyType;
  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v7 copyItems:1];
  if (!keyType)
  {
    [(BPSHistogram *)self _setKeyTypeFromKey:v10];
  }

  if ([(BPSHistogram *)self _correctKeyType:v10])
  {
    v11 = self->_backingDictionary;
    if ([v10 count] == 1)
    {
      v12 = v11;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = [v10 objectAtIndexedSubscript:v14];
        v16 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v15];

        if (!v16)
        {
          v17 = [MEMORY[0x1E695DF90] dictionary];
          v18 = [v10 objectAtIndexedSubscript:v14];
          [(NSMutableDictionary *)v11 setObject:v17 forKeyedSubscript:v18];
        }

        v19 = [v10 objectAtIndexedSubscript:v14];
        v12 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v19];

        ++v14;
        v11 = v12;
      }

      while (v14 < [v10 count] - 1);
    }

    v20 = [v10 lastObject];
    v21 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v20];
    [v21 floatValue];
    v23 = v22;

    [v6 floatValue];
    *&v24 = v23 + *&v24;
    if (*&v24 < 0.0)
    {
      *&v24 = 0.0;
    }

    v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
    v26 = [v10 lastObject];
    [(NSMutableDictionary *)v12 setObject:v25 forKeyedSubscript:v26];
  }

  else
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [(BPSHistogram *)v10 scoreForKey:?];
    }
  }
}

- (void)removeScoreForKey:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4 copyItems:1];
  p_keyType = &self->_keyType;
  if (self->_keyType)
  {
    if ([(BPSHistogram *)self _correctKeyType:v5])
    {
      v7 = self->_backingDictionary;
      v8 = [v5 count];
      v9 = MEMORY[0x1E695DF70];
      if (v8 >= 2)
      {
        v10 = [v5 count] - 2;
      }

      else
      {
        v10 = 0;
      }

      v12 = [v9 arrayWithCapacity:v10];
      if ([v5 count] == 1)
      {
        v13 = v7;
LABEL_14:
        v18 = [v5 lastObject];
        [(NSMutableDictionary *)v13 removeObjectForKey:v18];

        v19 = [v12 count];
        if (v19 - 1 >= 0)
        {
          v20 = v19;
          do
          {
            v21 = [v12 objectAtIndexedSubscript:--v20];
            v22 = [v5 objectAtIndexedSubscript:v20];
            v23 = [v21 objectForKeyedSubscript:v22];

            if (![v23 count])
            {
              v24 = [v12 objectAtIndexedSubscript:v20];
              v25 = [v5 objectAtIndexedSubscript:v20];
              [v24 removeObjectForKey:v25];
            }
          }

          while (v20 > 0);
        }

        v7 = v13;
      }

      else
      {
        v14 = 0;
        while (1)
        {
          [v12 addObject:v7];
          v15 = [v5 objectAtIndexedSubscript:v14];
          v16 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:v15];

          if (!v16)
          {
            break;
          }

          v17 = [v5 objectAtIndexedSubscript:v14];
          v13 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:v17];

          ++v14;
          v7 = v13;
          if (v14 >= [v5 count] - 1)
          {
            goto LABEL_14;
          }
        }
      }
    }

    else
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [(BPSHistogram *)v5 scoreForKey:?];
      }
    }
  }
}

- (id)allKeysAtLevel:(unint64_t)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v31 = [MEMORY[0x1E695DFA8] set];
  keyType = self->_keyType;
  if (keyType && [(NSArray *)keyType count]> a3)
  {
    v30 = a3;
    v33 = [MEMORY[0x1E695DF70] array];
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = [(NSMutableDictionary *)self->_backingDictionary allKeys];
    v9 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          v14 = [(NSMutableDictionary *)self->_backingDictionary objectForKeyedSubscript:v13];
          [v33 addObject:v14];

          [v6 addObject:v13];
          [v7 addObject:&unk_1F4870148];
        }

        v10 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v10);
    }

    v15 = v33;
    v16 = v30;
    while ([v15 count])
    {
      v17 = [v15 firstObject];
      v18 = [v6 firstObject];
      v19 = [v7 firstObject];
      [v15 removeObjectAtIndex:0];
      [v6 removeObjectAtIndex:0];
      [v7 removeObjectAtIndex:0];
      if ([v19 unsignedIntegerValue] >= v16)
      {
        [v31 addObject:v18];
      }

      else
      {
        v32 = v18;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v20 = [v17 allKeys];
        v21 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v35;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v35 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v34 + 1) + 8 * j);
              v26 = [v17 objectForKeyedSubscript:v25];
              [v33 addObject:v26];

              [v6 addObject:v25];
              v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "unsignedIntegerValue") + 1}];
              [v7 addObject:v27];
            }

            v22 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v22);
        }

        v16 = v30;
        v18 = v32;
        v15 = v33;
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];

  return v31;
}

- (void)removeAllScores
{
  [(NSMutableDictionary *)self->_backingDictionary removeAllObjects];
  keyType = self->_keyType;
  self->_keyType = 0;
}

- (void)enumerateKeysAndScoresUsingBlock:(id)a3
{
  if (self->_keyType)
  {
    v8 = 0;
    backingDictionary = self->_backingDictionary;
    v5 = MEMORY[0x1E695DF70];
    v6 = a3;
    v7 = [v5 array];
    [(BPSHistogram *)self _enumerateWithBlock:v6 node:backingDictionary currentKey:v7 stop:&v8];
  }
}

- (void)_enumerateWithBlock:(id)a3 node:(id)a4 currentKey:(id)a5 stop:(BOOL *)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = v11;
  obj = [v11 allKeys];
  v13 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v25 != v15)
      {
        objc_enumerationMutation(obj);
      }

      if (*a6)
      {
        break;
      }

      v17 = *(*(&v24 + 1) + 8 * v16);
      [v12 addObject:v17];
      v18 = [v12 count];
      v19 = [(NSArray *)self->_keyType count];
      v20 = [v23 objectForKeyedSubscript:v17];
      if (v18 == v19)
      {
        v10[2](v10, v12, v20, a6);
      }

      else
      {
        [(BPSHistogram *)self _enumerateWithBlock:v10 node:v20 currentKey:v12 stop:a6];
      }

      [v12 removeLastObject];
      if (v14 == ++v16)
      {
        v14 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)scoreForKey:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_1C871B000, v3, v4, "Invalid key:%@, expected a key of type: %@");
  v5 = *MEMORY[0x1E69E9840];
}

@end