@interface IMXPCObject
+ (_xpc_type_s)type;
- (IMXPCObject)initWithCoder:(id)coder;
- (IMXPCObject)initWithXPCObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMXPCObject

- (IMXPCObject)initWithXPCObject:(id)object
{
  objectCopy = object;
  v6 = [(IMXPCObject *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
  }

  return v7;
}

+ (_xpc_type_s)type
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_object)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [coderCopy encodeXPCObject:self->_object forKey:@"_xpcObject"];
    }
  }
}

- (IMXPCObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [coderCopy decodeXPCObjectOfType:objc_msgSend(objc_opt_class() forKey:{"type"), @"_xpcObject"}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(IMXPCObject *)self initWithXPCObject:v5];

  return v6;
}

@end