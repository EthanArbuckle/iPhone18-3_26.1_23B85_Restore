@interface GCIOObject
- (BOOL)isEqualTo:(id)to;
- (GCIOObject)init;
- (GCIOObject)initWithPort:(unsigned int)port error:(id *)error;
- (NSString)className;
- (NSString)debugDescription;
- (NSString)description;
- (id)redactedDescription;
- (uint64_t)port;
- (void)dealloc;
@end

@implementation GCIOObject

- (GCIOObject)initWithPort:(unsigned int)port error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = GCIOObject;
  v6 = [(GCIOObject *)&v14 init];
  v7 = IOObjectRetain(port);
  if (v7)
  {
    if (error)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A5A0];
      v12 = v7;
      v15 = *MEMORY[0x1E696A580];
      v16[0] = @"Error incrementing port retain count.";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *error = [v10 errorWithDomain:v11 code:v12 userInfo:v13];

      error = 0;
    }
  }

  else
  {
    v6->_port = port;
    error = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return error;
}

- (GCIOObject)init
{
  [(GCIOObject *)self doesNotRecognizeSelector:a2];

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
  v4.super_class = GCIOObject;
  [(GCIOObject *)&v4 dealloc];
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
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (toCopy)
    {
      v5 = toCopy[2];
    }

    else
    {
      v5 = 0;
    }

    v6 = IOObjectIsEqualTo(self->_port, v5) != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  className = [(GCIOObject *)self className];
  v5 = className;
  if (self)
  {
    port = self->_port;
  }

  else
  {
    port = 0;
  }

  port = [v3 stringWithFormat:@"<Kernel/%@ port='%#08x'>", className, port];

  return port;
}

- (uint64_t)port
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  className = [(GCIOObject *)self className];
  v5 = className;
  if (self)
  {
    port = self->_port;
  }

  else
  {
    port = 0;
  }

  port = [v3 stringWithFormat:@"<Kernel/%@ port='%#08x'>", className, port];

  return port;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  className = [(GCIOObject *)self className];
  v7 = className;
  if (self)
  {
    port = self->_port;
  }

  else
  {
    port = 0;
  }

  port = [v3 stringWithFormat:@"<%@ %p Kernel/%@ port='%#08x'>", v5, self, className, port];

  return port;
}

@end