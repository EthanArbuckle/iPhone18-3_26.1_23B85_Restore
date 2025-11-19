@interface NSValue(DockState)
- (uint64_t)dockStateValue;
@end

@implementation NSValue(DockState)

- (uint64_t)dockStateValue
{
  *(x8_0 + 128) = 0xAAAAAAAAAAAAAAAALL;
  *(x8_0 + 64) = xmmword_25491C2F8;
  *(x8_0 + 80) = unk_25491C308;
  memset((x8_0 + 96), 170, 32);
  memset(x8_0, 170, 64);
  return [a1 getValue:?];
}

@end