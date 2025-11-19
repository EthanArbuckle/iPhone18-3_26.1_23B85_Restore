@interface CSEmbeddedFBSDisplayConfiguration
@end

@implementation CSEmbeddedFBSDisplayConfiguration

void ___CSEmbeddedFBSDisplayConfiguration_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E699FAC0]);
  v3 = [MEMORY[0x1E6979328] mainDisplay];
  v1 = [v0 initWithCADisplay:v3];
  v2 = _CSEmbeddedFBSDisplayConfiguration_mainDisplayConfiguration;
  _CSEmbeddedFBSDisplayConfiguration_mainDisplayConfiguration = v1;
}

@end