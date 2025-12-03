@interface OAXFontScheme
+ (void)readFontScheme:(_xmlNode *)scheme toFontScheme:(id)fontScheme drawingState:(id)state;
+ (void)readFontSchemeEntries:(_xmlNode *)entries font:(id)font;
+ (void)writeFont:(id)font elementName:(id)name to:(id)to state:(id)state;
+ (void)writeFontScheme:(id)scheme to:(id)to state:(id)state;
+ (void)writeTypeface:(id)typeface elementName:(id)name to:(id)to state:(id)state;
@end

@implementation OAXFontScheme

+ (void)readFontScheme:(_xmlNode *)scheme toFontScheme:(id)fontScheme drawingState:(id)state
{
  fontSchemeCopy = fontScheme;
  stateCopy = state;
  v9 = CXDefaultStringAttribute(scheme, CXNoNamespace, "name", 0);
  [fontSchemeCopy setName:v9];

  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v11 = OCXFindChild(scheme, oAXMainNamespace, "majorFont");

  if (v11)
  {
    majorFont = [fontSchemeCopy majorFont];
    [self readFontSchemeEntries:v11 font:majorFont];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v14 = OCXFindChild(scheme, oAXMainNamespace2, "minorFont");

  if (v14)
  {
    minorFont = [fontSchemeCopy minorFont];
    [self readFontSchemeEntries:v14 font:minorFont];
  }
}

+ (void)readFontSchemeEntries:(_xmlNode *)entries font:(id)font
{
  fontCopy = font;
  for (i = OCXFirstChild(entries); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      v6 = CXRequiredStringAttribute(i, CXNoNamespace, "typeface");
      if (xmlStrEqual(i->name, "latin"))
      {
        [fontCopy setLatinFont:v6];
      }

      else if (xmlStrEqual(i->name, "ea"))
      {
        [fontCopy setEastAsianFont:v6];
      }

      else if (xmlStrEqual(i->name, "cs"))
      {
        [fontCopy setComplexScriptFont:v6];
      }

      else if (xmlStrEqual(i->name, "font"))
      {
        v7 = CXRequiredStringAttribute(i, CXNoNamespace, "script");
        [fontCopy setFont:v6 forScript:v7];
      }
    }
  }
}

+ (void)writeTypeface:(id)typeface elementName:(id)name to:(id)to state:(id)state
{
  typefaceCopy = typeface;
  nameCopy = name;
  toCopy = to;
  if (typefaceCopy)
  {
    v11 = typefaceCopy;
  }

  else
  {
    v11 = &stru_286EE1130;
  }

  v12 = v11;
  [toCopy startElement:nameCopy];
  [toCopy writeAttribute:@"typeface" content:v12];
  [toCopy endElement];
}

+ (void)writeFont:(id)font elementName:(id)name to:(id)to state:(id)state
{
  fontCopy = font;
  nameCopy = name;
  toCopy = to;
  stateCopy = state;
  [toCopy startElement:nameCopy];
  latinFont = [fontCopy latinFont];
  [self writeTypeface:latinFont elementName:@"latin" to:toCopy state:stateCopy];

  eastAsianFont = [fontCopy eastAsianFont];
  [self writeTypeface:eastAsianFont elementName:@"ea" to:toCopy state:stateCopy];

  complexScriptFont = [fontCopy complexScriptFont];
  [self writeTypeface:complexScriptFont elementName:@"cs" to:toCopy state:stateCopy];

  [toCopy endElement];
}

+ (void)writeFontScheme:(id)scheme to:(id)to state:(id)state
{
  schemeCopy = scheme;
  toCopy = to;
  stateCopy = state;
  [toCopy startElement:@"fontScheme"];
  name = [schemeCopy name];
  [toCopy writeAttribute:@"name" content:name];

  majorFont = [schemeCopy majorFont];
  [self writeFont:majorFont elementName:@"majorFont" to:toCopy state:stateCopy];

  minorFont = [schemeCopy minorFont];
  [self writeFont:minorFont elementName:@"minorFont" to:toCopy state:stateCopy];

  [toCopy endElement];
}

@end