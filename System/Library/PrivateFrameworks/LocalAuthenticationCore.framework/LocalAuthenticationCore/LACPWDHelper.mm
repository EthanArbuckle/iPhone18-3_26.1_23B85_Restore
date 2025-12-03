@interface LACPWDHelper
- (id)uidForUUID:(id)d;
- (id)uidForUserName:(id)name;
@end

@implementation LACPWDHelper

- (id)uidForUUID:(id)d
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  [d getUUIDBytes:v6];
  v3 = getpwuuid(v6);
  if (v3)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3[4]];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)uidForUserName:(id)name
{
  v3 = getpwnam([name cStringUsingEncoding:4]);
  if (v3)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3[4]];
  }

  return v3;
}

@end