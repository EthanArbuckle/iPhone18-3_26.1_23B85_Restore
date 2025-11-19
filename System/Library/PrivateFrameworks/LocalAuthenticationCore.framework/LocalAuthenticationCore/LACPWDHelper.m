@interface LACPWDHelper
- (id)uidForUUID:(id)a3;
- (id)uidForUserName:(id)a3;
@end

@implementation LACPWDHelper

- (id)uidForUUID:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  [a3 getUUIDBytes:v6];
  v3 = getpwuuid(v6);
  if (v3)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3[4]];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)uidForUserName:(id)a3
{
  v3 = getpwnam([a3 cStringUsingEncoding:4]);
  if (v3)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3[4]];
  }

  return v3;
}

@end