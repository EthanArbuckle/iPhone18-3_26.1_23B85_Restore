@interface CBIORegistryParser
+ (id)parserWithReader:(id)reader;
- (BOOL)loadData:(id)data toDestination:(const __CFData *)destination;
- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination;
- (CBIORegistryParser)initWithReader:(id)reader;
- (NSString)description;
- (unint64_t)loadIOFixedArray:(id)array toDestination:(float *)destination;
- (void)dealloc;
@end

@implementation CBIORegistryParser

+ (id)parserWithReader:(id)reader
{
  v3 = [[CBIORegistryParser alloc] initWithReader:reader];

  return v3;
}

- (CBIORegistryParser)initWithReader:(id)reader
{
  v4 = [(CBIORegistryParser *)self init];
  readerCopy = reader;
  v4->_logHandle = 0;
  v4->_reader = readerCopy;
  return v4;
}

- (NSString)description
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)loadIOFixedArray:(id)array toDestination:(float *)destination
{
  v13 = 0;
  v5 = load_array_from_reader<unsigned int>(self->_reader, array, &v13);
  v6 = v5;
  if (v5)
  {
    v7 = v13;
    v8 = malloc_type_calloc(v5, 4uLL, 0x100004052888210uLL);
    if (!v8)
    {
      v6 = 0;
      if (!v7)
      {
        return v6;
      }

      goto LABEL_6;
    }

    *destination = v8;
    v9 = 4 * v6;
    v10 = v7;
    do
    {
      v11 = *v10++;
      *v8++ = v11 * 0.000015259;
      v9 -= 4;
    }

    while (v9);
    if (v7)
    {
LABEL_6:
      free(v7);
    }
  }

  return v6;
}

- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination
{
  v9 = 0;
  v7 = load_from_reader<int>(self->_reader, float, &v9);
  if (v7)
  {
    *destination = (v9 * 0.000015259) * scaler;
  }

  return v7;
}

- (BOOL)loadData:(id)data toDestination:(const __CFData *)destination
{
  if (!destination)
  {
    return 0;
  }

  v5 = [(CBIORegInterface *)self->_reader copyProperty:data];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  v8 = v7 == CFDataGetTypeID();
  if (v8)
  {
    *destination = CFRetain(v6);
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CBIORegistryParser;
  [(CBIORegistryParser *)&v3 dealloc];
}

@end