@interface AAOverrideBattery
- (BOOL)isLow;
- (double)level;
- (int64_t)state;
- (int64_t)type;
@end

@implementation AAOverrideBattery

- (double)level
{
  MEMORY[0x1E69E5928](self);
  v4 = AAOverrideBattery.level.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (int64_t)state
{
  MEMORY[0x1E69E5928](self);
  v4 = AAOverrideBattery.state.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (int64_t)type
{
  MEMORY[0x1E69E5928](self);
  v4 = AAOverrideBattery.type.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (BOOL)isLow
{
  MEMORY[0x1E69E5928](self);
  AAOverrideBattery.isLow.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

@end