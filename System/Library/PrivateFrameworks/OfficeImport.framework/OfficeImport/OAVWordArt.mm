@interface OAVWordArt
+ (unsigned)readTextAlign:(id)align;
+ (void)readFromManager:(id)manager toShape:(id)shape state:(id)state;
+ (void)readFromStyle:(id)style manager:(id)manager toCharacterProperties:(id)properties state:(id)state;
@end

@implementation OAVWordArt

+ (void)readFromManager:(id)manager toShape:(id)shape state:(id)state
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

  v31 = objc_alloc_init(OADPresetTextWarp);
  [(OADPresetTextWarp *)v31 setPresetTextWarpType:29];
  [properties setTextWarp:v31];
  shape = [managerCopy shape];
  v12 = OCXFindChild(shape, OAVOfficeMainNamespace, "textpath");
  v30 = CXDefaultStringAttribute(v12, CXNoNamespace, "style", 0);
  v35 = OAVReadComposite(v30);
  v13 = [v35 objectForKey:@"v-text-align"];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"left";
  }

  v29 = v14;
  v33 = [self readTextAlign:?];
  v28 = CXDefaultStringAttribute(v12, CXNoNamespace, "string", 0);
  v27 = [v28 mutableCopy];
  [v27 tc_replaceAllSubstr:@"\r\n" with:@"\r"];
  [v27 tc_replaceAllSubstr:@"\n" with:@"\r"];
  v15 = [v27 componentsSeparatedByString:@"\r"];
  for (i = 0; [v15 count] > i; ++i)
  {
    v17 = [v15 objectAtIndex:i];
    v18 = textBody;
    addParagraph = [textBody addParagraph];
    properties2 = [addParagraph properties];
    [properties2 setAlign:v33];
    if ([v17 length])
    {
      addRegularTextRun = [addParagraph addRegularTextRun];
      text = [addRegularTextRun text];
      [text setString:v17];

      properties3 = [addRegularTextRun properties];
      [self readFromStyle:v35 manager:managerCopy toCharacterProperties:properties3 state:stateCopy];
    }

    paragraphEndCharacterProperties = [addParagraph paragraphEndCharacterProperties];
    [self readFromStyle:v35 manager:managerCopy toCharacterProperties:paragraphEndCharacterProperties state:stateCopy];
    graphicProperties = [shapeCopy graphicProperties];
    if ([graphicProperties hasFill])
    {
      fill = [graphicProperties fill];
      [paragraphEndCharacterProperties setFill:fill];

      [graphicProperties setFill:0];
    }

    textBody = v18;
  }
}

+ (unsigned)readTextAlign:(id)align
{
  alignCopy = align;
  v4 = +[OAVWordArt(Private) readTextAlign:]::enumMap;
  if (!+[OAVWordArt(Private) readTextAlign:]::enumMap)
  {
    v5 = objc_alloc(MEMORY[0x277CBEAC0]);
    v6 = [MEMORY[0x277CCABB0] numberWithInt:3];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:5];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:5];
    v12 = [v5 initWithObjectsAndKeys:{v6, @"justify", v7, @"center", v8, @"left", v9, @"right", v10, @"letter-justify", v11, @"stretch-justify", 0}];
    v13 = +[OAVWordArt(Private) readTextAlign:]::enumMap;
    +[OAVWordArt(Private) readTextAlign:]::enumMap = v12;

    v4 = +[OAVWordArt(Private) readTextAlign:]::enumMap;
  }

  v14 = [v4 objectForKey:alignCopy];
  intValue = [v14 intValue];

  return intValue;
}

+ (void)readFromStyle:(id)style manager:(id)manager toCharacterProperties:(id)properties state:(id)state
{
  styleCopy = style;
  managerCopy = manager;
  propertiesCopy = properties;
  stateCopy = state;
  v12 = [styleCopy objectForKey:@"font-family"];
  v23 = v12;
  if (v12)
  {
    [propertiesCopy setLatinFont:v12];
  }

  v13 = [styleCopy objectForKey:@"font-size"];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"36pt";
  }

  *&v15 = OAVReadLength(v14);
  [propertiesCopy setSize:v15];
  v16 = [styleCopy objectForKey:@"font-weight"];
  [propertiesCopy setIsBold:{objc_msgSend(v16, "isEqualToString:", @"bold"}];
  v17 = [styleCopy objectForKey:@"font-style"];
  [propertiesCopy setIsItalic:{objc_msgSend(v17, "isEqualToString:", @"italic"}];
  v18 = [styleCopy objectForKey:@"text-decoration"];
  if ([v18 isEqualToString:@"underline"])
  {
    [propertiesCopy setUnderlineType:2];
  }

  [propertiesCopy setStrikeThroughType:{objc_msgSend(v18, "isEqualToString:", @"line-through"}];
  v19 = [styleCopy objectForKey:@"font-variant"];
  [v19 isEqualToString:@"small-caps"];
  v20 = managerCopy;
  v21 = [OAVFill readFromManager:managerCopy state:stateCopy];
  [propertiesCopy setFill:v21];
  v22 = [OAVStroke readFromManager:v20];
  [propertiesCopy setStroke:v22];
}

@end