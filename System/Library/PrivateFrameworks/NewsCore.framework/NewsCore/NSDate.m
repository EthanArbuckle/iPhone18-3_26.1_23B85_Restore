@interface NSDate
@end

@implementation NSDate

uint64_t __58__NSDate_FCAdditions___fr_sharedYearAndMonthDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1EDB27830;
  qword_1EDB27830 = v0;

  v2 = qword_1EDB27830;

  return [v2 setDateFormat:@"yyyy-MM"];
}

@end