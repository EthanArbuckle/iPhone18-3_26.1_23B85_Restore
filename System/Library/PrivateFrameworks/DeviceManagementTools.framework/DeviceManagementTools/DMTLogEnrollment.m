@interface DMTLogEnrollment
@end

@implementation DMTLogEnrollment

uint64_t ___DMTLogEnrollment_block_invoke()
{
  _DMTLogEnrollment_logObj = os_log_create("com.apple.devicemanagementtools", "Enrollment");

  return MEMORY[0x2821F96F8]();
}

@end