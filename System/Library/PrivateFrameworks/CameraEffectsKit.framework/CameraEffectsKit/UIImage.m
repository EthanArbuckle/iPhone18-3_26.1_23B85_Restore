@interface UIImage
@end

@implementation UIImage

void __45__UIImage_Additions__imageWithColor_andSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  CGContextSetFillColorWithColor([v3 CGContext], objc_msgSend(*(a1 + 32), "CGColor"));
  v4 = [v3 CGContext];

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);

  CGContextFillRect(v4, *&v5);
}

void __63__UIImage_Additions__extendedRangeSafeDrawInRect_opaque_scale___block_invoke_2()
{
  v0 = [@"Falling back to UIGraphicsBeginImageContextWithOptions which is not extended range safe! "];
}

CGColorSpaceRef __29__UIImage_Additions___isSRGB__block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  _isSRGB_s_sRGB = result;
  return result;
}

@end