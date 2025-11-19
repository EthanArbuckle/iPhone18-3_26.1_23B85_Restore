@interface TCDumpEnum
- (TCDumpEnum)initWithTypeName:(id)a3 pairs:(TCDumpEnumPair *)a4;
- (id)nameForValue:(int)a3;
- (id)valueForName:(id)a3;
@end

@implementation TCDumpEnum

- (TCDumpEnum)initWithTypeName:(id)a3 pairs:(TCDumpEnumPair *)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = TCDumpEnum;
  v8 = [(TCDumpEnum *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mTypeName, a3);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mValueToNameMap = v9->mValueToNameMap;
    v9->mValueToNameMap = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mNameToValueMap = v9->mNameToValueMap;
    v9->mNameToValueMap = v12;

    if (a4->var1)
    {
      do
      {
        v14 = [MEMORY[0x277CCABB0] numberWithLong:a4->var0];
        [(NSMutableDictionary *)v9->mValueToNameMap setObject:a4->var1 forKey:v14];
        [(NSMutableDictionary *)v9->mNameToValueMap setObject:v14 forKey:a4->var1];

        var1 = a4[1].var1;
        ++a4;
      }

      while (var1);
    }
  }

  return v9;
}

- (id)valueForName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mNameToValueMap objectForKey:a3];

  return v3;
}

- (id)nameForValue:(int)a3
{
  mValueToNameMap = self->mValueToNameMap;
  v4 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  v5 = [(NSMutableDictionary *)mValueToNameMap objectForKey:v4];

  return v5;
}

@end