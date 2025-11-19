@interface NSXPCConnection(LNConnection)
- (void)ln_configureWithBundleIdentifier:()LNConnection interface:;
@end

@implementation NSXPCConnection(LNConnection)

- (void)ln_configureWithBundleIdentifier:()LNConnection interface:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"LNConnection.m" lineNumber:1108 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  [a1 setRemoteObjectInterface:v8];
  v12 = @"bundleIdentifier";
  v13[0] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [a1 setUserInfo:v9];

  v10 = *MEMORY[0x1E69E9840];
}

@end