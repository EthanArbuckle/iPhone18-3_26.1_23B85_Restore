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
  v8 = *MEMORY[0x277D85DE8];
  bzero(v7, 0x401uLL);
  v6 = 1025;
  v3 = sysctlbyname("kern.bootargs", v7, &v6, 0, 0);
  result = 0;
  if (!v3)
  {
    result = [(CBBootArgsConfigProvider *)self initWithBootArgs:v7];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (CBBootArgsConfigProvider)initWithBootArgs:(const char *)args
{
  v7.receiver = self;
  v7.super_class = CBBootArgsConfigProvider;
  v4 = [(CBBootArgsConfigProvider *)&v7 init];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:args encoding:1];
  v4->_logHandle = 0;
  v4->_bootargs = v5;
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CBBootArgsConfigProvider;
  [(CBBootArgsConfigProvider *)&v3 dealloc];
}

- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination
{
  v9 = 0.0;
  v7 = [(CBBootArgsConfigProvider *)self loadFloat:float toDestination:&v9];
  if (v7)
  {
    *destination = v9 * scaler;
  }

  return v7;
}

- (BOOL)loadFloat:(id)float toDestination:(float *)destination
{
  v6 = [(NSString *)self->_bootargs rangeOfString:float];
  if (!v7)
  {
    return 0;
  }

  v8 = v7 + v6 + 1;
  if (v8 >= [(NSString *)self->_bootargs length])
  {
    return 0;
  }

  [[(NSString *)self->_bootargs substringFromIndex:v8] floatValue];
  *destination = v9;
  return 1;
}

- (BOOL)loadInt:(id)int toDestination:(int *)destination
{
  v6 = [(NSString *)self->_bootargs rangeOfString:int];
  if (!v7)
  {
    return 0;
  }

  v8 = v7 + v6 + 1;
  if (v8 >= [(NSString *)self->_bootargs length])
  {
    return 0;
  }

  *destination = [[(NSString *)self->_bootargs substringFromIndex:v8] intValue];
  return 1;
}

- (BOOL)loadUint:(id)uint toDestination:(unsigned int *)destination
{
  v6 = [(NSString *)self->_bootargs rangeOfString:uint];
  if (!v7)
  {
    return 0;
  }

  v8 = v7 + v6 + 1;
  if (v8 >= [(NSString *)self->_bootargs length])
  {
    return 0;
  }

  *destination = [[(NSString *)self->_bootargs substringFromIndex:v8] intValue];
  return 1;
}

@end