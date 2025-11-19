@interface MCMActionArgumentBase
- (MCMActionArgumentBase)initWithString:(id)a3;
- (NSString)string;
- (NSURL)fileURL;
@end

@implementation MCMActionArgumentBase

- (NSString)string
{
  result = self->_string;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)fileURL
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

- (MCMActionArgumentBase)initWithString:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MCMActionArgumentBase;
  v6 = [(MCMActionArgumentBase *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end