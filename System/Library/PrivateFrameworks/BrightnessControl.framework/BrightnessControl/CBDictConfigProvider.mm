@interface CBDictConfigProvider
+ (id)providerWithDict:(id)dict;
- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination;
- (BOOL)loadFloat:(id)float toDestination:(float *)destination;
- (BOOL)loadInt:(id)int toDestination:(int *)destination;
- (BOOL)loadUint:(id)uint toDestination:(unsigned int *)destination;
- (CBDictConfigProvider)initWithDictionary:(id)dictionary;
- (NSString)description;
- (unint64_t)loadFloatArray:(id)array toDestination:(float *)destination;
- (void)dealloc;
@end

@implementation CBDictConfigProvider

+ (id)providerWithDict:(id)dict
{
  v3 = [[CBDictConfigProvider alloc] initWithDictionary:dict];

  return v3;
}

- (CBDictConfigProvider)initWithDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = CBDictConfigProvider;
  v4 = [(CBDictConfigProvider *)&v7 init];
  if (dictionary && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    dictionaryCopy = dictionary;
  }

  else
  {
    dictionaryCopy = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  v4->_logHandle = 0;
  v4->_dict = dictionaryCopy;
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

- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination
{
  v9 = 0.0;
  v7 = [(CBDictConfigProvider *)self loadFloat:float toDestination:&v9];
  if (v7)
  {
    *destination = v9 * scaler;
  }

  return v7;
}

- (BOOL)loadFloat:(id)float toDestination:(float *)destination
{
  v5 = [(NSDictionary *)self->_dict objectForKeyedSubscript:float];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      *destination = v7;
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)loadFloatArray:(id)array toDestination:(float *)destination
{
  v5 = [(NSDictionary *)self->_dict objectForKeyedSubscript:array];
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

  *destination = v8;
  return v7;
}

- (BOOL)loadInt:(id)int toDestination:(int *)destination
{
  v5 = [(NSDictionary *)self->_dict objectForKeyedSubscript:int];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *destination = [v6 intValue];
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)loadUint:(id)uint toDestination:(unsigned int *)destination
{
  v5 = [(NSDictionary *)self->_dict objectForKeyedSubscript:uint];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *destination = [v6 unsignedIntValue];
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