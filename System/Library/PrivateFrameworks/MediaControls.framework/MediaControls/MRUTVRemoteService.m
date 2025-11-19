@interface MRUTVRemoteService
+ (void)presentWithIdentifier:(id)a3 deviceType:(int64_t)a4;
@end

@implementation MRUTVRemoteService

+ (void)presentWithIdentifier:(id)a3 deviceType:(int64_t)a4
{
  v5 = MEMORY[0x1E69D60F8];
  v6 = a3;
  v7 = [v5 alloc];
  if (a4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v10 = [v7 initWithDeviceIdentifier:v6 identifierType:0 deviceType:v8 launchContext:5 launchMethod:1];

  v9 = [MEMORY[0x1E69D6100] sharedInstance];
  [v9 presentWithContext:v10];
}

@end