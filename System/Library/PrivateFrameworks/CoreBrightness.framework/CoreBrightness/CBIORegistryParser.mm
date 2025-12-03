@interface CBIORegistryParser
- (BOOL)loadData:(id)data toDestination:(const __CFData *)destination;
- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination;
- (CBIORegistryParser)initWithReader:(id)reader;
- (unint64_t)loadIOFixedArray:(id)array toDestination:(float *)destination;
- (void)dealloc;
@end

@implementation CBIORegistryParser

- (CBIORegistryParser)initWithReader:(id)reader
{
  v5 = [(CBIORegistryParser *)self init];
  v5->_reader = MEMORY[0x1E69E5928](reader);
  v5->_logHandle = 0;
  return v5;
}

- (unint64_t)loadIOFixedArray:(id)array toDestination:(float *)destination
{
  v7 = MEMORY[0x1E69E9B38];
  selfCopy = self;
  v15 = a2;
  arrayCopy = array;
  destinationCopy = destination;
  v12 = 0;
  v11 = load_array_from_reader<unsigned int>(self->_reader, array, &v12);
  if (!v11)
  {
    return 0;
  }

  v9 = v7;
  std::unique_ptr<unsigned int,void (*)(void *)>::unique_ptr[abi:de200100]<true,void>(v10, v12, &v9);
  v8 = malloc_type_calloc(v11, 4uLL, 0x100004052888210uLL);
  if (v8)
  {
    *destinationCopy = v8;
    v6 = std::unique_ptr<unsigned int,void (*)(void *)>::get[abi:de200100](v10);
    v4 = std::unique_ptr<unsigned int,void (*)(void *)>::get[abi:de200100](v10);
    std::transform[abi:de200100]<unsigned int *,float *,-[CBIORegistryParser loadIOFixedArray:toDestination:]::$_0>(v6, (v4 + 4 * v11), *destinationCopy);
    v17 = v11;
  }

  else
  {
    v17 = 0;
  }

  std::unique_ptr<unsigned int,void (*)(void *)>::~unique_ptr[abi:de200100](v10);
  return v17;
}

- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination
{
  selfCopy = self;
  v11 = a2;
  floatCopy = float;
  scalerCopy = scaler;
  destinationCopy = destination;
  v7 = 0;
  v6 = load_from_reader<int>(self->_reader, float, &v7);
  if (v6)
  {
    *destinationCopy = v7 / 65536.0;
    *destinationCopy = *destinationCopy * scalerCopy;
  }

  return v6 & 1;
}

- (BOOL)loadData:(id)data toDestination:(const __CFData *)destination
{
  v7 = 0;
  if (!destination)
  {
    return 0;
  }

  cf = [(CBIORegInterface *)self->_reader copyProperty:data];
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFDataGetTypeID())
  {
    *destination = CFRetain(cf);
    v7 = 1;
  }

  MEMORY[0x1E69E5920](cf);
  return v7 & 1;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_reader);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_logHandle).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBIORegistryParser;
  [(CBIORegistryParser *)&v3 dealloc];
}

@end