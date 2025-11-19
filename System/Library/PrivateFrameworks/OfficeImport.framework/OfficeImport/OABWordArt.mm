@interface OABWordArt
+ (unsigned)readTextAlignment:(int)a3;
+ (void)readFromShapeManager:(id)a3 toCharacterProperties:(id)a4 state:(id)a5;
+ (void)readFromShapeManager:(id)a3 toShape:(id)a4 state:(id)a5;
@end

@implementation OABWordArt

+ (void)readFromShapeManager:(id)a3 toShape:(id)a4 state:(id)a5
{
  v32 = a3;
  v30 = a4;
  v31 = a5;
  v8 = objc_alloc_init(OADPresetShapeGeometry);
  [(OADShapeGeometry *)v8 setIsEscher:1];
  [(OADPresetShapeGeometry *)v8 setType:1];
  [v30 setGeometry:v8];

  v9 = [v30 textBody];
  v28 = [v9 properties];
  v10 = +[OADTextBodyProperties defaultEscherWordArtProperties];
  [v28 setParent:v10];

  v11 = objc_alloc_init(OADPresetTextWarp);
  [(OADPresetTextWarp *)v11 setPresetTextWarpType:29];
  [v28 setTextWarp:v11];
  v29 = [a1 readTextAlignment:{objc_msgSend(v32, "textPathTextAlignment")}];
  v27 = [v32 textPathUnicodeString];
  v26 = [v27 mutableCopy];
  [v26 tc_replaceAllSubstr:@"\r\n" with:@"\r"];
  [v26 tc_replaceAllSubstr:@"\n" with:@"\r"];
  v25 = v11;
  v12 = [v26 componentsSeparatedByString:@"\r"];
  v13 = 0;
  while (1)
  {
    v14 = v13;
    if ([v12 count] <= v13)
    {
      break;
    }

    v15 = [v12 objectAtIndex:v13];
    v16 = v9;
    v17 = [v9 addParagraph];
    v18 = [v17 properties];
    [v18 setAlign:v29];
    if ([v15 length])
    {
      v19 = [v17 addRegularTextRun];
      v20 = [v19 text];
      [v20 setString:v15];

      v21 = [v19 properties];
      [a1 readFromShapeManager:v32 toCharacterProperties:v21 state:v31];
    }

    v22 = [v17 paragraphEndCharacterProperties];
    [a1 readFromShapeManager:v32 toCharacterProperties:v22 state:v31];
    v23 = [v30 graphicProperties];
    if ([v23 hasFill])
    {
      v24 = [v23 fill];
      [v22 setFill:v24];

      [v23 setFill:0];
    }

    v13 = v14 + 1;
    v9 = v16;
  }
}

+ (void)readFromShapeManager:(id)a3 toCharacterProperties:(id)a4 state:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v14 textPathFontFamily];
  if (v9)
  {
    [v7 setLatinFont:v9];
  }

  *&v10 = EshFixedPointUtil::toFloat([v14 textPathFontSize]);
  [v7 setSize:v10];
  [v7 setIsBold:{objc_msgSend(v14, "textPathBold")}];
  [v7 setIsItalic:{objc_msgSend(v14, "textPathItalic")}];
  [v7 setUnderlineType:0];
  [v14 textPathSmallcaps];
  [v7 setStrikeThroughType:0];
  v11 = [OABFill readFillFromFillPropertiesManager:v14 state:v8];
  [v7 setFill:v11];
  v12 = [OABStroke readStrokeFromShapeBaseManager:v14 state:v8];
  [v7 setStroke:v12];
  v13 = [OABShadow readShadowFromShapeBaseManager:v14 state:v8];
  [v7 setEffects:v13];
}

+ (unsigned)readTextAlignment:(int)a3
{
  v3 = 0x50502000103uLL >> (8 * a3);
  if (a3 >= 6)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 7;
}

@end