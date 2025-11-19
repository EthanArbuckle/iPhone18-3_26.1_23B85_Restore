@interface SFCustomUserAgentStringIfNeeded
@end

@implementation SFCustomUserAgentStringIfNeeded

void ___SFCustomUserAgentStringIfNeeded_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v1 = [v0 stringForKey:@"UserAgent"];

  v2 = _SFCustomUserAgentStringIfNeeded::customUserAgentString;
  _SFCustomUserAgentStringIfNeeded::customUserAgentString = v1;
}

@end