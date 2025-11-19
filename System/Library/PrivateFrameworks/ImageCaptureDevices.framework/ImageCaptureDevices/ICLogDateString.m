@interface ICLogDateString
@end

@implementation ICLogDateString

void ____ICLogDateString_block_invoke()
{
  v0 = [MEMORY[0x29EDB8D98] currentCalendar];
  v1 = __ICLogDateString_currentCalendar;
  __ICLogDateString_currentCalendar = v0;

  __ICLogDateString_unitFlags = 1;
}

@end