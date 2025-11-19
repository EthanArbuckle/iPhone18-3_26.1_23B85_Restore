@interface NSDate(GC)
+ (id)gc_dateWithMachAbsoluteTime:()GC;
+ (id)gc_dateWithMachContinuousTime:()GC;
@end

@implementation NSDate(GC)

+ (id)gc_dateWithMachAbsoluteTime:()GC
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  mach_get_times();
  v6 = 0;
  mach_timebase_info(&v6);
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:(v9 * v6.numer / v6.denom - v6.numer * a3 / v6.denom) / 1000000000.0 + v8 / 1000000000.0 + v7];

  return v4;
}

+ (id)gc_dateWithMachContinuousTime:()GC
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  mach_get_times();
  v6 = 0;
  mach_timebase_info(&v6);
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:(v9 * v6.numer / v6.denom - v6.numer * a3 / v6.denom) / 1000000000.0 + v8 / 1000000000.0 + v7];

  return v4;
}

@end