@interface NSDate(FamilyCircle)
- (uint64_t)isDateRelative;
@end

@implementation NSDate(FamilyCircle)

- (uint64_t)isDateRelative
{
  fa_standardFormatter = [MEMORY[0x1E696AB78] fa_standardFormatter];
  v3 = [fa_standardFormatter stringFromDate:self];
  fa_standardFormatter2 = [MEMORY[0x1E696AB78] fa_standardFormatter];
  [fa_standardFormatter2 setDoesRelativeDateFormatting:0];
  v5 = [fa_standardFormatter2 stringFromDate:self];
  v6 = [v3 isEqualToString:v5];

  return v6 ^ 1u;
}

@end