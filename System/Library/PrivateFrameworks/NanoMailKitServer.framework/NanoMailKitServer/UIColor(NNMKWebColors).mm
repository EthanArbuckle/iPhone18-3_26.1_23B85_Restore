@interface UIColor(NNMKWebColors)
+ (id)colorWithWebColor:()NNMKWebColors;
+ (id)colorWithWebColorName:()NNMKWebColors;
+ (id)colorWithWebHexTriplet:()NNMKWebColors;
+ (id)colorWithWebRgb:()NNMKWebColors;
@end

@implementation UIColor(NNMKWebColors)

+ (id)colorWithWebColor:()NNMKWebColors
{
  v3 = a3;
  v4 = [MEMORY[0x277D75348] colorWithWebColorName:v3];
  if (!v4)
  {
    v4 = [MEMORY[0x277D75348] colorWithWebRgb:v3];
    if (!v4)
    {
      v4 = [MEMORY[0x277D75348] colorWithWebHexTriplet:v3];
    }
  }

  v5 = v4;

  return v5;
}

+ (id)colorWithWebColorName:()NNMKWebColors
{
  v3 = colorWithWebColorName__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[UIColor(NNMKWebColors) colorWithWebColorName:];
  }

  v5 = __colorsByColorNames;
  v6 = [v4 lowercaseString];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

+ (id)colorWithWebRgb:()NNMKWebColors
{
  v3 = a3;
  v4 = v3;
  if (v3 && ((v5 = [v3 hasPrefix:@"rgb"], (v5 & 1) != 0) || objc_msgSend(v4, "hasPrefix:", @"hsl")))
  {
    v6 = objc_msgSend(v4, "rangeOfString:", @"(");
    v7 = [v4 rangeOfString:@""]);
    v8 = 0;
    if (v6 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v44 = v5;
      v43 = [v4 substringWithRange:{v6 + 1, v7 - (v6 + 1)}];
      v9 = [v43 componentsSeparatedByString:{@", "}];
      v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
      if ([v9 count])
      {
        v11 = 0;
        while (1)
        {
          v12 = [v9 objectAtIndexedSubscript:v11];
          v13 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v14 = [v12 stringByTrimmingCharactersInSet:v13];

          if ([v14 hasSuffix:@"%"])
          {
            v15 = [v14 substringToIndex:{objc_msgSend(v14, "length") - 1}];
            v16 = [v15 integerValue];

            v17 = MEMORY[0x277CCABB0];
            v18 = v16 / 100.0;
          }

          else
          {
            if ([v14 rangeOfString:@"."] != 0x7FFFFFFFFFFFFFFFLL)
            {
              [v14 floatValue];
              v22 = MEMORY[0x277CCABB0];
LABEL_16:
              v23 = [v22 numberWithFloat:?];
              goto LABEL_26;
            }

            v19 = [v14 integerValue];
            v20 = v44 ^ 1;
            if (v11 == 3)
            {
              v20 = 1;
            }

            if (v20)
            {
              if (v11)
              {
                v24 = 1;
              }

              else
              {
                v24 = v44;
              }

              if (v24)
              {
                if (v19 > 1)
                {
                  v8 = 0;
                  goto LABEL_37;
                }

                v22 = MEMORY[0x277CCABB0];
                goto LABEL_16;
              }

              v21 = MEMORY[0x277CCABB0];
              v18 = v19 / 360.0;
            }

            else
            {
              v21 = MEMORY[0x277CCABB0];
              v18 = v19 / 255.0;
            }

            v17 = v21;
          }

          v23 = [v17 numberWithDouble:v18];
LABEL_26:
          v25 = v23;
          [v10 addObject:v23];

          v26 = [v9 count];
          if (v11 <= 2 && ++v11 < v26)
          {
            continue;
          }

          break;
        }
      }

      v27 = [v10 count];
      if (v27 <= 3)
      {
        v28 = v27 - 4;
        do
        {
          [v10 addObject:&unk_286C7BD28];
        }

        while (!__CFADD__(v28++, 1));
      }

      v30 = MEMORY[0x277D75348];
      v14 = [v10 objectAtIndexedSubscript:0];
      [v14 floatValue];
      v32 = v31;
      v33 = [v10 objectAtIndexedSubscript:1];
      [v33 floatValue];
      v35 = v34;
      v36 = [v10 objectAtIndexedSubscript:2];
      [v36 floatValue];
      v38 = v37;
      v39 = [v10 objectAtIndexedSubscript:3];
      [v39 floatValue];
      v41 = v40;
      if (v44)
      {
        [v30 colorWithRed:v32 green:v35 blue:v38 alpha:v41];
      }

      else
      {
        [v30 colorWithHue:v32 saturation:v35 brightness:v38 alpha:v41];
      }
      v8 = ;

LABEL_37:
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)colorWithWebHexTriplet:()NNMKWebColors
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_11;
  }

  if ([v3 hasPrefix:@"#"])
  {
    v5 = [v4 substringFromIndex:1];

    v4 = v5;
  }

  if ([v4 length] == 3)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C%C%C%C%C%C", objc_msgSend(v4, "characterAtIndex:", 0), objc_msgSend(v4, "characterAtIndex:", 0), objc_msgSend(v4, "characterAtIndex:", 1), objc_msgSend(v4, "characterAtIndex:", 1), objc_msgSend(v4, "characterAtIndex:", 2), objc_msgSend(v4, "characterAtIndex:", 2)];

    v4 = v6;
  }

  if ([v4 length] != 6)
  {
    goto LABEL_11;
  }

  v21 = 255;
  v22 = 255;
  v23 = 255;
  v7 = MEMORY[0x277CCAC80];
  v8 = [v4 substringWithRange:{0, 2}];
  v9 = [v7 scannerWithString:v8];
  v10 = [v9 scanHexInt:&v23];

  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = MEMORY[0x277CCAC80];
  v12 = [v4 substringWithRange:{2, 2}];
  v13 = [v11 scannerWithString:v12];
  v14 = [v13 scanHexInt:&v22];

  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = MEMORY[0x277CCAC80];
  v16 = [v4 substringWithRange:{4, 2}];
  v17 = [v15 scannerWithString:v16];
  v18 = [v17 scanHexInt:&v21];

  if (v18)
  {
    v19 = [MEMORY[0x277D75348] colorWithRed:v23 / 255.0 green:v22 / 255.0 blue:v21 / 255.0 alpha:1.0];
  }

  else
  {
LABEL_11:
    v19 = 0;
  }

  return v19;
}

@end