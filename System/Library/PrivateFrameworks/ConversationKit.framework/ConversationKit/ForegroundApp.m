@interface ForegroundApp
- (NSString)debugDescription;
@end

@implementation ForegroundApp

- (NSString)debugDescription
{
  v2 = self;
  v3 = ForegroundApp.debugDescription.getter();
  v5 = v4;

  v6 = MEMORY[0x1BFB209B0](v3, v5);

  return v6;
}

@end