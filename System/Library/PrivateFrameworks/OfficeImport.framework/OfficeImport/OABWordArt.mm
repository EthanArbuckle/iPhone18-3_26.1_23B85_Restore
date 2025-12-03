@interface OABWordArt
+ (unsigned)readTextAlignment:(int)alignment;
+ (void)readFromShapeManager:(id)manager toCharacterProperties:(id)properties state:(id)state;
+ (void)readFromShapeManager:(id)manager toShape:(id)shape state:(id)state;
@end

@implementation OABWordArt

+ (void)readFromShapeManager:(id)manager toShape:(id)shape state:(id)state
{
  managerCopy = manager;
  shapeCopy = shape;
  stateCopy = state;
  v8 = objc_alloc_init(OADPresetShapeGeometry);
  [(OADShapeGeometry *)v8 setIsEscher:1];
  [(OADPresetShapeGeometry *)v8 setType:1];
  [shapeCopy setGeometry:v8];

  textBody = [shapeCopy textBody];
  properties = [textBody properties];
  v10 = +[OADTextBodyProperties defaultEscherWordArtProperties];
  [properties setParent:v10];

  v11 = objc_alloc_init(OADPresetTextWarp);
  [(OADPresetTextWarp *)v11 setPresetTextWarpType:29];
  [properties setTextWarp:v11];
  v29 = [self readTextAlignment:{objc_msgSend(managerCopy, "textPathTextAlignment")}];
  textPathUnicodeString = [managerCopy textPathUnicodeString];
  v26 = [textPathUnicodeString mutableCopy];
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
    v16 = textBody;
    addParagraph = [textBody addParagraph];
    properties2 = [addParagraph properties];
    [properties2 setAlign:v29];
    if ([v15 length])
    {
      addRegularTextRun = [addParagraph addRegularTextRun];
      text = [addRegularTextRun text];
      [text setString:v15];

      properties3 = [addRegularTextRun properties];
      [self readFromShapeManager:managerCopy toCharacterProperties:properties3 state:stateCopy];
    }

    paragraphEndCharacterProperties = [addParagraph paragraphEndCharacterProperties];
    [self readFromShapeManager:managerCopy toCharacterProperties:paragraphEndCharacterProperties state:stateCopy];
    graphicProperties = [shapeCopy graphicProperties];
    if ([graphicProperties hasFill])
    {
      fill = [graphicProperties fill];
      [paragraphEndCharacterProperties setFill:fill];

      [graphicProperties setFill:0];
    }

    v13 = v14 + 1;
    textBody = v16;
  }
}

+ (void)readFromShapeManager:(id)manager toCharacterProperties:(id)properties state:(id)state
{
  managerCopy = manager;
  propertiesCopy = properties;
  stateCopy = state;
  textPathFontFamily = [managerCopy textPathFontFamily];
  if (textPathFontFamily)
  {
    [propertiesCopy setLatinFont:textPathFontFamily];
  }

  *&v10 = EshFixedPointUtil::toFloat([managerCopy textPathFontSize]);
  [propertiesCopy setSize:v10];
  [propertiesCopy setIsBold:{objc_msgSend(managerCopy, "textPathBold")}];
  [propertiesCopy setIsItalic:{objc_msgSend(managerCopy, "textPathItalic")}];
  [propertiesCopy setUnderlineType:0];
  [managerCopy textPathSmallcaps];
  [propertiesCopy setStrikeThroughType:0];
  v11 = [OABFill readFillFromFillPropertiesManager:managerCopy state:stateCopy];
  [propertiesCopy setFill:v11];
  v12 = [OABStroke readStrokeFromShapeBaseManager:managerCopy state:stateCopy];
  [propertiesCopy setStroke:v12];
  v13 = [OABShadow readShadowFromShapeBaseManager:managerCopy state:stateCopy];
  [propertiesCopy setEffects:v13];
}

+ (unsigned)readTextAlignment:(int)alignment
{
  v3 = 0x50502000103uLL >> (8 * alignment);
  if (alignment >= 6)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 7;
}

@end