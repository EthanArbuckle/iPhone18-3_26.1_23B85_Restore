@interface NSComparisonPredicate
@end

@implementation NSComparisonPredicate

void __66__NSComparisonPredicate_EDSearchableIndexExpressionGenerator__log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_87;
  log_log_87 = v1;
}

void __90__NSComparisonPredicate_EDSearchableIndexExpressionGenerator__ed_hasOnlySpotlightKeypaths__block_invoke()
{
  v0 = *MEMORY[0x1E699A880];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E699A9B0], *MEMORY[0x1E699A9B8], *MEMORY[0x1E699A858], *MEMORY[0x1E699A860], *MEMORY[0x1E699A818], *MEMORY[0x1E699A820], *MEMORY[0x1E699A980], *MEMORY[0x1E699A988], *MEMORY[0x1E699A920], *MEMORY[0x1E699A9D0], *MEMORY[0x1E699A970], *MEMORY[0x1E699A968], *MEMORY[0x1E699A880], *MEMORY[0x1E699A998], *MEMORY[0x1E699A8E0], 0}];
  v2 = ed_hasOnlySpotlightKeypaths_spotlightKeyPaths;
  ed_hasOnlySpotlightKeypaths_spotlightKeyPaths = v1;
}

@end