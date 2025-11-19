@interface PARSession
@end

@implementation PARSession

uint64_t __48__PARSession_FCAddition__fc_sharedParsecSession__block_invoke()
{
  v0 = [MEMORY[0x1E6998670] sharedSession];
  v1 = qword_1EDB27590;
  qword_1EDB27590 = v0;

  v2 = qword_1EDB27590;

  return [v2 start];
}

@end