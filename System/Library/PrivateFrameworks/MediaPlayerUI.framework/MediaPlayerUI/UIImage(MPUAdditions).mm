@interface UIImage(MPUAdditions)
+ (id)imageWithSize:()MPUAdditions opaque:fromBlock:;
- (id)scaledImageWithSize:()MPUAdditions;
@end

@implementation UIImage(MPUAdditions)

+ (id)imageWithSize:()MPUAdditions opaque:fromBlock:
{
  if (a6)
  {
    v9 = a6;
    v13.width = self;
    v13.height = a2;
    UIGraphicsBeginImageContextWithOptions(v13, a5, 0.0);
    v9[2](v9);

    v10 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)scaledImageWithSize:()MPUAdditions
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__UIImage_MPUAdditions__scaledImageWithSize___block_invoke;
  v5[3] = &unk_2798A34B0;
  v5[4] = self;
  *&v5[5] = a2;
  *&v5[6] = a3;
  v3 = [MEMORY[0x277D755B8] imageWithSize:0 opaque:v5 fromBlock:?];

  return v3;
}

@end