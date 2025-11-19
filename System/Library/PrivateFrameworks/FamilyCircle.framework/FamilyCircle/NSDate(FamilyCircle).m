@interface NSDate(FamilyCircle)
- (uint64_t)isDateRelative;
@end

@implementation NSDate(FamilyCircle)

- (uint64_t)isDateRelative
{
  v2 = [MEMORY[0x1E696AB78] fa_standardFormatter];
  v3 = [v2 stringFromDate:a1];
  v4 = [MEMORY[0x1E696AB78] fa_standardFormatter];
  [v4 setDoesRelativeDateFormatting:0];
  v5 = [v4 stringFromDate:a1];
  v6 = [v3 isEqualToString:v5];

  return v6 ^ 1u;
}

@end