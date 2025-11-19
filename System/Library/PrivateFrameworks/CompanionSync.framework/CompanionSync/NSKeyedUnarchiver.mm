@interface NSKeyedUnarchiver
@end

@implementation NSKeyedUnarchiver

uint64_t __55__NSKeyedUnarchiver_SYAdditions__sy_whitelistedClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v0 setWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  v7 = sy_whitelistedClasses_supportedClasses;
  sy_whitelistedClasses_supportedClasses = v6;

  return MEMORY[0x1EEE66BB8](v6, v7);
}

@end