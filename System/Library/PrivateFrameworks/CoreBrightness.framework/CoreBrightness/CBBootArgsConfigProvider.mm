@interface CBBootArgsConfigProvider
- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination;
- (BOOL)loadFloat:(id)float toDestination:(float *)destination;
- (BOOL)loadInt:(id)int toDestination:(int *)destination;
- (BOOL)loadUint:(id)uint toDestination:(unsigned int *)destination;
- (CBBootArgsConfigProvider)init;
- (CBBootArgsConfigProvider)initWithBootArgs:(const char *)args;
- (void)dealloc;
@end

@implementation CBBootArgsConfigProvider

- (CBBootArgsConfigProvider)init
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v3[1] = a2;
  bzero(v6, 0x401uLL);
  v3[0] = 1025;
  if (sysctlbyname("kern.bootargs", v6, v3, 0, 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CBBootArgsConfigProvider *)selfCopy initWithBootArgs:v6];
  }

  *MEMORY[0x1E69E9840];
  return v5;
}

- (CBBootArgsConfigProvider)initWithBootArgs:(const char *)args
{
  selfCopy = self;
  v8 = a2;
  argsCopy = args;
  v6.receiver = self;
  v6.super_class = CBBootArgsConfigProvider;
  selfCopy = [(CBBootArgsConfigProvider *)&v6 init];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [v3 initWithCString:argsCopy encoding:1];
  selfCopy->_bootargs = v4;
  selfCopy->_logHandle = 0;
  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_logHandle);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_bootargs).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBBootArgsConfigProvider;
  [(CBBootArgsConfigProvider *)&v3 dealloc];
}

- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination
{
  selfCopy = self;
  v10 = a2;
  floatCopy = float;
  scalerCopy = scaler;
  destinationCopy = destination;
  v6 = 0.0;
  if (![(CBBootArgsConfigProvider *)self loadFloat:float toDestination:&v6])
  {
    return 0;
  }

  *destinationCopy = v6 * scalerCopy;
  return 1;
}

- (BOOL)loadFloat:(id)float toDestination:(float *)destination
{
  v7 = [(NSString *)self->_bootargs rangeOfString:float];
  v8 = v4;
  if (!v4 || v7 + v4 + 1 >= [(NSString *)self->_bootargs length])
  {
    return 0;
  }

  [[(NSString *)self->_bootargs substringFromIndex:v7 + v8 + 1] floatValue];
  *destination = v5;
  return 1;
}

- (BOOL)loadInt:(id)int toDestination:(int *)destination
{
  v6 = [(NSString *)self->_bootargs rangeOfString:int];
  v7 = v4;
  if (!v4 || v6 + v4 + 1 >= [(NSString *)self->_bootargs length])
  {
    return 0;
  }

  *destination = [[(NSString *)self->_bootargs substringFromIndex:v6 + v7 + 1] intValue];
  return 1;
}

- (BOOL)loadUint:(id)uint toDestination:(unsigned int *)destination
{
  v6 = [(NSString *)self->_bootargs rangeOfString:uint];
  v7 = v4;
  if (!v4 || v6 + v4 + 1 >= [(NSString *)self->_bootargs length])
  {
    return 0;
  }

  *destination = [[(NSString *)self->_bootargs substringFromIndex:v6 + v7 + 1] intValue];
  return 1;
}

@end