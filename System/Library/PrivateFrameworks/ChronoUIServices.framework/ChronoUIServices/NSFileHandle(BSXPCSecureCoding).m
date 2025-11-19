@interface NSFileHandle(BSXPCSecureCoding)
- (id)initWithBSXPCCoder:()BSXPCSecureCoding;
- (void)encodeWithBSXPCCoder:()BSXPCSecureCoding;
@end

@implementation NSFileHandle(BSXPCSecureCoding)

- (void)encodeWithBSXPCCoder:()BSXPCSecureCoding
{
  v5 = a3;
  v4 = xpc_fd_create([a1 fileDescriptor]);
  [v5 encodeXPCObject:v4 forKey:@"fileDescriptor"];
}

- (id)initWithBSXPCCoder:()BSXPCSecureCoding
{
  v4 = [a3 decodeXPCObjectOfType:MEMORY[0x1E69E9EA0] forKey:@"fileDescriptor"];
  v5 = v4;
  if (v4)
  {
    a1 = [a1 initWithFileDescriptor:xpc_fd_dup(v4) closeOnDealloc:1];
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end