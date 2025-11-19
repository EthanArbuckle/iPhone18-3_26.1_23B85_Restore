@interface MTConvenienceEnvironmentDelegate
- (MTConvenienceEnvironmentDelegate)init;
- (MTConvenienceEnvironmentDelegate)initWithPageURLBlock:(id)a3 resourceRevNumBlock:(id)a4 hostAppBlock:(id)a5;
- (id)hostApp;
- (id)pageUrl;
- (id)resourceRevNum;
@end

@implementation MTConvenienceEnvironmentDelegate

- (MTConvenienceEnvironmentDelegate)init
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"-init is not a valid initializer for the class %@", v4];

  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v5 userInfo:0];
  objc_exception_throw(v6);
}

- (MTConvenienceEnvironmentDelegate)initWithPageURLBlock:(id)a3 resourceRevNumBlock:(id)a4 hostAppBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = MTConvenienceEnvironmentDelegate;
  v11 = [(MTConvenienceEnvironmentDelegate *)&v19 init];
  if (v11)
  {
    v12 = MEMORY[0x259C9F5D0](v8);
    pageURLBlock = v11->__pageURLBlock;
    v11->__pageURLBlock = v12;

    v14 = MEMORY[0x259C9F5D0](v9);
    resourceRevNumBlock = v11->__resourceRevNumBlock;
    v11->__resourceRevNumBlock = v14;

    v16 = MEMORY[0x259C9F5D0](v10);
    hostAppBlock = v11->__hostAppBlock;
    v11->__hostAppBlock = v16;
  }

  return v11;
}

- (id)hostApp
{
  v3 = [(MTConvenienceEnvironmentDelegate *)self _hostAppBlock];
  if (v3)
  {
    v4 = [(MTConvenienceEnvironmentDelegate *)self _hostAppBlock];
    v5 = v4[2]();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pageUrl
{
  v3 = [(MTConvenienceEnvironmentDelegate *)self _pageURLBlock];
  if (v3)
  {
    v4 = [(MTConvenienceEnvironmentDelegate *)self _pageURLBlock];
    v5 = v4[2]();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)resourceRevNum
{
  v3 = [(MTConvenienceEnvironmentDelegate *)self _resourceRevNumBlock];
  if (v3)
  {
    v4 = [(MTConvenienceEnvironmentDelegate *)self _resourceRevNumBlock];
    v5 = v4[2]();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end