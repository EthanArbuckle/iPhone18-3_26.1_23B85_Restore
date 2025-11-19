@interface CHSMutableGlassOptions
- (CHSMutableGlassOptions)init;
@end

@implementation CHSMutableGlassOptions

- (CHSMutableGlassOptions)init
{
  v3.receiver = self;
  v3.super_class = CHSMutableGlassOptions;
  return [(CHSGlassOptions *)&v3 init];
}

@end