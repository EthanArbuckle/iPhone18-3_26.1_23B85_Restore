@interface GCIOObject
- (BOOL)isEqualTo:(id)a3;
- (GCIOObject)init;
- (GCIOObject)initWithPort:(unsigned int)a3 error:(id *)a4;
- (NSString)className;
- (NSString)debugDescription;
- (NSString)description;
- (id)redactedDescription;
- (uint64_t)port;
- (void)dealloc;
@end

@implementation GCIOObject

- (GCIOObject)initWithPort:(unsigned int)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = GCIOObject;
  v6 = [(GCIOObject *)&v14 init];
  v7 = IOObjectRetain(a3);
  if (v7)
  {
    if (a4)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A5A0];
      v12 = v7;
      v15 = *MEMORY[0x1E696A580];
      v16[0] = @"Error incrementing port retain count.";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *a4 = [v10 errorWithDomain:v11 code:v12 userInfo:v13];

      a4 = 0;
    }
  }

  else
  {
    v6->_port = a3;
    a4 = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return a4;
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

- (BOOL)isEqualTo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (v4)
    {
      v5 = v4[2];
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
  v4 = [(GCIOObject *)self className];
  v5 = v4;
  if (self)
  {
    port = self->_port;
  }

  else
  {
    port = 0;
  }

  v7 = [v3 stringWithFormat:@"<Kernel/%@ port='%#08x'>", v4, port];

  return v7;
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
  v4 = [(GCIOObject *)self className];
  v5 = v4;
  if (self)
  {
    port = self->_port;
  }

  else
  {
    port = 0;
  }

  v7 = [v3 stringWithFormat:@"<Kernel/%@ port='%#08x'>", v4, port];

  return v7;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCIOObject *)self className];
  v7 = v6;
  if (self)
  {
    port = self->_port;
  }

  else
  {
    port = 0;
  }

  v9 = [v3 stringWithFormat:@"<%@ %p Kernel/%@ port='%#08x'>", v5, self, v6, port];

  return v9;
}

@end