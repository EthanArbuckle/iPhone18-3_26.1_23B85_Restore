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
  v7 = *MEMORY[0x1E69E9840];
  v4 = self;
  v3[1] = a2;
  bzero(v6, 0x401uLL);
  v3[0] = 1025;
  if (sysctlbyname("kern.bootargs", v6, v3, 0, 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CBBootArgsConfigProvider *)v4 initWithBootArgs:v6];
  }

  *MEMORY[0x1E69E9840];
  return v5;
}

- (CBBootArgsConfigProvider)initWithBootArgs:(const char *)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = CBBootArgsConfigProvider;
  v9 = [(CBBootArgsConfigProvider *)&v6 init];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [v3 initWithCString:v7 encoding:1];
  v9->_bootargs = v4;
  v9->_logHandle = 0;
  return v9;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_logHandle);
  *&v2 = MEMORY[0x1E69E5920](v5->_bootargs).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBBootArgsConfigProvider;
  [(CBBootArgsConfigProvider *)&v3 dealloc];
}

- (BOOL)loadFixedFloat:(id)a3 withScaler:(float)a4 toDestination:(float *)a5
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v6 = 0.0;
  if (![(CBBootArgsConfigProvider *)self loadFloat:a3 toDestination:&v6])
  {
    return 0;
  }

  *v7 = v6 * v8;
  return 1;
}

- (BOOL)loadFloat:(id)a3 toDestination:(float *)a4
{
  v7 = [(NSString *)self->_bootargs rangeOfString:a3];
  v8 = v4;
  if (!v4 || v7 + v4 + 1 >= [(NSString *)self->_bootargs length])
  {
    return 0;
  }

  [[(NSString *)self->_bootargs substringFromIndex:v7 + v8 + 1] floatValue];
  *a4 = v5;
  return 1;
}

- (BOOL)loadInt:(id)a3 toDestination:(int *)a4
{
  v6 = [(NSString *)self->_bootargs rangeOfString:a3];
  v7 = v4;
  if (!v4 || v6 + v4 + 1 >= [(NSString *)self->_bootargs length])
  {
    return 0;
  }

  *a4 = [[(NSString *)self->_bootargs substringFromIndex:v6 + v7 + 1] intValue];
  return 1;
}

- (BOOL)loadUint:(id)a3 toDestination:(unsigned int *)a4
{
  v6 = [(NSString *)self->_bootargs rangeOfString:a3];
  v7 = v4;
  if (!v4 || v6 + v4 + 1 >= [(NSString *)self->_bootargs length])
  {
    return 0;
  }

  *a4 = [[(NSString *)self->_bootargs substringFromIndex:v6 + v7 + 1] intValue];
  return 1;
}

@end