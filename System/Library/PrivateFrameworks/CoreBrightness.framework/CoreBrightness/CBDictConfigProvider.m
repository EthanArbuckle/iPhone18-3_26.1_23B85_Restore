@interface CBDictConfigProvider
- (BOOL)loadFixedFloat:(id)a3 withScaler:(float)a4 toDestination:(float *)a5;
- (BOOL)loadFloat:(id)a3 toDestination:(float *)a4;
- (BOOL)loadInt:(id)a3 toDestination:(int *)a4;
- (BOOL)loadUint:(id)a3 toDestination:(unsigned int *)a4;
- (CBDictConfigProvider)initWithDictionary:(id)a3;
- (unint64_t)loadFloatArray:(id)a3 toDestination:(float *)a4;
- (void)dealloc;
@end

@implementation CBDictConfigProvider

- (CBDictConfigProvider)initWithDictionary:(id)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = CBDictConfigProvider;
  v9 = [(CBDictConfigProvider *)&v6 init];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = MEMORY[0x1E69E5928](v7);
    v9->_dict = v3;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v9->_dict = v4;
  }

  v9->_logHandle = 0;
  return v9;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_dict);
  *&v2 = MEMORY[0x1E69E5920](v5->_logHandle).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBDictConfigProvider;
  [(CBDictConfigProvider *)&v3 dealloc];
}

- (BOOL)loadFixedFloat:(id)a3 withScaler:(float)a4 toDestination:(float *)a5
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v6 = 0.0;
  if (![(CBDictConfigProvider *)self loadFloat:a3 toDestination:&v6])
  {
    return 0;
  }

  *v7 = v6 * v8;
  return 1;
}

- (BOOL)loadFloat:(id)a3 toDestination:(float *)a4
{
  v6 = [(NSDictionary *)self->_dict objectForKeyedSubscript:a3];
  if (!v6)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [v6 floatValue];
  *a4 = v4;
  return 1;
}

- (unint64_t)loadFloatArray:(id)a3 toDestination:(float *)a4
{
  count = 0;
  v7 = [(NSDictionary *)self->_dict objectForKeyedSubscript:a3];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      count = [v7 count];
      v9 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
      for (i = 0; i < count; ++i)
      {
        [objc_msgSend(v7 objectAtIndexedSubscript:{i), "floatValue"}];
        v9[i] = v4;
      }

      *a4 = v9;
    }
  }

  return count;
}

- (BOOL)loadInt:(id)a3 toDestination:(int *)a4
{
  v5 = [(NSDictionary *)self->_dict objectForKeyedSubscript:a3];
  if (!v5)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  *a4 = [v5 intValue];
  return 1;
}

- (BOOL)loadUint:(id)a3 toDestination:(unsigned int *)a4
{
  v5 = [(NSDictionary *)self->_dict objectForKeyedSubscript:a3];
  if (!v5)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  *a4 = [v5 unsignedIntValue];
  return 1;
}

@end