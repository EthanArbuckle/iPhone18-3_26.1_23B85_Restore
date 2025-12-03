@interface MRUTVRemoteService
+ (void)presentWithIdentifier:(id)identifier deviceType:(int64_t)type;
@end

@implementation MRUTVRemoteService

+ (void)presentWithIdentifier:(id)identifier deviceType:(int64_t)type
{
  v5 = MEMORY[0x1E69D60F8];
  identifierCopy = identifier;
  v7 = [v5 alloc];
  if (type)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v10 = [v7 initWithDeviceIdentifier:identifierCopy identifierType:0 deviceType:v8 launchContext:5 launchMethod:1];

  mEMORY[0x1E69D6100] = [MEMORY[0x1E69D6100] sharedInstance];
  [mEMORY[0x1E69D6100] presentWithContext:v10];
}

@end