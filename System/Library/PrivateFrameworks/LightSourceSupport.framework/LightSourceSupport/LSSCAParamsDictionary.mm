@interface LSSCAParamsDictionary
- ($C28CD4A45FD07A4F97CC9D5F91F25271)params;
- (LSSCAParamsDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (id)keyEnumerator;
- (id)objectForKey:(id)key;
@end

@implementation LSSCAParamsDictionary

- (LSSCAParamsDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v6.receiver = self;
  v6.super_class = LSSCAParamsDictionary;
  return [(LSSCAParamsDictionary *)&v6 init:objects];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v6 = keyCopy;
  if (*MEMORY[0x277CDA9F0] == keyCopy)
  {
    p_params = &self->_params;
  }

  else if (*MEMORY[0x277CDA9F8] == keyCopy)
  {
    p_params = &self->_params.height;
  }

  else if (*MEMORY[0x277CDAA08] == keyCopy)
  {
    p_params = &self->_params.spread;
  }

  else
  {
    if (*MEMORY[0x277CDAA00] != keyCopy)
    {

      v7 = 0;

      return v7;
    }

    p_params = &self->_params.opacity;
  }

  *&v5 = p_params->angle;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v5];

  v7 = v10;

  return v7;
}

- (id)keyEnumerator
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CDA9F8];
  v8[0] = *MEMORY[0x277CDA9F0];
  v8[1] = v2;
  v3 = *MEMORY[0x277CDAA00];
  v8[2] = *MEMORY[0x277CDAA08];
  v8[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];
  objectEnumerator = [v4 objectEnumerator];

  v6 = *MEMORY[0x277D85DE8];

  return objectEnumerator;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)params
{
  angle = self->_params.angle;
  opacity = self->_params.opacity;
  spread = self->_params.spread;
  height = self->_params.height;
  result.var3 = height;
  result.var2 = spread;
  result.var1 = opacity;
  result.var0 = angle;
  return result;
}

@end