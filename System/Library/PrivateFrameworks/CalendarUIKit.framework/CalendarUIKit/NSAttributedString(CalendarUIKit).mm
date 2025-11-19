@interface NSAttributedString(CalendarUIKit)
+ (double)cal_maximumWidthForStrings:()CalendarUIKit attributes:;
- (id)cal_stringWithNormalizedSpacesForUnitTesting;
@end

@implementation NSAttributedString(CalendarUIKit)

+ (double)cal_maximumWidthForStrings:()CalendarUIKit attributes:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:*(*(&v16 + 1) + 8 * i) attributes:v6];
        [v12 size];
        v14 = ceil(v13);
        if (v14 > v10)
        {
          v10 = v14;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (id)cal_stringWithNormalizedSpacesForUnitTesting
{
  v2 = objc_alloc(MEMORY[0x1E696AD40]);
  v3 = [a1 string];
  v4 = [v3 cal_stringWithNormalizedSpacesForUnitTesting];
  v5 = [v2 initWithString:v4];

  v6 = [v5 length];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__NSAttributedString_CalendarUIKit__cal_stringWithNormalizedSpacesForUnitTesting__block_invoke;
  v9[3] = &unk_1E839A430;
  v7 = v5;
  v10 = v7;
  [a1 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v9}];

  return v7;
}

@end