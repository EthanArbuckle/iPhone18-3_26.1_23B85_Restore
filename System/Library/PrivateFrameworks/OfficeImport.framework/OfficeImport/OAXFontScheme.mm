@interface OAXFontScheme
+ (void)readFontScheme:(_xmlNode *)a3 toFontScheme:(id)a4 drawingState:(id)a5;
+ (void)readFontSchemeEntries:(_xmlNode *)a3 font:(id)a4;
+ (void)writeFont:(id)a3 elementName:(id)a4 to:(id)a5 state:(id)a6;
+ (void)writeFontScheme:(id)a3 to:(id)a4 state:(id)a5;
+ (void)writeTypeface:(id)a3 elementName:(id)a4 to:(id)a5 state:(id)a6;
@end

@implementation OAXFontScheme

+ (void)readFontScheme:(_xmlNode *)a3 toFontScheme:(id)a4 drawingState:(id)a5
{
  v16 = a4;
  v8 = a5;
  v9 = CXDefaultStringAttribute(a3, CXNoNamespace, "name", 0);
  [v16 setName:v9];

  v10 = [v8 OAXMainNamespace];
  v11 = OCXFindChild(a3, v10, "majorFont");

  if (v11)
  {
    v12 = [v16 majorFont];
    [a1 readFontSchemeEntries:v11 font:v12];
  }

  v13 = [v8 OAXMainNamespace];
  v14 = OCXFindChild(a3, v13, "minorFont");

  if (v14)
  {
    v15 = [v16 minorFont];
    [a1 readFontSchemeEntries:v14 font:v15];
  }
}

+ (void)readFontSchemeEntries:(_xmlNode *)a3 font:(id)a4
{
  v8 = a4;
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      v6 = CXRequiredStringAttribute(i, CXNoNamespace, "typeface");
      if (xmlStrEqual(i->name, "latin"))
      {
        [v8 setLatinFont:v6];
      }

      else if (xmlStrEqual(i->name, "ea"))
      {
        [v8 setEastAsianFont:v6];
      }

      else if (xmlStrEqual(i->name, "cs"))
      {
        [v8 setComplexScriptFont:v6];
      }

      else if (xmlStrEqual(i->name, "font"))
      {
        v7 = CXRequiredStringAttribute(i, CXNoNamespace, "script");
        [v8 setFont:v6 forScript:v7];
      }
    }
  }
}

+ (void)writeTypeface:(id)a3 elementName:(id)a4 to:(id)a5 state:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &stru_286EE1130;
  }

  v12 = v11;
  [v10 startElement:v9];
  [v10 writeAttribute:@"typeface" content:v12];
  [v10 endElement];
}

+ (void)writeFont:(id)a3 elementName:(id)a4 to:(id)a5 state:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [v11 startElement:v10];
  v13 = [v16 latinFont];
  [a1 writeTypeface:v13 elementName:@"latin" to:v11 state:v12];

  v14 = [v16 eastAsianFont];
  [a1 writeTypeface:v14 elementName:@"ea" to:v11 state:v12];

  v15 = [v16 complexScriptFont];
  [a1 writeTypeface:v15 elementName:@"cs" to:v11 state:v12];

  [v11 endElement];
}

+ (void)writeFontScheme:(id)a3 to:(id)a4 state:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  [v8 startElement:@"fontScheme"];
  v10 = [v13 name];
  [v8 writeAttribute:@"name" content:v10];

  v11 = [v13 majorFont];
  [a1 writeFont:v11 elementName:@"majorFont" to:v8 state:v9];

  v12 = [v13 minorFont];
  [a1 writeFont:v12 elementName:@"minorFont" to:v8 state:v9];

  [v8 endElement];
}

@end