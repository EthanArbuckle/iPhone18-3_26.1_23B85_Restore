@interface OAVWordArt
+ (unsigned)readTextAlign:(id)a3;
+ (void)readFromManager:(id)a3 toShape:(id)a4 state:(id)a5;
+ (void)readFromStyle:(id)a3 manager:(id)a4 toCharacterProperties:(id)a5 state:(id)a6;
@end

@implementation OAVWordArt

+ (void)readFromManager:(id)a3 toShape:(id)a4 state:(id)a5
{
  v37 = a3;
  v34 = a4;
  v36 = a5;
  v8 = objc_alloc_init(OADPresetShapeGeometry);
  [(OADShapeGeometry *)v8 setIsEscher:1];
  [(OADPresetShapeGeometry *)v8 setType:1];
  [v34 setGeometry:v8];

  v9 = [v34 textBody];
  v32 = [v9 properties];
  v10 = +[OADTextBodyProperties defaultEscherWordArtProperties];
  [v32 setParent:v10];

  v31 = objc_alloc_init(OADPresetTextWarp);
  [(OADPresetTextWarp *)v31 setPresetTextWarpType:29];
  [v32 setTextWarp:v31];
  v11 = [v37 shape];
  v12 = OCXFindChild(v11, OAVOfficeMainNamespace, "textpath");
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
  v33 = [a1 readTextAlign:?];
  v28 = CXDefaultStringAttribute(v12, CXNoNamespace, "string", 0);
  v27 = [v28 mutableCopy];
  [v27 tc_replaceAllSubstr:@"\r\n" with:@"\r"];
  [v27 tc_replaceAllSubstr:@"\n" with:@"\r"];
  v15 = [v27 componentsSeparatedByString:@"\r"];
  for (i = 0; [v15 count] > i; ++i)
  {
    v17 = [v15 objectAtIndex:i];
    v18 = v9;
    v19 = [v9 addParagraph];
    v20 = [v19 properties];
    [v20 setAlign:v33];
    if ([v17 length])
    {
      v21 = [v19 addRegularTextRun];
      v22 = [v21 text];
      [v22 setString:v17];

      v23 = [v21 properties];
      [a1 readFromStyle:v35 manager:v37 toCharacterProperties:v23 state:v36];
    }

    v24 = [v19 paragraphEndCharacterProperties];
    [a1 readFromStyle:v35 manager:v37 toCharacterProperties:v24 state:v36];
    v25 = [v34 graphicProperties];
    if ([v25 hasFill])
    {
      v26 = [v25 fill];
      [v24 setFill:v26];

      [v25 setFill:0];
    }

    v9 = v18;
  }
}

+ (unsigned)readTextAlign:(id)a3
{
  v3 = a3;
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

  v14 = [v4 objectForKey:v3];
  v15 = [v14 intValue];

  return v15;
}

+ (void)readFromStyle:(id)a3 manager:(id)a4 toCharacterProperties:(id)a5 state:(id)a6
{
  v24 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v24 objectForKey:@"font-family"];
  v23 = v12;
  if (v12)
  {
    [v10 setLatinFont:v12];
  }

  v13 = [v24 objectForKey:@"font-size"];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"36pt";
  }

  *&v15 = OAVReadLength(v14);
  [v10 setSize:v15];
  v16 = [v24 objectForKey:@"font-weight"];
  [v10 setIsBold:{objc_msgSend(v16, "isEqualToString:", @"bold"}];
  v17 = [v24 objectForKey:@"font-style"];
  [v10 setIsItalic:{objc_msgSend(v17, "isEqualToString:", @"italic"}];
  v18 = [v24 objectForKey:@"text-decoration"];
  if ([v18 isEqualToString:@"underline"])
  {
    [v10 setUnderlineType:2];
  }

  [v10 setStrikeThroughType:{objc_msgSend(v18, "isEqualToString:", @"line-through"}];
  v19 = [v24 objectForKey:@"font-variant"];
  [v19 isEqualToString:@"small-caps"];
  v20 = v9;
  v21 = [OAVFill readFromManager:v9 state:v11];
  [v10 setFill:v21];
  v22 = [OAVStroke readFromManager:v20];
  [v10 setStroke:v22];
}

@end