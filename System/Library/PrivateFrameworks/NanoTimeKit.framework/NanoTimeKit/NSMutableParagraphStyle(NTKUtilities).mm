@interface NSMutableParagraphStyle(NTKUtilities)
+ (id)NTKHyphenationParagraphStyleWithFactor:()NTKUtilities;
@end

@implementation NSMutableParagraphStyle(NTKUtilities)

+ (id)NTKHyphenationParagraphStyleWithFactor:()NTKUtilities
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  v3 = v2;
  v4 = a1;
  if (a1 < 0.0)
  {
    v4 = 0.0;
  }

  v5 = fmin(v4, 1.0);
  *&v5 = v5;
  [v2 setHyphenationFactor:v5];
  [v3 setAllowsDefaultTighteningForTruncation:1];
  [v3 setLineBreakStrategy:0xFFFFLL];

  return v3;
}

@end