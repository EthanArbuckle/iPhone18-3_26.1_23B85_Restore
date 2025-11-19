@interface NTKFaceDebugAPLSnapshotWithBaseImage
@end

@implementation NTKFaceDebugAPLSnapshotWithBaseImage

uint64_t ___NTKFaceDebugAPLSnapshotWithBaseImage_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [*(a1 + 32) drawInRect:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  CGContextSetRGBFillColor(v3, 0.0, 0.0, 0.0, 0.5);
  v8 = [MEMORY[0x277D75208] bezierPathWithRect:{v4, v5, v6, v7}];
  v9 = [v8 CGPath];

  CGContextAddPath(v3, v9);
  CGContextDrawPath(v3, kCGPathFill);
  v10 = (*(a1 + 56) - *(a1 + 64)) * 0.5;
  v11 = *(a1 + 40);

  return [v11 drawAtPoint:{0.0, v10}];
}

@end