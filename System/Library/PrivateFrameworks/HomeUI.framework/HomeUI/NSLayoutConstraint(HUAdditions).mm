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
    v20 = [v7 widthAnchor];
    v19 = [v6 widthAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v21[0] = v18;
    v8 = [v7 heightAnchor];
    v9 = [v6 heightAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v21[1] = v10;
    v11 = [v7 centerXAnchor];
    v12 = [v6 centerXAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v21[2] = v13;
    v14 = [v7 centerYAnchor];

    v15 = [v6 centerYAnchor];

    v16 = [v14 constraintEqualToAnchor:v15];
    v21[3] = v16;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  }

  return v4;
}

@end