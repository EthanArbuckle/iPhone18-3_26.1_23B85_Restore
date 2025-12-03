@interface CBDictConfigProvider
- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination;
- (BOOL)loadFloat:(id)float toDestination:(float *)destination;
- (BOOL)loadInt:(id)int toDestination:(int *)destination;
- (BOOL)loadUint:(id)uint toDestination:(unsigned int *)destination;
- (CBDictConfigProvider)initWithDictionary:(id)dictionary;
- (unint64_t)loadFloatArray:(id)array toDestination:(float *)destination;
- (void)dealloc;
@end

@implementation CBDictConfigProvider

- (CBDictConfigProvider)initWithDictionary:(id)dictionary
{
  selfCopy = self;
  v8 = a2;
  dictionaryCopy = dictionary;
  v6.receiver = self;
  v6.super_class = CBDictConfigProvider;
  selfCopy = [(CBDictConfigProvider *)&v6 init];
  if (dictionaryCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = MEMORY[0x1E69E5928](dictionaryCopy);
    selfCopy->_dict = v3;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF20]);
    selfCopy->_dict = v4;
  }

  selfCopy->_logHandle = 0;
  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_dict);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_logHandle).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBDictConfigProvider;
  [(CBDictConfigProvider *)&v3 dealloc];
}

- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination
{
  selfCopy = self;
  v10 = a2;
  floatCopy = float;
  scalerCopy = scaler;
  destinationCopy = destination;
  v6 = 0.0;
  if (![(CBDictConfigProvider *)self loadFloat:float toDestination:&v6])
  {
    return 0;
  }

  *destinationCopy = v6 * scalerCopy;
  return 1;
}

- (BOOL)loadFloat:(id)float toDestination:(float *)destination
{
  v6 = [(NSDictionary *)self->_dict objectForKeyedSubscript:float];
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
  *destination = v4;
  return 1;
}

- (unint64_t)loadFloatArray:(id)array toDestination:(float *)destination
{
  count = 0;
  v7 = [(NSDictionary *)self->_dict objectForKeyedSubscript:array];
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

      *destination = v9;
    }
  }

  return count;
}

- (BOOL)loadInt:(id)int toDestination:(int *)destination
{
  v5 = [(NSDictionary *)self->_dict objectForKeyedSubscript:int];
  if (!v5)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  *destination = [v5 intValue];
  return 1;
}

- (BOOL)loadUint:(id)uint toDestination:(unsigned int *)destination
{
  v5 = [(NSDictionary *)self->_dict objectForKeyedSubscript:uint];
  if (!v5)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  *destination = [v5 unsignedIntValue];
  return 1;
}

@end