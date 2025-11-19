@interface UIView(MPUAdditions)
- (uint64_t)MPU_applyBoundsAndCenterForUntransformedFrame:()MPUAdditions;
@end

@implementation UIView(MPUAdditions)

- (uint64_t)MPU_applyBoundsAndCenterForUntransformedFrame:()MPUAdditions
{
  [a1 setBounds:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8)}];
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  MidY = CGRectGetMidY(v15);

  return [a1 setCenter:{MidX, MidY}];
}

@end