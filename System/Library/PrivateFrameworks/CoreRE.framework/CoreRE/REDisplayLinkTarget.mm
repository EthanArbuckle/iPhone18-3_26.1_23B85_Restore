@interface REDisplayLinkTarget
- (REDisplayLinkTarget)initWithClock:(void *)a3;
- (void)update;
- (void)updateOnQueue;
@end

@implementation REDisplayLinkTarget

- (REDisplayLinkTarget)initWithClock:(void *)a3
{
  v8.receiver = self;
  v8.super_class = REDisplayLinkTarget;
  v4 = [(REDisplayLinkTarget *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_clock = a3;
    v6 = v4;
  }

  return v5;
}

- (void)update
{
  clock = self->_clock;
  if (clock)
  {
    re::DisplayLinkClock::update(clock);
  }
}

- (void)updateOnQueue
{
  clock = self->_clock;
  if (clock)
  {
    v4 = clock[17];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__REDisplayLinkTarget_updateOnQueue__block_invoke;
    block[3] = &unk_1E871AA90;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

void __36__REDisplayLinkTarget_updateOnQueue__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    re::DisplayLinkClock::update(v1);
  }
}

@end