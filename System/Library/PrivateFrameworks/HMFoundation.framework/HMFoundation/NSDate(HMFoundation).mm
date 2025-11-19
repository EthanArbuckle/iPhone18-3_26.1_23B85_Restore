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

  v2 = [MEMORY[0x277CBEBB0] localTimeZone];
  os_unfair_lock_lock_with_options();
  v3 = [qword_280AFC6A8 timeZone];
  v4 = HMFEqualObjects(v3, v2);

  if ((v4 & 1) == 0)
  {
    [qword_280AFC6A8 setTimeZone:v2];
  }

  os_unfair_lock_unlock(&_MergedGlobals_72);
  v5 = [qword_280AFC6A8 stringFromDate:a1];

  return v5;
}

- (id)hmf_dateComponents
{
  v2 = [MEMORY[0x277CBEBB0] localTimeZone];
  v3 = [a1 hmf_dateComponentsUsingTimeZone:v2];

  return v3;
}

- (id)hmf_dateComponentsUsingTimeZone:()HMFoundation
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  [v6 setTimeZone:v5];

  v7 = [v6 components:124 fromDate:a1];

  return v7;
}

@end