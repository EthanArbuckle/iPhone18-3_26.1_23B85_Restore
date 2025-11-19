@interface NSAttributedString(MPUDynamicType)
- (BOOL)MPU_hasUniformFont;
- (id)MPU_attributedStringByUpdatingTextStyleFontsToPreferredTextStyleFonts;
- (id)MPU_tallestFontFromAttributes;
@end

@implementation NSAttributedString(MPUDynamicType)

- (id)MPU_attributedStringByUpdatingTextStyleFontsToPreferredTextStyleFonts
{
  v2 = [a1 mutableCopy];
  v3 = *MEMORY[0x277D740A8];
  v4 = [a1 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__NSAttributedString_MPUDynamicType__MPU_attributedStringByUpdatingTextStyleFontsToPreferredTextStyleFonts__block_invoke;
  v7[3] = &unk_27984C580;
  v5 = v2;
  v8 = v5;
  [a1 enumerateAttribute:v3 inRange:0 options:v4 usingBlock:{0, v7}];

  return v5;
}

- (BOOL)MPU_hasUniformFont
{
  v2 = [a1 length];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v7 = xmmword_25798B780;
  v4 = [a1 attribute:*MEMORY[0x277D740A8] atIndex:0 longestEffectiveRange:&v7 inRange:{0, v2}];
  return !v7 && *(&v7 + 1) == v3;
}

- (id)MPU_tallestFontFromAttributes
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v2 = [a1 length];
  if (v2)
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v7[3] = 0x10000000000000;
    v3 = *MEMORY[0x277D740A8];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__NSAttributedString_MPUDynamicType__MPU_tallestFontFromAttributes__block_invoke;
    v6[3] = &unk_27984C5A8;
    v6[4] = v7;
    v6[5] = &v8;
    [a1 enumerateAttribute:v3 inRange:0 options:v2 usingBlock:{0, v6}];
    _Block_object_dispose(v7, 8);
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

@end