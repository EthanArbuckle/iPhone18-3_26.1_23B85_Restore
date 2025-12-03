@interface TCDumpEnum
- (TCDumpEnum)initWithTypeName:(id)name pairs:(TCDumpEnumPair *)pairs;
- (id)nameForValue:(int)value;
- (id)valueForName:(id)name;
@end

@implementation TCDumpEnum

- (TCDumpEnum)initWithTypeName:(id)name pairs:(TCDumpEnumPair *)pairs
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = TCDumpEnum;
  v8 = [(TCDumpEnum *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mTypeName, name);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mValueToNameMap = v9->mValueToNameMap;
    v9->mValueToNameMap = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mNameToValueMap = v9->mNameToValueMap;
    v9->mNameToValueMap = v12;

    if (pairs->var1)
    {
      do
      {
        v14 = [MEMORY[0x277CCABB0] numberWithLong:pairs->var0];
        [(NSMutableDictionary *)v9->mValueToNameMap setObject:pairs->var1 forKey:v14];
        [(NSMutableDictionary *)v9->mNameToValueMap setObject:v14 forKey:pairs->var1];

        var1 = pairs[1].var1;
        ++pairs;
      }

      while (var1);
    }
  }

  return v9;
}

- (id)valueForName:(id)name
{
  v3 = [(NSMutableDictionary *)self->mNameToValueMap objectForKey:name];

  return v3;
}

- (id)nameForValue:(int)value
{
  mValueToNameMap = self->mValueToNameMap;
  v4 = [MEMORY[0x277CCABB0] numberWithLong:value];
  v5 = [(NSMutableDictionary *)mValueToNameMap objectForKey:v4];

  return v5;
}

@end