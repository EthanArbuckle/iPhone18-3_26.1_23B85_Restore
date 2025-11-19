@interface NSLayoutAnchor(HUAdditions)
- (id)hu_constraintsLessThanOrEqualToAnchor:()HUAdditions equalityPriority:;
@end

@implementation NSLayoutAnchor(HUAdditions)

- (id)hu_constraintsLessThanOrEqualToAnchor:()HUAdditions equalityPriority:
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a1 constraintLessThanOrEqualToAnchor:v6];
  v13[0] = v7;
  v8 = [a1 constraintEqualToAnchor:v6];

  *&v9 = a2;
  v10 = [v8 hu_constraintWithPriority:v9];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  return v11;
}

@end