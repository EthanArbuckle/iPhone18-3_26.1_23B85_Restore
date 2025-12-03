@interface MTConvenienceEnvironmentDelegate
- (MTConvenienceEnvironmentDelegate)init;
- (MTConvenienceEnvironmentDelegate)initWithPageURLBlock:(id)block resourceRevNumBlock:(id)numBlock hostAppBlock:(id)appBlock;
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

- (MTConvenienceEnvironmentDelegate)initWithPageURLBlock:(id)block resourceRevNumBlock:(id)numBlock hostAppBlock:(id)appBlock
{
  blockCopy = block;
  numBlockCopy = numBlock;
  appBlockCopy = appBlock;
  v19.receiver = self;
  v19.super_class = MTConvenienceEnvironmentDelegate;
  v11 = [(MTConvenienceEnvironmentDelegate *)&v19 init];
  if (v11)
  {
    v12 = MEMORY[0x259C9F5D0](blockCopy);
    pageURLBlock = v11->__pageURLBlock;
    v11->__pageURLBlock = v12;

    v14 = MEMORY[0x259C9F5D0](numBlockCopy);
    resourceRevNumBlock = v11->__resourceRevNumBlock;
    v11->__resourceRevNumBlock = v14;

    v16 = MEMORY[0x259C9F5D0](appBlockCopy);
    hostAppBlock = v11->__hostAppBlock;
    v11->__hostAppBlock = v16;
  }

  return v11;
}

- (id)hostApp
{
  _hostAppBlock = [(MTConvenienceEnvironmentDelegate *)self _hostAppBlock];
  if (_hostAppBlock)
  {
    _hostAppBlock2 = [(MTConvenienceEnvironmentDelegate *)self _hostAppBlock];
    v5 = _hostAppBlock2[2]();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pageUrl
{
  _pageURLBlock = [(MTConvenienceEnvironmentDelegate *)self _pageURLBlock];
  if (_pageURLBlock)
  {
    _pageURLBlock2 = [(MTConvenienceEnvironmentDelegate *)self _pageURLBlock];
    v5 = _pageURLBlock2[2]();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)resourceRevNum
{
  _resourceRevNumBlock = [(MTConvenienceEnvironmentDelegate *)self _resourceRevNumBlock];
  if (_resourceRevNumBlock)
  {
    _resourceRevNumBlock2 = [(MTConvenienceEnvironmentDelegate *)self _resourceRevNumBlock];
    v5 = _resourceRevNumBlock2[2]();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end