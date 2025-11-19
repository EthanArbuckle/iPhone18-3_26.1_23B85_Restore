@interface GTShaderProfilerStringCache
- (GTShaderProfilerStringCache)init;
- (GTShaderProfilerStringCache)initWithCoder:(id)a3;
- (id)stringFromIndex:(unint64_t)a3;
- (unint64_t)addString:(id)a3;
@end

@implementation GTShaderProfilerStringCache

- (unint64_t)addString:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_stringDict objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    v7 = [(NSMutableArray *)self->_strings count];
    [(NSMutableArray *)self->_strings addObject:v4];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    [(NSMutableDictionary *)self->_stringDict setObject:v8 forKeyedSubscript:v4];
  }

  return v7;
}

- (id)stringFromIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_strings count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_strings objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (GTShaderProfilerStringCache)initWithCoder:(id)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = GTShaderProfilerStringCache;
  v5 = [(GTShaderProfilerStringCache *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"strings"];
    strings = v5->_strings;
    v5->_strings = v9;

    v11 = objc_opt_new();
    stringDict = v5->_stringDict;
    v5->_stringDict = v11;

    v13 = v5->_strings;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __45__GTShaderProfilerStringCache_initWithCoder___block_invoke;
    v16[3] = &unk_2796579C0;
    v17 = v5;
    [(NSMutableArray *)v13 enumerateObjectsUsingBlock:v16];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

void __45__GTShaderProfilerStringCache_initWithCoder___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [*(*(a1 + 32) + 16) setObject:v5 forKeyedSubscript:v6];
}

- (GTShaderProfilerStringCache)init
{
  v8.receiver = self;
  v8.super_class = GTShaderProfilerStringCache;
  v2 = [(GTShaderProfilerStringCache *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    strings = v2->_strings;
    v2->_strings = v3;

    v5 = objc_opt_new();
    stringDict = v2->_stringDict;
    v2->_stringDict = v5;
  }

  return v2;
}

@end