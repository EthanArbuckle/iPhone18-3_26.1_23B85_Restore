@interface CBIORegistryParser
+ (id)parserWithReader:(id)a3;
- (BOOL)loadData:(id)a3 toDestination:(const __CFData *)a4;
- (BOOL)loadFixedFloat:(id)a3 withScaler:(float)a4 toDestination:(float *)a5;
- (CBIORegistryParser)initWithReader:(id)a3;
- (NSString)description;
- (unint64_t)loadIOFixedArray:(id)a3 toDestination:(float *)a4;
- (void)dealloc;
@end

@implementation CBIORegistryParser

+ (id)parserWithReader:(id)a3
{
  v3 = [[CBIORegistryParser alloc] initWithReader:a3];

  return v3;
}

- (CBIORegistryParser)initWithReader:(id)a3
{
  v4 = [(CBIORegistryParser *)self init];
  v5 = a3;
  v4->_logHandle = 0;
  v4->_reader = v5;
  return v4;
}

- (NSString)description
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)loadIOFixedArray:(id)a3 toDestination:(float *)a4
{
  v13 = 0;
  v5 = load_array_from_reader<unsigned int>(self->_reader, a3, &v13);
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

    *a4 = v8;
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

- (BOOL)loadFixedFloat:(id)a3 withScaler:(float)a4 toDestination:(float *)a5
{
  v9 = 0;
  v7 = load_from_reader<int>(self->_reader, a3, &v9);
  if (v7)
  {
    *a5 = (v9 * 0.000015259) * a4;
  }

  return v7;
}

- (BOOL)loadData:(id)a3 toDestination:(const __CFData *)a4
{
  if (!a4)
  {
    return 0;
  }

  v5 = [(CBIORegInterface *)self->_reader copyProperty:a3];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  v8 = v7 == CFDataGetTypeID();
  if (v8)
  {
    *a4 = CFRetain(v6);
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