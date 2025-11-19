@interface NSString
@end

@implementation NSString

void __33__NSString__DKDeduping__dk_dedup__block_invoke()
{
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = dk_dedup_set;
  dk_dedup_set = v0;

  dk_dedup_lock = 0;
}

@end