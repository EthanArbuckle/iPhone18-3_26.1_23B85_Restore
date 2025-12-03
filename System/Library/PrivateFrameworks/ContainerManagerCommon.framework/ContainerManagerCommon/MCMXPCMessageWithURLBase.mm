@interface MCMXPCMessageWithURLBase
- (MCMXPCMessageWithURLBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
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

- (MCMXPCMessageWithURLBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v17 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = MCMXPCMessageWithURLBase;
  v9 = [(MCMXPCMessageBase *)&v16 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    string = xpc_dictionary_get_string(objectCopy, "Path");
    if (string && ([MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:string isDirectory:1 relativeToURL:0], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      url = v9->_url;
      v9->_url = v11;
      v13 = v11;
    }

    else
    {
      if (error)
      {
        *error = 38;
      }

      v13 = v9;
      v9 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

@end