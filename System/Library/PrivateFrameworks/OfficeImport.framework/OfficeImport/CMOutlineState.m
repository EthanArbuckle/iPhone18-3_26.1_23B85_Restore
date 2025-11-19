@interface CMOutlineState
- (CMOutlineState)init;
- (CMOutlineState)initWithListDefinition:(id)a3;
- (id)levelDescriptionAtIndex:(unsigned __int8)a3;
- (unint64_t)counterAtLevel:(unsigned __int8)a3;
- (unint64_t)levelCount;
- (void)increaseCounterAtLevel:(unsigned __int8)a3;
- (void)reset;
- (void)setCounterTo:(unint64_t)a3 atLevel:(unsigned __int8)a4;
@end

@implementation CMOutlineState

- (CMOutlineState)init
{
  v2 = [(CMOutlineState *)self initWithListDefinition:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)reset
{
  [(NSMutableArray *)self->_counters removeAllObjects];
  if ([(CMOutlineState *)self levelCount])
  {
    v3 = 0;
    do
    {
      counters = self->_counters;
      listDefinition = self->_listDefinition;
      if (listDefinition)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = [(WDListDefinition *)listDefinition levelAt:v3];
        v8 = [v6 numberWithLong:{objc_msgSend(v7, "startNumber") - 1}];
        [(NSMutableArray *)counters addObject:v8];
      }

      else
      {
        [(NSMutableArray *)self->_counters addObject:&unk_286F6DD70];
      }

      ++v3;
    }

    while ([(CMOutlineState *)self levelCount]> v3);
  }
}

- (CMOutlineState)initWithListDefinition:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CMOutlineState;
  v6 = [(CMOutlineState *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listDefinition, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    counters = v7->_counters;
    v7->_counters = v8;

    [(CMOutlineState *)v7 reset];
  }

  return v7;
}

- (unint64_t)levelCount
{
  listDefinition = self->_listDefinition;
  if (listDefinition)
  {
    return [(WDListDefinition *)listDefinition levelCount];
  }

  else
  {
    return 10;
  }
}

- (void)setCounterTo:(unint64_t)a3 atLevel:(unsigned __int8)a4
{
  if ([(CMOutlineState *)self levelCount]> a4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
  }
}

- (unint64_t)counterAtLevel:(unsigned __int8)a3
{
  v3 = a3;
  if ([(CMOutlineState *)self levelCount]<= a3)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_counters objectAtIndexedSubscript:v3];
  v6 = [v5 unsignedIntegerValue];

  return v6;
}

- (id)levelDescriptionAtIndex:(unsigned __int8)a3
{
  v3 = a3;
  v5 = [(WDList *)self->_currentList levelOverrideForLevel:?];
  if ([v5 isListLevelOverridden])
  {
    [v5 listLevel];
  }

  else
  {
    [(WDListDefinition *)self->_listDefinition levelAt:v3];
  }
  v6 = ;

  return v6;
}

- (void)increaseCounterAtLevel:(unsigned __int8)a3
{
  v3 = a3;
  if ([(CMOutlineState *)self levelCount]> a3 && [(CMOutlineState *)self levelCount])
  {
    for (i = 0; [(CMOutlineState *)self levelCount]> i; ++i)
    {
      v6 = [(CMOutlineState *)self levelDescriptionAtIndex:i];
      if (i >= v3 || (-[NSMutableArray objectAtIndexedSubscript:](self->_counters, "objectAtIndexedSubscript:", i), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 intValue], v9 = objc_msgSend(v6, "startNumber"), v7, v9 <= v8))
      {
        if (v3 == i)
        {
          v11 = MEMORY[0x277CCABB0];
          v10 = [(NSMutableArray *)self->_counters objectAtIndexedSubscript:v3];
          v12 = [v11 numberWithInt:{objc_msgSend(v10, "intValue") + 1}];
          [(NSMutableArray *)self->_counters setObject:v12 atIndexedSubscript:v3];
        }

        else
        {
          if (i <= v3)
          {
            goto LABEL_16;
          }

          v13 = [v6 restartLevelOverridden];
          v14 = i;
          if (v13)
          {
            v14 = [v6 restartLevel];
          }

          if (v14 <= v3)
          {
            goto LABEL_16;
          }

          v15 = MEMORY[0x277CCABB0];
          if (v6)
          {
            v16 = [v6 startNumber] - 1;
          }

          else
          {
            v16 = 0;
          }

          v10 = [v15 numberWithLong:v16];
          [(NSMutableArray *)self->_counters setObject:v10 atIndexedSubscript:i];
        }
      }

      else
      {
        v10 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v6, "startNumber")}];
        [(NSMutableArray *)self->_counters setObject:v10 atIndexedSubscript:i];
      }

LABEL_16:
    }
  }
}

@end