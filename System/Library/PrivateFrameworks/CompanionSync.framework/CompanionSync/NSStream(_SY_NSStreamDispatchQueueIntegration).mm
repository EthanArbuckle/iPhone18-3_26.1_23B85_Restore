@interface NSStream(_SY_NSStreamDispatchQueueIntegration)
- (uint64_t)_SY_notifyOnQueue:()_SY_NSStreamDispatchQueueIntegration handler:;
@end

@implementation NSStream(_SY_NSStreamDispatchQueueIntegration)

- (uint64_t)_SY_notifyOnQueue:()_SY_NSStreamDispatchQueueIntegration handler:
{
  objc_opt_class();

  return NSRequestConcreteImplementation();
}

@end