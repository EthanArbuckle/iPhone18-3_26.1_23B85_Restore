@interface NSCoder(HealthRecordServices)
- (void)hrs_failWithCocoaInvalidValueError;
- (void)hrs_failWithCocoaValueNotFoundError;
@end

@implementation NSCoder(HealthRecordServices)

- (void)hrs_failWithCocoaValueNotFoundError
{
  hrs_cocoaValueNotFoundError = [MEMORY[0x277CCA9B8] hrs_cocoaValueNotFoundError];
  [self failWithError:hrs_cocoaValueNotFoundError];
}

- (void)hrs_failWithCocoaInvalidValueError
{
  hrs_cocoaInvalidValueError = [MEMORY[0x277CCA9B8] hrs_cocoaInvalidValueError];
  [self failWithError:hrs_cocoaInvalidValueError];
}

@end