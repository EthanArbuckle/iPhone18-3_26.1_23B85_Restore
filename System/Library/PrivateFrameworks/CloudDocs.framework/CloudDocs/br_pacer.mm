@interface br_pacer
- (void)dealloc;
@end

@implementation br_pacer

- (void)dealloc
{
  selfCopy = self;
  br_pacer_cancel(selfCopy);
  source = selfCopy->source;
  selfCopy->source = 0;

  timer = selfCopy->timer;
  selfCopy->timer = 0;

  queue = selfCopy->queue;
  selfCopy->queue = 0;

  event_block = selfCopy->event_block;
  if (event_block)
  {
    selfCopy->event_block = 0;
  }

  v7.receiver = selfCopy;
  v7.super_class = br_pacer;
  [(br_pacer *)&v7 dealloc];
}

@end