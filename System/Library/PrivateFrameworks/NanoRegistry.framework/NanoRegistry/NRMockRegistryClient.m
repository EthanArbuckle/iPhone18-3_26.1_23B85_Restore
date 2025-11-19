@interface NRMockRegistryClient
- (NRMockRegistryClient)init;
@end

@implementation NRMockRegistryClient

- (NRMockRegistryClient)init
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"NRRegistryPlatformSupportsWatch";
  v8[0] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [(NRRegistryClient *)self initWithParameters:v3];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

@end