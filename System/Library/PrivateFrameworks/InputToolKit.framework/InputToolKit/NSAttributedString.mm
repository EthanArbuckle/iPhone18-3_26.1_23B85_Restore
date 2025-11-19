@interface NSAttributedString
@end

@implementation NSAttributedString

void __84__NSAttributedString_ITK__itk_enumerateClampedAttribute_inRange_options_usingBlock___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  v13 = a2;
  v15.location = v11;
  v15.length = v12;
  v16.location = a3;
  v16.length = a4;
  v14 = NSIntersectionRange(v15, v16);
  (*(v9 + 16))(v9, v13, v14.location, v14.length, a5);

  *(*(*(a1 + 40) + 8) + 40) += *(*(*(a1 + 40) + 8) + 32) - (a3 + a4);
  *(*(*(a1 + 40) + 8) + 32) = a3 + a4;
}

@end