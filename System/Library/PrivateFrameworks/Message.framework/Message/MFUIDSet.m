@interface MFUIDSet
- (MFUIDSet)initWithUIDs:(id)a3;
- (MFUIDSet)initWithWrapper:(id)a3;
- (NSArray)uids;
- (int64_t)count;
@end

@implementation MFUIDSet

- (NSArray)uids
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1B0912A1C();
  MEMORY[0x1E69E5920](self);
  sub_1B039A494();
  v5 = sub_1B0E451A8();

  return v5;
}

- (int64_t)count
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v5 = sub_1B0912BA0();
  MEMORY[0x1E69E5920](self);
  return v5;
}

- (MFUIDSet)initWithWrapper:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  return sub_1B0912DB4(a3);
}

- (MFUIDSet)initWithUIDs:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  sub_1B039A494();
  v3 = sub_1B0E451B8();
  v6 = sub_1B0912F94(v3);
  MEMORY[0x1E69E5920](a3);
  return v6;
}

@end