@interface NSObject(JITAppKit)
+ (id)jitappkit:()JITAppKit;
@end

@implementation NSObject(JITAppKit)

+ (id)jitappkit:()JITAppKit
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v4 = +[TKApplication shared];
  v5 = [v4 loadObject:location[0]];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);

  return v5;
}

@end