@interface DiagnosticExtensions_Subsystem
+ (id)initForPlugInKit;
@end

@implementation DiagnosticExtensions_Subsystem

+ (id)initForPlugInKit
{
  [MEMORY[0x277CCAEB0] _startListening];
  v2 = objc_opt_new();

  return v2;
}

@end