@interface MCMXPCMessageWithURLBase
- (MCMXPCMessageWithURLBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (NSURL)url;
@end

@implementation MCMXPCMessageWithURLBase

- (NSURL)url
{
  result = self->_url;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageWithURLBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v16.receiver = self;
  v16.super_class = MCMXPCMessageWithURLBase;
  v9 = [(MCMXPCMessageBase *)&v16 initWithXPCObject:v8 context:a4 error:a5];
  if (v9)
  {
    string = xpc_dictionary_get_string(v8, "Path");
    if (string && ([MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:string isDirectory:1 relativeToURL:0], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      url = v9->_url;
      v9->_url = v11;
      v13 = v11;
    }

    else
    {
      if (a5)
      {
        *a5 = 38;
      }

      v13 = v9;
      v9 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

@end