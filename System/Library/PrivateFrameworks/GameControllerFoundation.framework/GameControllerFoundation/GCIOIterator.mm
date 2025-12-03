@interface GCIOIterator
- (BOOL)isEqualTo:(id)to;
- (GCIOIterator)init;
- (GCIOIterator)initWithPort:(unsigned int)port objectClass:(Class)class error:(id *)error;
- (NSString)className;
- (NSString)debugDescription;
- (NSString)description;
- (id)nextObject;
- (id)objectClass;
- (id)redactedDescription;
- (uint64_t)port;
- (void)dealloc;
@end

@implementation GCIOIterator

- (GCIOIterator)initWithPort:(unsigned int)port objectClass:(Class)class error:(id *)error
{
  v20[2] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = GCIOIterator;
  v9 = [(GCIOIterator *)&v18 init];
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [GCIOIterator initWithPort:a2 objectClass:v9 error:?];
    goto LABEL_5;
  }

  v10 = IOObjectRetain(port);
  if (!v10)
  {
    v9->_port = port;
    objc_storeStrong(&v9->_objectClass, class);
    error = v9;
    goto LABEL_7;
  }

  if (error)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A5A0];
    v13 = v10;
    v14 = *MEMORY[0x1E696A588];
    v19[0] = *MEMORY[0x1E696A578];
    v19[1] = v14;
    v20[0] = @"Invalid port.";
    v20[1] = @"Error incrementing port retain count.";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    *error = [v11 errorWithDomain:v12 code:v13 userInfo:v15];

LABEL_5:
    error = 0;
  }

LABEL_7:

  v16 = *MEMORY[0x1E69E9840];
  return error;
}

- (GCIOIterator)init
{
  [(GCIOIterator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  port = self->_port;
  if (port)
  {
    IOObjectRelease(port);
    self->_port = 0;
  }

  v4.receiver = self;
  v4.super_class = GCIOIterator;
  [(GCIOIterator *)&v4 dealloc];
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  if (self)
  {
    v4 = IOObjectCopyClass(self->_port);
    className = [objc_getProperty(self v5];
    port = self->_port;
  }

  else
  {
    v4 = IOObjectCopyClass(0);
    className = [0 className];
    port = 0;
  }

  port = [v2 stringWithFormat:@"<%@<Kernel/%@> port='%#08x'>", v4, className, port];

  return port;
}

- (id)redactedDescription
{
  v2 = MEMORY[0x1E696AEC0];
  if (self)
  {
    v4 = IOObjectCopyClass(self->_port);
    className = [objc_getProperty(self v5];
    port = self->_port;
  }

  else
  {
    v4 = IOObjectCopyClass(0);
    className = [0 className];
    port = 0;
  }

  port = [v2 stringWithFormat:@"<%@<Kernel/%@> port='%#08x'>", v4, className, port];

  return port;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    v6 = IOObjectCopyClass(self->_port);
    className = [objc_getProperty(self v7];
    port = self->_port;
  }

  else
  {
    v6 = IOObjectCopyClass(0);
    className = [0 className];
    port = 0;
  }

  port = [v3 stringWithFormat:@"<%@ %p %@<Kernel/%@> port='%#08x'>", v5, self, v6, className, port];

  return port;
}

- (NSString)className
{
  v2 = IOObjectCopyClass(self->_port);

  return v2;
}

- (BOOL)isEqualTo:(id)to
{
  toCopy = to;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    port = self->_port;
    if (toCopy)
    {
      port = toCopy[2];
    }

    else
    {
      port = 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v7 = self->_port;
    port = [(GCIOObject *)toCopy port];
    port = v7;
  }

  v8 = IOObjectIsEqualTo(port, port) != 0;
LABEL_8:

  return v8;
}

- (id)nextObject
{
  v30 = *MEMORY[0x1E69E9840];
  while (1)
  {
    while (self)
    {
      v3 = IOIteratorNext(self->_port);
      if (v3)
      {
        v5 = v3;
        Property = objc_getProperty(self, v4, 16, 1);
        goto LABEL_5;
      }

      if (IOIteratorIsValid(self->_port))
      {
        goto LABEL_15;
      }

      port = self->_port;
LABEL_11:
      MEMORY[0x1D38AAB40](port);
    }

    v17 = IOIteratorNext(0);
    if (!v17)
    {
      IsValid = IOIteratorIsValid(0);
      port = 0;
      if (IsValid)
      {
LABEL_15:
        v8 = 0;
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v5 = v17;
    Property = 0;
LABEL_5:
    v7 = [Property alloc];
    v21 = 0;
    v8 = [v7 initWithPort:v5 error:&v21];
    v9 = v21;
    v10 = v9;
    if (v8)
    {
      break;
    }

    v11 = _gc_log_iokit();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = IOObjectCopyClass(v5);
      v14 = v13;
      code = [v10 code];
      localizedFailureReason = [v10 localizedFailureReason];

      *buf = 138413058;
      selfCopy = self;
      v24 = 2114;
      v25 = v13;
      v26 = 1024;
      v27 = code;
      v28 = 2114;
      v29 = localizedFailureReason;
      _os_log_error_impl(&dword_1D2C3B000, v11, OS_LOG_TYPE_ERROR, "%@ Error instantiating wrapper for next object '%{public}@': %{mach.errno}d %{public}@", buf, 0x26u);
    }
  }

LABEL_17:
  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

- (uint64_t)port
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (id)objectClass
{
  if (result)
  {
    return objc_getProperty(result, a2, 16, 1);
  }

  return result;
}

- (void)initWithPort:(uint64_t)a1 objectClass:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCIOIterator.m" lineNumber:17 description:@"Assertion failed: [objectClass isSubclassOfClass:GCIOObject.class]"];
}

@end