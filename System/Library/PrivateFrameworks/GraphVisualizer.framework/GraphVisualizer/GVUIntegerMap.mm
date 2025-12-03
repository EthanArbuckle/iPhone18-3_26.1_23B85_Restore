@interface GVUIntegerMap
- (GVUIntegerMap)init;
- (id)debugDescription;
- (id)objectForKeyedSubscript:(id)subscript;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)decrementValueForKey:(id)key;
- (unint64_t)incrementValueForKey:(id)key;
- (void)dealloc;
- (void)setInteger:(unint64_t)integer forKey:(id)key;
@end

@implementation GVUIntegerMap

- (GVUIntegerMap)init
{
  v4.receiver = self;
  v4.super_class = GVUIntegerMap;
  v2 = [(GVUIntegerMap *)&v4 init];
  if (v2)
  {
    v2->_map = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:256 capacity:0];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GVUIntegerMap;
  [(GVUIntegerMap *)&v3 dealloc];
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(GVUIntegerMap *)self integerForKey:subscript];

  return [v3 numberWithUnsignedInteger:v4];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  allKeys = [(GVUIntegerMap *)self allKeys];

  return [(NSArray *)allKeys countByEnumeratingWithState:state objects:objects count:count];
}

- (void)setInteger:(unint64_t)integer forKey:(id)key
{
  map = self->_map;
  if (integer)
  {
    [(NSMapTable *)map setObject:integer forKey:key];
  }

  else
  {
    [(NSMapTable *)map removeObjectForKey:key];
  }
}

- (unint64_t)incrementValueForKey:(id)key
{
  v5 = [(NSMapTable *)self->_map objectForKey:?];
  [(GVUIntegerMap *)self setInteger:v5 + 1 forKey:key];
  return (v5 + 1);
}

- (unint64_t)decrementValueForKey:(id)key
{
  v5 = [(NSMapTable *)self->_map objectForKey:?];
  if (!v5)
  {
    return 0;
  }

  v6 = (v5 - 1);
  [(GVUIntegerMap *)self setInteger:v5 - 1 forKey:key];
  return v6;
}

- (id)debugDescription
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = GVUIntegerMap;
  v3 = [(GVUIntegerMap *)&v16 description];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(GVUIntegerMap *)self countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(self);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [objc_msgSend(objc_msgSend(v3 stringByAppendingString:{@"\n  ", "stringByAppendingString:", objc_msgSend(v8, "description")), "stringByAppendingString:", @"  ["}];
        v3 = [objc_msgSend(v9 stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", -[GVUIntegerMap integerForKey:](self, "integerForKey:", v8)), "description")), "stringByAppendingString:", @"]\n"}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(GVUIntegerMap *)self countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

@end