@interface DAAppContext
- (DAAppContext)initWithCoder:(id)a3;
- (DAAppContext)initWithXPCObject:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation DAAppContext

- (DAAppContext)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = DAAppContext;
  v3 = a3;
  v4 = [(DAAppContext *)&v10 init];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
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
    [(DAAppContext *)v3 initWithCoder:?];
    v3 = v11;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (self->_xpcEndpoint)
  {
    v5 = (isKindOfClass & 1) == 0;
    v6 = v7;
    if (v5)
    {
      v6 = 0;
    }

    [v6 encodeXPCObject:? forKey:?];
  }
}

- (DAAppContext)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v32.receiver = self;
  v32.super_class = DAAppContext;
  v7 = [(DAAppContext *)&v32 init];
  if (!v7)
  {
    if (a4)
    {
      v31 = objc_opt_class();
      DAErrorF(350001, "%@ init failed", v24, v25, v26, v27, v28, v29, v31);
LABEL_13:
      *a4 = v22 = 0;
      goto LABEL_8;
    }

LABEL_14:
    v22 = 0;
    goto LABEL_8;
  }

  if (MEMORY[0x24C1DC9E0](v6) != MEMORY[0x277D86468])
  {
    if (a4)
    {
      DAErrorF(350004, "XPC non-dict", v8, v9, v10, v11, v12, v13, v30);
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v14 = xpc_dictionary_get_value(v6, "xpcE");
  v15 = v14;
  if (v14)
  {
    if (MEMORY[0x24C1DC9E0](v14) != MEMORY[0x277D86478])
    {
      if (a4)
      {
        DAErrorF(350001, "XPC non-endpoint", v16, v17, v18, v19, v20, v21, v30);
        *a4 = v22 = 0;
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

- (void)encodeWithXPCObject:(id)a3
{
  xpcEndpoint = self->_xpcEndpoint;
  if (xpcEndpoint)
  {
    xpc_dictionary_set_value(a3, "xpcE", xpcEndpoint);
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