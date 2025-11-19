@interface FBPreferences
+ (id)sharedInstance;
- (id)_init;
- (void)_bindAndRegisterDefaults;
@end

@implementation FBPreferences

+ (id)sharedInstance
{
  if (sharedInstance___once_0 != -1)
  {
    +[FBPreferences sharedInstance];
  }

  v3 = sharedInstance___prefs;

  return v3;
}

void __31__FBPreferences_sharedInstance__block_invoke()
{
  v0 = [[FBPreferences alloc] _init];
  v1 = sharedInstance___prefs;
  sharedInstance___prefs = v0;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = FBPreferences;
  return [(BSAbstractDefaultDomain *)&v3 _initWithDomain:@"com.apple.frontboard"];
}

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableXPCServicesEndpointHack"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"disableXPCServicesEndpointHack" toDefaultValue:MEMORY[0x1E695E110] options:1];
}

@end