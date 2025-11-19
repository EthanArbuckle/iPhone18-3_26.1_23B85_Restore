@interface LSSCAParamsDictionary
- ($C28CD4A45FD07A4F97CC9D5F91F25271)params;
- (LSSCAParamsDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
@end

@implementation LSSCAParamsDictionary

- (LSSCAParamsDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5
{
  v6.receiver = self;
  v6.super_class = LSSCAParamsDictionary;
  return [(LSSCAParamsDictionary *)&v6 init:a3];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*MEMORY[0x277CDA9F0] == v4)
  {
    p_params = &self->_params;
  }

  else if (*MEMORY[0x277CDA9F8] == v4)
  {
    p_params = &self->_params.height;
  }

  else if (*MEMORY[0x277CDAA08] == v4)
  {
    p_params = &self->_params.spread;
  }

  else
  {
    if (*MEMORY[0x277CDAA00] != v4)
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
  v5 = [v4 objectEnumerator];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
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