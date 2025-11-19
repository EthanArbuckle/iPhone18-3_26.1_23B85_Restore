@interface CBDictConfigProvider
+ (id)providerWithDict:(id)a3;
- (BOOL)loadFixedFloat:(id)a3 withScaler:(float)a4 toDestination:(float *)a5;
- (BOOL)loadFloat:(id)a3 toDestination:(float *)a4;
- (BOOL)loadInt:(id)a3 toDestination:(int *)a4;
- (BOOL)loadUint:(id)a3 toDestination:(unsigned int *)a4;
- (CBDictConfigProvider)initWithDictionary:(id)a3;
- (NSString)description;
- (unint64_t)loadFloatArray:(id)a3 toDestination:(float *)a4;
- (void)dealloc;
@end

@implementation CBDictConfigProvider

+ (id)providerWithDict:(id)a3
{
  v3 = [[CBDictConfigProvider alloc] initWithDictionary:a3];

  return v3;
}

- (CBDictConfigProvider)initWithDictionary:(id)a3
{
  v7.receiver = self;
  v7.super_class = CBDictConfigProvider;
  v4 = [(CBDictConfigProvider *)&v7 init];
  if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = a3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  v4->_logHandle = 0;
  v4->_dict = v5;
  return v4;
}

- (NSString)description
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CBDictConfigProvider;
  [(CBDictConfigProvider *)&v3 dealloc];
}

- (BOOL)loadFixedFloat:(id)a3 withScaler:(float)a4 toDestination:(float *)a5
{
  v9 = 0.0;
  v7 = [(CBDictConfigProvider *)self loadFloat:a3 toDestination:&v9];
  if (v7)
  {
    *a5 = v9 * a4;
  }

  return v7;
}

- (BOOL)loadFloat:(id)a3 toDestination:(float *)a4
{
  v5 = [(NSDictionary *)self->_dict objectForKeyedSubscript:a3];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      *a4 = v7;
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)loadFloatArray:(id)a3 toDestination:(float *)a4
{
  v5 = [(NSDictionary *)self->_dict objectForKeyedSubscript:a3];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = [v6 count];
  v8 = malloc_type_calloc(v7, 4uLL, 0x100004052888210uLL);
  if (v7)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      [objc_msgSend(v6 objectAtIndexedSubscript:{v9), "floatValue"}];
      v8[v9] = v11;
      v9 = v10;
    }

    while (v7 > v10++);
  }

  *a4 = v8;
  return v7;
}

- (BOOL)loadInt:(id)a3 toDestination:(int *)a4
{
  v5 = [(NSDictionary *)self->_dict objectForKeyedSubscript:a3];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a4 = [v6 intValue];
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)loadUint:(id)a3 toDestination:(unsigned int *)a4
{
  v5 = [(NSDictionary *)self->_dict objectForKeyedSubscript:a3];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a4 = [v6 unsignedIntValue];
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end