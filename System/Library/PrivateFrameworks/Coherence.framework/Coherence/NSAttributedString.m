@interface NSAttributedString
@end

@implementation NSAttributedString

void __91__NSAttributedString_CRTT__Coherence_enumerateClampedAttribute_inRange_options_usingBlock___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, uint64_t a5)
{
  v11 = a2;
  v9 = *(a1 + 32);
  v13.location = a3;
  v13.length = a4;
  v10 = NSIntersectionRange(*(*(*(a1 + 40) + 8) + 48), v13);
  (*(v9 + 16))(v9, v11, v10.location, v10.length, a5);
  *(*(*(a1 + 40) + 8) + 56) += *(*(*(a1 + 40) + 8) + 48) - (a3 + a4);
  *(*(*(a1 + 40) + 8) + 48) = a3 + a4;
}

@end