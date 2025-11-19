@interface CPLShouldLogQOS
@end

@implementation CPLShouldLogQOS

void ____CPLShouldLogQOS_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  __CPLShouldLogQOS_debugQOS = [v0 BOOLForKey:@"CPLDebugQOS"];
}

@end