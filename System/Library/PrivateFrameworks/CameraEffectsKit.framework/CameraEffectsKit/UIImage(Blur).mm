@interface UIImage(Blur)
- (id)bluredImageWithFlippedXAxis:()Blur;
@end

@implementation UIImage(Blur)

- (id)bluredImageWithFlippedXAxis:()Blur
{
  v4 = [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(a1, "CGImage")}];
  v5 = [v4 bluredImageWithFlippedXAxis:a3];

  return v5;
}

@end