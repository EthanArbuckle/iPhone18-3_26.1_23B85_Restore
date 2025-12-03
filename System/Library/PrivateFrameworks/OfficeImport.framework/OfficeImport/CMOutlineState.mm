@interface CMOutlineState
- (CMOutlineState)init;
- (CMOutlineState)initWithListDefinition:(id)definition;
- (id)levelDescriptionAtIndex:(unsigned __int8)index;
- (unint64_t)counterAtLevel:(unsigned __int8)level;
- (unint64_t)levelCount;
- (void)increaseCounterAtLevel:(unsigned __int8)level;
- (void)reset;
- (void)setCounterTo:(unint64_t)to atLevel:(unsigned __int8)level;
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

- (CMOutlineState)initWithListDefinition:(id)definition
{
  definitionCopy = definition;
  v11.receiver = self;
  v11.super_class = CMOutlineState;
  v6 = [(CMOutlineState *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listDefinition, definition);
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

- (void)setCounterTo:(unint64_t)to atLevel:(unsigned __int8)level
{
  if ([(CMOutlineState *)self levelCount]> level)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:to];
    [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
  }
}

- (unint64_t)counterAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  if ([(CMOutlineState *)self levelCount]<= level)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_counters objectAtIndexedSubscript:levelCopy];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)levelDescriptionAtIndex:(unsigned __int8)index
{
  indexCopy = index;
  v5 = [(WDList *)self->_currentList levelOverrideForLevel:?];
  if ([v5 isListLevelOverridden])
  {
    [v5 listLevel];
  }

  else
  {
    [(WDListDefinition *)self->_listDefinition levelAt:indexCopy];
  }
  v6 = ;

  return v6;
}

- (void)increaseCounterAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  if ([(CMOutlineState *)self levelCount]> level && [(CMOutlineState *)self levelCount])
  {
    for (i = 0; [(CMOutlineState *)self levelCount]> i; ++i)
    {
      v6 = [(CMOutlineState *)self levelDescriptionAtIndex:i];
      if (i >= levelCopy || (-[NSMutableArray objectAtIndexedSubscript:](self->_counters, "objectAtIndexedSubscript:", i), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 intValue], v9 = objc_msgSend(v6, "startNumber"), v7, v9 <= v8))
      {
        if (levelCopy == i)
        {
          v11 = MEMORY[0x277CCABB0];
          v10 = [(NSMutableArray *)self->_counters objectAtIndexedSubscript:levelCopy];
          v12 = [v11 numberWithInt:{objc_msgSend(v10, "intValue") + 1}];
          [(NSMutableArray *)self->_counters setObject:v12 atIndexedSubscript:levelCopy];
        }

        else
        {
          if (i <= levelCopy)
          {
            goto LABEL_16;
          }

          restartLevelOverridden = [v6 restartLevelOverridden];
          restartLevel = i;
          if (restartLevelOverridden)
          {
            restartLevel = [v6 restartLevel];
          }

          if (restartLevel <= levelCopy)
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