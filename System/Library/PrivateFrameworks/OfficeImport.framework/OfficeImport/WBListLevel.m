@interface WBListLevel
+ (int)numberFormatEnumFor:(int)a3;
+ (void)readFrom:(id)a3 listLevel:(id)a4 format:(WrdListLevelFormat *)a5 document:(id)a6;
+ (void)write:(id)a3 listLevel:(id)a4 format:(WrdListLevelFormat *)a5;
@end

@implementation WBListLevel

+ (void)readFrom:(id)a3 listLevel:(id)a4 format:(WrdListLevelFormat *)a5 document:(id)a6
{
  v23 = a3;
  v9 = a4;
  v10 = a6;
  var1 = a5->var1;
  v24 = v9;
  v12 = v9;
  v13 = v10;
  v14 = [v12 paragraphProperties];
  [WBParagraphProperties readFrom:v23 wrdProperties:var1 tracked:0 document:v10 properties:v14];

  v15 = [v24 characterProperties];
  [WBCharacterProperties readFrom:v23 wrdProperties:a5->var2 tracked:0 document:v10 properties:v15];
  if ([v15 isListCharacterPictureBulletOverridden] && objc_msgSend(v15, "isListCharacterPictureBullet") && objc_msgSend(v15, "isCharPositionOfPictureBulletInBookmarkOverridden"))
  {
    v16 = [v10 imageBulletWithCharacterOffset:{objc_msgSend(v15, "charPositionOfPictureBulletInBookmark")}];
    [v24 setImage:v16];
  }

  [v24 setStartNumber:a5->var3];
  [v24 setNumberFormat:a5->var5];
  [v24 setRestartNumbering:(*(a5 + 80) & 2) == 0];
  [v24 setLegal:*(a5 + 80) & 1];
  [v24 setSuffix:a5->var7];
  v17 = objc_autoreleasePoolPush();
  v18 = CFStringCreateWithBytes(0, a5->var12, 2 * a5->var11, 0x100u, 0);
  MutableCopy = CFStringCreateMutableCopy(0, 0, v18);
  CFRelease(v18);
  for (i = 0; [(__CFString *)MutableCopy length]> i; ++i)
  {
    v21 = [(__CFString *)MutableCopy characterAtIndex:i];
    if (v21 <= 8)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%%d", (v21 + 1)];
      [(__CFString *)MutableCopy replaceCharactersInRange:i++ withString:1, v22];

      v10 = v13;
    }
  }

  objc_autoreleasePoolPop(v17);
  [v24 setText:MutableCopy];
  [v24 setLegacy:(*(a5 + 80) >> 4) & 1];
  [v24 setLegacySpace:a5->var9];
  [v24 setLegacyIndent:a5->var10];
  [v24 setJustification:a5->var6];
}

+ (void)write:(id)a3 listLevel:(id)a4 format:(WrdListLevelFormat *)a5
{
  v29 = a3;
  v8 = a4;
  a5->var3 = [v8 startNumber];
  a5->var5 = [a1 numberFormatEnumFor:{objc_msgSend(v8, "numberFormat")}];
  if ([v8 restartNumbering])
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  *(a5 + 80) = *(a5 + 80) & 0xFD | v9;
  *(a5 + 80) = *(a5 + 80) & 0xFE | [v8 legal];
  a5->var7 = [v8 suffix];
  v10 = objc_autoreleasePoolPush();
  *a5->var8 = 0;
  a5->var8[8] = 0;
  v11 = MEMORY[0x277CCAB68];
  v12 = [v8 text];
  v13 = [v11 stringWithString:v12];

  v14 = 0;
  v15 = 0;
  while ([v13 length] > (v14 + 1))
  {
    v16 = [v13 characterAtIndex:v14];
    v31 = v16;
    if (v16 == 37)
    {
      v17 = [v13 characterAtIndex:v14 + 1];
      v31 = v17 - 49;
      if ((v17 - 49) <= 8)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithCharacters:&v31 length:1];
        [v13 replaceCharactersInRange:v14 withString:{2, v18}];
        a5->var8[v15++] = v14 + 1;
      }
    }

    ++v14;
  }

  v19 = [v13 dataUsingWordEncoding:1];
  v20 = [v19 bytes];
  v21 = [v19 length];
  WrdListLevelFormat::setNumberTextLength(a5, (v21 >> 1));
  if (v21 >= 2)
  {
    v22 = 0;
    var12 = a5->var12;
    do
    {
      var12[v22] = *(v20 + 2 * v22);
      ++v22;
    }

    while (v21 >> 1 != v22);
  }

  objc_autoreleasePoolPop(v10);
  a5->var6 = [v8 justification];
  v24 = [v8 characterProperties];
  [WBCharacterProperties prepareForWriting:v30 properties:v24 wrdProperties:a5->var2 tracked:0];

  WrdCharacterProperties::setCharacterTypeIDHint(a5->var2, 0);
  v25 = [v8 paragraphProperties];
  var1 = a5->var1;
  v27 = [v8 paragraphProperties];
  v28 = [v27 document];
  [WBParagraphProperties write:v30 properties:v25 wrdProperties:var1 tracked:0 document:v28];
}

+ (int)numberFormatEnumFor:(int)a3
{
  if (a3 == 60)
  {
    v3 = 54;
  }

  else
  {
    v3 = a3;
  }

  if (v3 == 61)
  {
    v3 = 0;
  }

  if (v3 == 62)
  {
    v3 = 0;
  }

  if (v3 == 63)
  {
    v3 = 0;
  }

  if (v3 == 64)
  {
    v3 = 0;
  }

  if (v3 == 65)
  {
    v3 = 0;
  }

  if (v3 == 66)
  {
    v3 = 0;
  }

  if (v3 == 67)
  {
    v3 = 0;
  }

  if (v3 == 68)
  {
    v3 = 0;
  }

  if (v3 == 69)
  {
    v3 = 0;
  }

  if (v3 == 70)
  {
    v3 = 0;
  }

  if (v3 == 71)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

@end