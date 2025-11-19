@interface PVImageBuffer
@end

@implementation PVImageBuffer

void __75__PVImageBuffer_JTAdditions__copyOfUIImageFromRectInPixels_atSizeInPixels___block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  copyOfUIImageFromRectInPixels_atSizeInPixels__screenScale = v0;
}

void __75__PVImageBuffer_JTAdditions__copyOfUIImageFromRectInPixels_atSizeInPixels___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 CGContext];
  v5 = [v3 format];
  [v5 bounds];
  Height = CGRectGetHeight(v14);
  CGContextTranslateCTM(v4, 0.0, Height);

  CGContextScaleCTM([v3 CGContext], 1.0, -1.0);
  v7 = [v3 CGContext];

  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = 0;
  v12 = 0;

  CGContextDrawImage(v7, *&v11, v10);
}

@end