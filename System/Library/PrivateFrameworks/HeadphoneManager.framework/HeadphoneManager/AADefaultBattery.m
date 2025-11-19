@interface AADefaultBattery
- (double)level;
- (int64_t)state;
- (int64_t)type;
@end

@implementation AADefaultBattery

- (double)level
{
  MEMORY[0x1E69E5928](self);
  v4 = AADefaultBattery.level.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (int64_t)state
{
  MEMORY[0x1E69E5928](self);
  v4 = AADefaultBattery.state.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (int64_t)type
{
  MEMORY[0x1E69E5928](self);
  v4 = AADefaultBattery.type.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

@end