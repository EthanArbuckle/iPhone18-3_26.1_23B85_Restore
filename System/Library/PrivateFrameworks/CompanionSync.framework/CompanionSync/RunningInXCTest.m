@interface RunningInXCTest
@end

@implementation RunningInXCTest

void ___RunningInXCTest_block_invoke()
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v1 processName];
  _RunningInXCTest___value = [v0 isEqualToString:@"xctest"];
}

@end