@interface GVUIntegerMap
- (GVUIntegerMap)init;
- (id)debugDescription;
- (id)objectForKeyedSubscript:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)decrementValueForKey:(id)a3;
- (unint64_t)incrementValueForKey:(id)a3;
- (void)dealloc;
- (void)setInteger:(unint64_t)a3 forKey:(id)a4;
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

- (id)objectForKeyedSubscript:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(GVUIntegerMap *)self integerForKey:a3];

  return [v3 numberWithUnsignedInteger:v4];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(GVUIntegerMap *)self allKeys];

  return [(NSArray *)v8 countByEnumeratingWithState:a3 objects:a4 count:a5];
}

- (void)setInteger:(unint64_t)a3 forKey:(id)a4
{
  map = self->_map;
  if (a3)
  {
    [(NSMapTable *)map setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMapTable *)map removeObjectForKey:a4];
  }
}

- (unint64_t)incrementValueForKey:(id)a3
{
  v5 = [(NSMapTable *)self->_map objectForKey:?];
  [(GVUIntegerMap *)self setInteger:v5 + 1 forKey:a3];
  return (v5 + 1);
}

- (unint64_t)decrementValueForKey:(id)a3
{
  v5 = [(NSMapTable *)self->_map objectForKey:?];
  if (!v5)
  {
    return 0;
  }

  v6 = (v5 - 1);
  [(GVUIntegerMap *)self setInteger:v5 - 1 forKey:a3];
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