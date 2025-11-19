@interface CHSAvocadoDescriptor
+ (void)load;
@end

@implementation CHSAvocadoDescriptor

+ (void)load
{
  v2 = MEMORY[0x1E696ACD0];
  v3 = objc_opt_class();

  [v2 setClass:v3 forClassName:@"CHSAvocadoDescriptor"];
}

@end