@interface EKSharedGregorianCalendarLock
@end

@implementation EKSharedGregorianCalendarLock

uint64_t ___EKSharedGregorianCalendarLock_block_invoke()
{
  _EKSharedGregorianCalendarLock_sharedGregorianCalendarLock = dispatch_queue_create("com.apple.calendar.foundation.sharedcalendarlock", 0);

  return MEMORY[0x1EEE66BB8]();
}

@end