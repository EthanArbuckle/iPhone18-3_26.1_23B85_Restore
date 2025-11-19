@interface NSCoder(HealthRecordServices)
- (void)hrs_failWithCocoaInvalidValueError;
- (void)hrs_failWithCocoaValueNotFoundError;
@end

@implementation NSCoder(HealthRecordServices)

- (void)hrs_failWithCocoaValueNotFoundError
{
  v2 = [MEMORY[0x277CCA9B8] hrs_cocoaValueNotFoundError];
  [a1 failWithError:v2];
}

- (void)hrs_failWithCocoaInvalidValueError
{
  v2 = [MEMORY[0x277CCA9B8] hrs_cocoaInvalidValueError];
  [a1 failWithError:v2];
}

@end