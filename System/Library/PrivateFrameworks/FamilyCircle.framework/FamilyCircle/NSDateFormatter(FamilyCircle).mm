@interface NSDateFormatter(FamilyCircle)
+ (id)fa_checklistDateFormatter;
+ (id)fa_standardFormatter;
@end

@implementation NSDateFormatter(FamilyCircle)

+ (id)fa_standardFormatter
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  [v0 setLocale:currentLocale];

  [v0 setTimeStyle:0];
  [v0 setDateStyle:1];
  [v0 setDoesRelativeDateFormatting:1];

  return v0;
}

+ (id)fa_checklistDateFormatter
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  [v0 setLocale:currentLocale];

  [v0 setLocalizedDateFormatFromTemplate:{@"MMMM d, yyyy"}];

  return v0;
}

@end