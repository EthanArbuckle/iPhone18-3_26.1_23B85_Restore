@interface NSLayoutConstraint(HUAdditions)
+ (id)hu_constraintsSizingAnchorProvider:()HUAdditions toAnchorProvider:;
@end

@implementation NSLayoutConstraint(HUAdditions)

+ (id)hu_constraintsSizingAnchorProvider:()HUAdditions toAnchorProvider:
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBF8];
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    widthAnchor = [v7 widthAnchor];
    widthAnchor2 = [v6 widthAnchor];
    v18 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v21[0] = v18;
    heightAnchor = [v7 heightAnchor];
    heightAnchor2 = [v6 heightAnchor];
    v10 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v21[1] = v10;
    centerXAnchor = [v7 centerXAnchor];
    centerXAnchor2 = [v6 centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v21[2] = v13;
    centerYAnchor = [v7 centerYAnchor];

    centerYAnchor2 = [v6 centerYAnchor];

    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v21[3] = v16;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  }

  return v4;
}

@end