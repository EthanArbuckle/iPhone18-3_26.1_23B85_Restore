@interface CBBootArgsConfigProvider
- (BOOL)loadFixedFloat:(id)a3 withScaler:(float)a4 toDestination:(float *)a5;
- (BOOL)loadFloat:(id)a3 toDestination:(float *)a4;
- (BOOL)loadInt:(id)a3 toDestination:(int *)a4;
- (BOOL)loadUint:(id)a3 toDestination:(unsigned int *)a4;
- (CBBootArgsConfigProvider)init;
- (CBBootArgsConfigProvider)initWithBootArgs:(const char *)a3;
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

- (CBBootArgsConfigProvider)initWithBootArgs:(const char *)a3
{
  v7.receiver = self;
  v7.super_class = CBBootArgsConfigProvider;
  v4 = [(CBBootArgsConfigProvider *)&v7 init];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a3 encoding:1];
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

- (BOOL)loadFixedFloat:(id)a3 withScaler:(float)a4 toDestination:(float *)a5
{
  v9 = 0.0;
  v7 = [(CBBootArgsConfigProvider *)self loadFloat:a3 toDestination:&v9];
  if (v7)
  {
    *a5 = v9 * a4;
  }

  return v7;
}

- (BOOL)loadFloat:(id)a3 toDestination:(float *)a4
{
  v6 = [(NSString *)self->_bootargs rangeOfString:a3];
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
  *a4 = v9;
  return 1;
}

- (BOOL)loadInt:(id)a3 toDestination:(int *)a4
{
  v6 = [(NSString *)self->_bootargs rangeOfString:a3];
  if (!v7)
  {
    return 0;
  }

  v8 = v7 + v6 + 1;
  if (v8 >= [(NSString *)self->_bootargs length])
  {
    return 0;
  }

  *a4 = [[(NSString *)self->_bootargs substringFromIndex:v8] intValue];
  return 1;
}

- (BOOL)loadUint:(id)a3 toDestination:(unsigned int *)a4
{
  v6 = [(NSString *)self->_bootargs rangeOfString:a3];
  if (!v7)
  {
    return 0;
  }

  v8 = v7 + v6 + 1;
  if (v8 >= [(NSString *)self->_bootargs length])
  {
    return 0;
  }

  *a4 = [[(NSString *)self->_bootargs substringFromIndex:v8] intValue];
  return 1;
}

@end