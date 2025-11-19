@interface CBIORegistryParser
- (BOOL)loadData:(id)a3 toDestination:(const __CFData *)a4;
- (BOOL)loadFixedFloat:(id)a3 withScaler:(float)a4 toDestination:(float *)a5;
- (CBIORegistryParser)initWithReader:(id)a3;
- (unint64_t)loadIOFixedArray:(id)a3 toDestination:(float *)a4;
- (void)dealloc;
@end

@implementation CBIORegistryParser

- (CBIORegistryParser)initWithReader:(id)a3
{
  v5 = [(CBIORegistryParser *)self init];
  v5->_reader = MEMORY[0x1E69E5928](a3);
  v5->_logHandle = 0;
  return v5;
}

- (unint64_t)loadIOFixedArray:(id)a3 toDestination:(float *)a4
{
  v7 = MEMORY[0x1E69E9B38];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = 0;
  v11 = load_array_from_reader<unsigned int>(self->_reader, a3, &v12);
  if (!v11)
  {
    return 0;
  }

  v9 = v7;
  std::unique_ptr<unsigned int,void (*)(void *)>::unique_ptr[abi:de200100]<true,void>(v10, v12, &v9);
  v8 = malloc_type_calloc(v11, 4uLL, 0x100004052888210uLL);
  if (v8)
  {
    *v13 = v8;
    v6 = std::unique_ptr<unsigned int,void (*)(void *)>::get[abi:de200100](v10);
    v4 = std::unique_ptr<unsigned int,void (*)(void *)>::get[abi:de200100](v10);
    std::transform[abi:de200100]<unsigned int *,float *,-[CBIORegistryParser loadIOFixedArray:toDestination:]::$_0>(v6, (v4 + 4 * v11), *v13);
    v17 = v11;
  }

  else
  {
    v17 = 0;
  }

  std::unique_ptr<unsigned int,void (*)(void *)>::~unique_ptr[abi:de200100](v10);
  return v17;
}

- (BOOL)loadFixedFloat:(id)a3 withScaler:(float)a4 toDestination:(float *)a5
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7 = 0;
  v6 = load_from_reader<int>(self->_reader, a3, &v7);
  if (v6)
  {
    *v8 = v7 / 65536.0;
    *v8 = *v8 * v9;
  }

  return v6 & 1;
}

- (BOOL)loadData:(id)a3 toDestination:(const __CFData *)a4
{
  v7 = 0;
  if (!a4)
  {
    return 0;
  }

  cf = [(CBIORegInterface *)self->_reader copyProperty:a3];
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFDataGetTypeID())
  {
    *a4 = CFRetain(cf);
    v7 = 1;
  }

  MEMORY[0x1E69E5920](cf);
  return v7 & 1;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_reader);
  *&v2 = MEMORY[0x1E69E5920](v5->_logHandle).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBIORegistryParser;
  [(CBIORegistryParser *)&v3 dealloc];
}

@end