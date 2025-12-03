@interface NSLayoutDimension(HUAdditions)
- (id)hu_constraintsLessThanOrEqualToConstant:()HUAdditions equalityPriority:;
@end

@implementation NSLayoutDimension(HUAdditions)

- (id)hu_constraintsLessThanOrEqualToConstant:()HUAdditions equalityPriority:
{
  v12[2] = *MEMORY[0x277D85DE8];
  v6 = [self constraintLessThanOrEqualToConstant:?];
  v12[0] = v6;
  v7 = [self constraintEqualToConstant:a2];
  *&v8 = a3;
  v9 = [v7 hu_constraintWithPriority:v8];
  v12[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  return v10;
}

@end