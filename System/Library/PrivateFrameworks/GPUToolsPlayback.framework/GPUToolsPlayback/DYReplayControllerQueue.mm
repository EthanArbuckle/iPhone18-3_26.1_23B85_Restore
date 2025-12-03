@interface DYReplayControllerQueue
- (DYReplayControllerQueue)init;
- (id).cxx_construct;
- (id)front;
- (void)clear;
- (void)pushBlock:(id)block;
@end

@implementation DYReplayControllerQueue

- (DYReplayControllerQueue)init
{
  v3.receiver = self;
  v3.super_class = DYReplayControllerQueue;
  return [(DYReplayControllerQueue *)&v3 init];
}

- (void)pushBlock:(id)block
{
  blockCopy = block;
  std::deque<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::push_back(self + 1, &blockCopy);
}

- (id)front
{
  v2 = MEMORY[0x253032370](*(*(*(self + 2) + ((*(self + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(self + 5) & 0x1FFLL)), a2);

  return v2;
}

- (void)clear
{
  while (*(self + 6))
  {
    std::deque<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::pop_front((self + 8));
  }
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end