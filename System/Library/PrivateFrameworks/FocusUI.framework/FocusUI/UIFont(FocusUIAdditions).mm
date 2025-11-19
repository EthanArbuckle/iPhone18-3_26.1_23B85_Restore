@interface UIFont(FocusUIAdditions)
+ (id)fcui_excessiveLineHeightChars;
- (double)fcui_drawingHeightForText:()FocusUIAdditions withNumberOfLines:additionalPadding:;
- (double)fcui_measuringHeightForText:()FocusUIAdditions withNumberOfLines:;
- (uint64_t)fcui_effectiveLineHeightForText:()FocusUIAdditions;
- (uint64_t)fcui_effectiveScaledValueForValue:()FocusUIAdditions hasExuberatedLineHeight:;
- (uint64_t)fcui_hasExuberatedLineHeightForText:()FocusUIAdditions;
- (unint64_t)fcui_numberOfLinesForText:()FocusUIAdditions inFrame:maximum:drawingContext:;
@end

@implementation UIFont(FocusUIAdditions)

+ (id)fcui_excessiveLineHeightChars
{
  if (fcui_excessiveLineHeightChars_onceToken[0] != -1)
  {
    +[UIFont(FocusUIAdditions) fcui_excessiveLineHeightChars];
  }

  v1 = fcui_excessiveLineHeightChars___excessiveLineHeightChars;

  return v1;
}

- (uint64_t)fcui_hasExuberatedLineHeightForText:()FocusUIAdditions
{
  v4 = a3;
  if ([v4 length] && objc_msgSend(a1, "fcui_hasExuberatedLineHeight"))
  {
    v5 = [v4 fcui_containsExcessiveLineHeightCharacters];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)fcui_effectiveScaledValueForValue:()FocusUIAdditions hasExuberatedLineHeight:
{
  if (a4)
  {
    v6 = objc_opt_class();
    [a1 _scaledValueForValue:a2];

    return [v6 fcui_exuberatedValueForValue:?];
  }

  else
  {

    return [a1 _scaledValueForValue:?];
  }
}

- (uint64_t)fcui_effectiveLineHeightForText:()FocusUIAdditions
{
  if ([a1 fcui_hasExuberatedLineHeightForText:?])
  {
    v2 = objc_opt_class();
    [a1 lineHeight];

    return [v2 fcui_exuberatedValueForValue:?];
  }

  else
  {

    return [a1 lineHeight];
  }
}

- (unint64_t)fcui_numberOfLinesForText:()FocusUIAdditions inFrame:maximum:drawingContext:
{
  v20[1] = *MEMORY[0x277D85DE8];
  v14 = a7;
  v15 = a9;
  if ([v14 length])
  {
    if (a8 != 1)
    {
      if (!v15)
      {
        v15 = objc_alloc_init(MEMORY[0x277D74260]);
        [v15 setWantsNumberOfLineFragments:1];
      }

      v19 = *MEMORY[0x277D740A8];
      v20[0] = a1;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [v14 boundingRectWithSize:1 options:v16 attributes:v15 context:{a4, a5}];

      if (!a8)
      {
        a8 = -1;
      }

      v17 = [v15 numberOfLineFragments];
      if (a8 >= v17)
      {
        a8 = v17;
      }
    }
  }

  else
  {
    a8 = 0;
  }

  return a8;
}

- (double)fcui_measuringHeightForText:()FocusUIAdditions withNumberOfLines:
{
  v6 = a4;
  [a1 fcui_effectiveLineHeightForText:?];
  v8 = v7;
  v9 = a4 - 1;
  if (!a4)
  {
    v9 = 0;
  }

  v10 = v9;
  [a1 leading];
  return v11 * v10 + v6 * v8;
}

- (double)fcui_drawingHeightForText:()FocusUIAdditions withNumberOfLines:additionalPadding:
{
  v8 = [a1 fcui_hasExuberatedLineHeightForText:?];
  if (v8)
  {
    v9 = objc_opt_class();
    [a1 lineHeight];
    [v9 fcui_exuberatedValueForValue:?];
  }

  else
  {
    [a1 lineHeight];
  }

  v11 = v10;
  [a1 fcui_effectiveScaledValueForValue:v8 hasExuberatedLineHeight:a2];
  v13 = v12;
  [a1 leading];
  return (v13 + v11 + v14) * a5;
}

@end