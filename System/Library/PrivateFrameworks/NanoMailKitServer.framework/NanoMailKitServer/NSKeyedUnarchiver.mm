@interface NSKeyedUnarchiver
@end

@implementation NSKeyedUnarchiver

uint64_t __62__NSKeyedUnarchiver_NNMKUnarchivingUtils__nnmk_allowedClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  nnmk_allowedClasses_allowedClasses = [v0 setWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

@end