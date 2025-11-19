@interface NSUUID(RTExtensions)
+ (id)nilUUID;
- (id)dataRepresentation;
@end

@implementation NSUUID(RTExtensions)

+ (id)nilUUID
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v3];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

- (id)dataRepresentation
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  [a1 getUUIDBytes:v4];
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:16];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

@end