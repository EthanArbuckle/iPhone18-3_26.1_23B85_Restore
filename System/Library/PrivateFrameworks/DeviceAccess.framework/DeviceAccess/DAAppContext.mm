@interface DAAppContext
- (DAAppContext)initWithCoder:(id)coder;
- (DAAppContext)initWithXPCObject:(id)object error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DAAppContext

- (DAAppContext)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = DAAppContext;
  coderCopy = coder;
  v4 = [(DAAppContext *)&v10 init];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = coderCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 decodeXPCObjectOfType:MEMORY[0x277D86478] forKey:@"xpcE"];
    xpcEndpoint = v4->_xpcEndpoint;
    v4->_xpcEndpoint = v6;

    v8 = v4;
  }

  else
  {
    [(DAAppContext *)coderCopy initWithCoder:?];
    coderCopy = v11;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (self->_xpcEndpoint)
  {
    v5 = (isKindOfClass & 1) == 0;
    v6 = coderCopy;
    if (v5)
    {
      v6 = 0;
    }

    [v6 encodeXPCObject:? forKey:?];
  }
}

- (DAAppContext)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v32.receiver = self;
  v32.super_class = DAAppContext;
  v7 = [(DAAppContext *)&v32 init];
  if (!v7)
  {
    if (error)
    {
      v31 = objc_opt_class();
      DAErrorF(350001, "%@ init failed", v24, v25, v26, v27, v28, v29, v31);
LABEL_13:
      *error = v22 = 0;
      goto LABEL_8;
    }

LABEL_14:
    v22 = 0;
    goto LABEL_8;
  }

  if (MEMORY[0x24C1DC9E0](objectCopy) != MEMORY[0x277D86468])
  {
    if (error)
    {
      DAErrorF(350004, "XPC non-dict", v8, v9, v10, v11, v12, v13, v30);
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v14 = xpc_dictionary_get_value(objectCopy, "xpcE");
  v15 = v14;
  if (v14)
  {
    if (MEMORY[0x24C1DC9E0](v14) != MEMORY[0x277D86478])
    {
      if (error)
      {
        DAErrorF(350001, "XPC non-endpoint", v16, v17, v18, v19, v20, v21, v30);
        *error = v22 = 0;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_7;
    }

    objc_storeStrong(&v7->_xpcEndpoint, v15);
  }

  v22 = v7;
LABEL_7:

LABEL_8:
  return v22;
}

- (void)encodeWithXPCObject:(id)object
{
  xpcEndpoint = self->_xpcEndpoint;
  if (xpcEndpoint)
  {
    xpc_dictionary_set_value(object, "xpcE", xpcEndpoint);
  }
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1, uint64_t *a2)
{
  v4 = objc_opt_class();
  v11 = DAErrorF(350001, "%@ init failed", v5, v6, v7, v8, v9, v10, v4);
  *a2 = v11;
  [a1 failWithError:v11];
}

@end