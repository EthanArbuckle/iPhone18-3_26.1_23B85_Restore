@interface NSMutableAttributedString(FIUISizing)
- (double)scaleFontAndKerningToFitSize:()FIUISizing minimumFontSize:minimumKerning:stillDidntFit:;
- (double)scaleFontSizeByAmount:()FIUISizing minimumFontSize:;
- (double)scaleNumericAttribute:()FIUISizing byAmount:;
- (uint64_t)scaleToFitWidth:()FIUISizing;
@end

@implementation NSMutableAttributedString(FIUISizing)

- (double)scaleFontSizeByAmount:()FIUISizing minimumFontSize:
{
  v6 = [a1 length];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  [a1 beginEditing];
  v7 = *MEMORY[0x1E69DB648];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__NSMutableAttributedString_FIUISizing__scaleFontSizeByAmount_minimumFontSize___block_invoke;
  v10[3] = &unk_1E878C498;
  *&v10[6] = a2;
  *&v10[7] = a3;
  v10[4] = a1;
  v10[5] = &v11;
  [a1 enumerateAttribute:v7 inRange:0 options:v6 usingBlock:{0x100000, v10}];
  [a1 endEditing];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (double)scaleNumericAttribute:()FIUISizing byAmount:
{
  v6 = a4;
  v7 = [a1 length];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x3FF0000000000000;
  [a1 beginEditing];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __72__NSMutableAttributedString_FIUISizing__scaleNumericAttribute_byAmount___block_invoke;
  v14 = &unk_1E878C4C0;
  v18 = a2;
  v17 = &v19;
  v15 = a1;
  v8 = v6;
  v16 = v8;
  [a1 enumerateAttribute:v8 inRange:0 options:v7 usingBlock:{0x100000, &v11}];
  [a1 endEditing];
  v9 = v20[3];

  _Block_object_dispose(&v19, 8);
  return v9;
}

- (uint64_t)scaleToFitWidth:()FIUISizing
{
  result = [a1 size];
  if (v5 > a2)
  {
    do
    {
      [a1 scaleFontSizeByAmount:0.94 minimumFontSize:1.0];
      v7 = v6;
      result = [a1 size];
    }

    while (v8 > a2 && v7 > 1.0);
  }

  return result;
}

- (double)scaleFontAndKerningToFitSize:()FIUISizing minimumFontSize:minimumKerning:stillDidntFit:
{
  v13 = *MEMORY[0x1E69DB660];
  v14 = 1;
  v15 = 1.79769313e308;
  v16 = 1.79769313e308;
  while ((v14 & 1) != 0)
  {
LABEL_10:
    [a1 boundingRectWithSize:1 options:0 context:{a2, 1.79769313e308}];
    v14 = 0;
    v20 = v19 > a3;
    if (v19 <= a3)
    {
      if (!a7)
      {
        return a2;
      }

      goto LABEL_12;
    }
  }

  if ([a1 length] && a2 > 0.0 && a3 > 0.0)
  {
    if (v16 <= a5)
    {
      if (v15 <= a4)
      {
        goto LABEL_14;
      }

      [a1 scaleFontSizeByAmount:0.85 minimumFontSize:a4];
      v15 = v18;
    }

    else
    {
      [a1 scaleNumericAttribute:v13 byAmount:0.8];
      v16 = v17;
    }

    goto LABEL_10;
  }

LABEL_14:
  [a1 boundingRectWithSize:1 options:0 context:{a2, 1.79769313e308}];
  v20 = v22 > a3;
  if (a7)
  {
LABEL_12:
    *a7 = v20;
  }

  return a2;
}

@end