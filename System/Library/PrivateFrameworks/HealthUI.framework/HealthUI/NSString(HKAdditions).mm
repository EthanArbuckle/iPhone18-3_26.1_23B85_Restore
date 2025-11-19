@interface NSString(HKAdditions)
- (double)hk_boundingHeightWithWidth:()HKAdditions font:;
- (double)hk_boundingWidthWithHeight:()HKAdditions font:;
- (id)hk_attributedStringPrefixedWithImage:()HKAdditions baselineAdjusted:spacing:attributes:;
- (void)hk_drawInRect:()HKAdditions withAttributes:outlineWidth:outlineColor:context:;
@end

@implementation NSString(HKAdditions)

- (id)hk_attributedStringPrefixedWithImage:()HKAdditions baselineAdjusted:spacing:attributes:
{
  v10 = a4;
  v11 = a6;
  v12 = [MEMORY[0x1E695DF70] array];
  if (v10)
  {
    if (a2 < 0.0)
    {
      [v10 size];
      v14 = v13;
      [v10 size];
      v16 = v15 + a2;
      [v10 size];
      v18 = v17;
      [v10 size];
      v20 = v19 + a2;
      [v10 scale];
      v22 = v21;
      v34.width = v18;
      v34.height = v20;
      UIGraphicsBeginImageContextWithOptions(v34, 0, v22);
      [v10 drawInRect:{0.0, 0.0, v14, v16}];
      v23 = UIGraphicsGetImageFromCurrentImageContext();

      UIGraphicsEndImageContext();
      v10 = v23;
    }

    v24 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v24 setImage:v10];
    v25 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v24];
    v26 = [v25 mutableCopy];

    if (a2 != 0.0)
    {
      v27 = *MEMORY[0x1E69DB610];
      v28 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
      [v26 addAttribute:v27 value:v28 range:{0, 1}];
    }

    [v12 addObject:v26];
    if (a5 >= 1)
    {
      v29 = [MEMORY[0x1E696AAB0] hk_attributedStringForSpacing:a5];
      [v12 addObject:v29];
    }

    v30 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a1 attributes:v11];
    [v12 addObject:v30];
  }

  v31 = HKUIJoinAttributedStringsForLocale(v12);

  return v31;
}

- (double)hk_boundingHeightWithWidth:()HKAdditions font:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E69DB648];
  v12[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [a1 boundingRectWithSize:1 options:v8 attributes:0 context:{a2, 3.40282347e38}];
  Height = CGRectGetHeight(v13);

  return Height;
}

- (double)hk_boundingWidthWithHeight:()HKAdditions font:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E69DB648];
  v12[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [a1 boundingRectWithSize:1 options:v8 attributes:0 context:{3.40282347e38, a2}];
  Width = CGRectGetWidth(v13);

  return Width;
}

- (void)hk_drawInRect:()HKAdditions withAttributes:outlineWidth:outlineColor:context:
{
  v21[1] = *MEMORY[0x1E69E9840];
  v18 = a9;
  v19 = [HKStringDrawing stringDrawingWithText:a1 inRect:a8 withAttributes:a2, a3, a4, a5];
  v21[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [HKStringDrawing drawStrings:v20 outlineWidth:v18 outlineColor:a10 context:a6];
}

@end