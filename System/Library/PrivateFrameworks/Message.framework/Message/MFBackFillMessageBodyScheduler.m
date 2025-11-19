@interface MFBackFillMessageBodyScheduler
- (BOOL)didSetCriteria;
- (EDAccountsProvider)accountProvider;
- (MFBackFillMessageBodyScheduler)initWithAccountsProvider:(id)a3;
- (OS_dispatch_queue)queue;
- (void)setDidSetCriteria:(BOOL)a3;
@end

@implementation MFBackFillMessageBodyScheduler

- (BOOL)didSetCriteria
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1B06BF800();
  MEMORY[0x1E69E5920](self);
  return sub_1B0E43368() & 1;
}

- (void)setDidSetCriteria:(BOOL)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v4 = sub_1B0E43378();
  sub_1B06BF8D0(v4 & 1);
  MEMORY[0x1E69E5920](self);
}

- (EDAccountsProvider)accountProvider
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v5 = sub_1B06BFB9C();
  MEMORY[0x1E69E5920](self);

  return v5;
}

- (OS_dispatch_queue)queue
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v5 = sub_1B06BFD5C();
  MEMORY[0x1E69E5920](self);

  return v5;
}

- (MFBackFillMessageBodyScheduler)initWithAccountsProvider:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  return sub_1B06BFDF4(a3);
}

@end