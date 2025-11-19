@interface CSLDeviceIsVictory
@end

@implementation CSLDeviceIsVictory

void ___CSLDeviceIsVictory_block_invoke()
{
  v0 = MGCopyAnswer();
  _CSLDeviceIsVictory_isVictory = [v0 intValue] == 2;
}

@end