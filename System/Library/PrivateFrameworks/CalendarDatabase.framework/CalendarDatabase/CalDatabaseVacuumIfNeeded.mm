@interface CalDatabaseVacuumIfNeeded
@end

@implementation CalDatabaseVacuumIfNeeded

CFAbsoluteTime ___CalDatabaseVacuumIfNeeded_block_invoke()
{
  result = CFAbsoluteTimeGetCurrent() + -3.0;
  _CalDatabaseVacuumIfNeeded___LastVacuumTimestamp = *&result;
  return result;
}

@end