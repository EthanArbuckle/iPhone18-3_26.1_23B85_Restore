@interface MFBackFillMessageBodyScheduler.Request
- (BOOL)shouldDefer;
- (NSString)description;
- (unsigned)backFillID;
- (void)completeWithStatus:(int)status;
@end

@implementation MFBackFillMessageBodyScheduler.Request

- (unsigned)backFillID
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1B06C708C();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (BOOL)shouldDefer
{
  MEMORY[0x1E69E5928](self);
  sub_1B06C763C();
  MEMORY[0x1E69E5920](self);
  return sub_1B0E43368() & 1;
}

- (NSString)description
{
  MEMORY[0x1E69E5928](self);
  sub_1B06C9C1C();
  MEMORY[0x1E69E5920](self);
  v4 = sub_1B0E44AC8();

  return v4;
}

- (void)completeWithStatus:(int)status
{
  MEMORY[0x1E69E5928](self);
  sub_1B06C9DEC(status);
  MEMORY[0x1E69E5920](self);
}

@end