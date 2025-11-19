@interface UIColor(HexColor)
+ (id)colorWithHexValue:()HexColor error:;
@end

@implementation UIColor(HexColor)

+ (id)colorWithHexValue:()HexColor error:
{
  v22[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 hasPrefix:@"#"] && objc_msgSend(v5, "length") >= 2)
  {
    v6 = [v5 substringFromIndex:1];

    v5 = v6;
  }

  v7 = [v5 length];
  if (v7 == 3)
  {
    v20 = a4;
    v8 = 1;
LABEL_8:
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = [v5 substringWithRange:{v9, v8, v20}];
      v13 = v12;
      if (v7 == 3)
      {
        v14 = [v12 stringByAppendingString:v12];

        v13 = v14;
      }

      v15 = [MEMORY[0x277CCAC80] scannerWithString:v13];
      v21 = 0;
      v11 &= [v15 scanHexInt:&v21];
      LODWORD(v16) = v21;
      v22[v10] = v16 / 255.0;

      ++v10;
      v9 += v8;
    }

    while (v10 != 3);
    if (v11)
    {
      v17 = [MEMORY[0x277D75348] colorWithRed:v22[0] green:v22[1] blue:v22[2] alpha:1.0];
      goto LABEL_18;
    }

    a4 = v20;
    if (v20)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if ([v5 length] == 6)
  {
    v20 = a4;
    v8 = 2;
    goto LABEL_8;
  }

  if (a4)
  {
LABEL_15:
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.diagnostics.invalidHexValue" code:-1 userInfo:0];
    *a4 = v17 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v17 = 0;
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end