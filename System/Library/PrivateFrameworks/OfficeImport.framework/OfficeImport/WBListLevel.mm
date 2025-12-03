@interface WBListLevel
+ (int)numberFormatEnumFor:(int)for;
+ (void)readFrom:(id)from listLevel:(id)level format:(WrdListLevelFormat *)format document:(id)document;
+ (void)write:(id)write listLevel:(id)level format:(WrdListLevelFormat *)format;
@end

@implementation WBListLevel

+ (void)readFrom:(id)from listLevel:(id)level format:(WrdListLevelFormat *)format document:(id)document
{
  fromCopy = from;
  levelCopy = level;
  documentCopy = document;
  var1 = format->var1;
  v24 = levelCopy;
  v12 = levelCopy;
  v13 = documentCopy;
  paragraphProperties = [v12 paragraphProperties];
  [WBParagraphProperties readFrom:fromCopy wrdProperties:var1 tracked:0 document:documentCopy properties:paragraphProperties];

  characterProperties = [v24 characterProperties];
  [WBCharacterProperties readFrom:fromCopy wrdProperties:format->var2 tracked:0 document:documentCopy properties:characterProperties];
  if ([characterProperties isListCharacterPictureBulletOverridden] && objc_msgSend(characterProperties, "isListCharacterPictureBullet") && objc_msgSend(characterProperties, "isCharPositionOfPictureBulletInBookmarkOverridden"))
  {
    v16 = [documentCopy imageBulletWithCharacterOffset:{objc_msgSend(characterProperties, "charPositionOfPictureBulletInBookmark")}];
    [v24 setImage:v16];
  }

  [v24 setStartNumber:format->var3];
  [v24 setNumberFormat:format->var5];
  [v24 setRestartNumbering:(*(format + 80) & 2) == 0];
  [v24 setLegal:*(format + 80) & 1];
  [v24 setSuffix:format->var7];
  v17 = objc_autoreleasePoolPush();
  v18 = CFStringCreateWithBytes(0, format->var12, 2 * format->var11, 0x100u, 0);
  MutableCopy = CFStringCreateMutableCopy(0, 0, v18);
  CFRelease(v18);
  for (i = 0; [(__CFString *)MutableCopy length]> i; ++i)
  {
    v21 = [(__CFString *)MutableCopy characterAtIndex:i];
    if (v21 <= 8)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%%d", (v21 + 1)];
      [(__CFString *)MutableCopy replaceCharactersInRange:i++ withString:1, v22];

      documentCopy = v13;
    }
  }

  objc_autoreleasePoolPop(v17);
  [v24 setText:MutableCopy];
  [v24 setLegacy:(*(format + 80) >> 4) & 1];
  [v24 setLegacySpace:format->var9];
  [v24 setLegacyIndent:format->var10];
  [v24 setJustification:format->var6];
}

+ (void)write:(id)write listLevel:(id)level format:(WrdListLevelFormat *)format
{
  writeCopy = write;
  levelCopy = level;
  format->var3 = [levelCopy startNumber];
  format->var5 = [self numberFormatEnumFor:{objc_msgSend(levelCopy, "numberFormat")}];
  if ([levelCopy restartNumbering])
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  *(format + 80) = *(format + 80) & 0xFD | v9;
  *(format + 80) = *(format + 80) & 0xFE | [levelCopy legal];
  format->var7 = [levelCopy suffix];
  v10 = objc_autoreleasePoolPush();
  *format->var8 = 0;
  format->var8[8] = 0;
  v11 = MEMORY[0x277CCAB68];
  text = [levelCopy text];
  v13 = [v11 stringWithString:text];

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
        format->var8[v15++] = v14 + 1;
      }
    }

    ++v14;
  }

  v19 = [v13 dataUsingWordEncoding:1];
  bytes = [v19 bytes];
  v21 = [v19 length];
  WrdListLevelFormat::setNumberTextLength(format, (v21 >> 1));
  if (v21 >= 2)
  {
    v22 = 0;
    var12 = format->var12;
    do
    {
      var12[v22] = *(bytes + 2 * v22);
      ++v22;
    }

    while (v21 >> 1 != v22);
  }

  objc_autoreleasePoolPop(v10);
  format->var6 = [levelCopy justification];
  characterProperties = [levelCopy characterProperties];
  [WBCharacterProperties prepareForWriting:v30 properties:characterProperties wrdProperties:format->var2 tracked:0];

  WrdCharacterProperties::setCharacterTypeIDHint(format->var2, 0);
  paragraphProperties = [levelCopy paragraphProperties];
  var1 = format->var1;
  paragraphProperties2 = [levelCopy paragraphProperties];
  document = [paragraphProperties2 document];
  [WBParagraphProperties write:v30 properties:paragraphProperties wrdProperties:var1 tracked:0 document:document];
}

+ (int)numberFormatEnumFor:(int)for
{
  if (for == 60)
  {
    forCopy = 54;
  }

  else
  {
    forCopy = for;
  }

  if (forCopy == 61)
  {
    forCopy = 0;
  }

  if (forCopy == 62)
  {
    forCopy = 0;
  }

  if (forCopy == 63)
  {
    forCopy = 0;
  }

  if (forCopy == 64)
  {
    forCopy = 0;
  }

  if (forCopy == 65)
  {
    forCopy = 0;
  }

  if (forCopy == 66)
  {
    forCopy = 0;
  }

  if (forCopy == 67)
  {
    forCopy = 0;
  }

  if (forCopy == 68)
  {
    forCopy = 0;
  }

  if (forCopy == 69)
  {
    forCopy = 0;
  }

  if (forCopy == 70)
  {
    forCopy = 0;
  }

  if (forCopy == 71)
  {
    return 0;
  }

  else
  {
    return forCopy;
  }
}

@end