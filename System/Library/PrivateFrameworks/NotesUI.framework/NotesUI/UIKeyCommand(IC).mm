@interface UIKeyCommand(IC)
+ (id)ic_keyCommandWithInput:()IC modifierFlags:action:discoverabilityTitle:;
+ (id)ic_keyCommandWithInput:()IC modifierFlags:action:discoverabilityTitle:image:;
@end

@implementation UIKeyCommand(IC)

+ (id)ic_keyCommandWithInput:()IC modifierFlags:action:discoverabilityTitle:
{
  v9 = MEMORY[0x1E69DCBA0];
  v10 = a6;
  v11 = [v9 keyCommandWithInput:a3 modifierFlags:a4 action:a5];
  [v11 setDiscoverabilityTitle:v10];

  return v11;
}

+ (id)ic_keyCommandWithInput:()IC modifierFlags:action:discoverabilityTitle:image:
{
  v11 = MEMORY[0x1E69DCBA0];
  v12 = a7;
  v13 = a6;
  v14 = [v11 keyCommandWithInput:a3 modifierFlags:a4 action:a5];
  [v14 setDiscoverabilityTitle:v13];

  [v14 setImage:v12];

  return v14;
}

@end