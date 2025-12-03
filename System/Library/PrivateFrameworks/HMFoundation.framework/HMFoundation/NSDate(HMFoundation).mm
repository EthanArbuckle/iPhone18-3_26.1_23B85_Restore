@interface NSDate(HMFoundation)
+ (NSString)shortDescription;
- (id)hmf_dateComponents;
- (id)hmf_dateComponentsUsingTimeZone:()HMFoundation;
- (id)hmf_localTimeDescription;
@end

@implementation NSDate(HMFoundation)

+ (NSString)shortDescription
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

- (id)hmf_localTimeDescription
{
  if (qword_280AFC6B0 != -1)
  {
    dispatch_once(&qword_280AFC6B0, &__block_literal_global_40);
  }

  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  os_unfair_lock_lock_with_options();
  timeZone = [qword_280AFC6A8 timeZone];
  v4 = HMFEqualObjects(timeZone, localTimeZone);

  if ((v4 & 1) == 0)
  {
    [qword_280AFC6A8 setTimeZone:localTimeZone];
  }

  os_unfair_lock_unlock(&_MergedGlobals_72);
  v5 = [qword_280AFC6A8 stringFromDate:self];

  return v5;
}

- (id)hmf_dateComponents
{
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v3 = [self hmf_dateComponentsUsingTimeZone:localTimeZone];

  return v3;
}

- (id)hmf_dateComponentsUsingTimeZone:()HMFoundation
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  [currentCalendar setTimeZone:v5];

  v7 = [currentCalendar components:124 fromDate:self];

  return v7;
}

@end