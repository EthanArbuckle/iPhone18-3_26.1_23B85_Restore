@interface EXString
+ (id)cleanupWhitespace:(id)whitespace;
+ (id)edStringWithRunsFromXmlDivElement:(_xmlNode *)element state:(id)state;
+ (id)edStringWithRunsFromXmlStringElement:(_xmlNode *)element state:(id)state;
+ (id)edTextFromXmlStringElement:(_xmlNode *)element state:(id)state;
+ (id)readStringWithAsciiCodeFromXmlStringElement:(_xmlNode *)element;
+ (id)stringInEDString:(id)string forRunIndex:(unsigned int)index;
+ (id)stringInEDString:(id)string start:(unint64_t)start end:(unint64_t)end;
+ (void)buildEDString:(id)string fromChildrenOfNode:(_xmlNode *)node edFont:(id)font keepWhitespace:(BOOL)whitespace state:(id)state;
+ (void)buildEDString:(id)string fromNode:(_xmlNode *)node edFont:(id)font keepWhitespace:(BOOL)whitespace state:(id)state;
+ (void)buildEDString:(id)string fromText:(id)text edFont:(id)font keepWhitespace:(BOOL)whitespace state:(id)state;
+ (void)parseStringWithAsciiCode:(id)code;
@end

@implementation EXString

+ (id)edTextFromXmlStringElement:(_xmlNode *)element state:(id)state
{
  eXSpreadsheetMLNamespace = [state EXSpreadsheetMLNamespace];
  v7 = OCXFindChild(element, eXSpreadsheetMLNamespace, "t");

  if (v7 && ([self readStringWithAsciiCodeFromXmlStringElement:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [EDString edStringWithString:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)edStringWithRunsFromXmlStringElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v6 = objc_alloc_init(EDString);
  v32 = objc_alloc_init(MEMORY[0x277CCAB68]);
  eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
  Child = OCXFindChild(element, eXSpreadsheetMLNamespace, "r");

  if (!Child)
  {
    goto LABEL_29;
  }

  elementCopy = element;
  v31 = v6;
  v9 = 0;
  v10 = 0;
  do
  {
    eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
    v12 = OCXFindChild(Child, eXSpreadsheetMLNamespace2, "rPr");

    if (v12)
    {
      if (!v10)
      {
        v10 = +[(EDCollection *)EDRunsCollection];
      }

      eXSpreadsheetMLNamespace3 = [stateCopy EXSpreadsheetMLNamespace];
      v14 = OCXFindChild(v12, eXSpreadsheetMLNamespace3, "effectLst");

      if (v14)
      {
        workbookPart = [stateCopy workbookPart];
        officeArtState = [stateCopy officeArtState];
        v14 = [OAXEffect readEffectsFromXmlNode:v14 packagePart:workbookPart drawingState:officeArtState];
      }

      v17 = [EXFont edFontFromXmlFontElement:v12 inConditionalFormat:0 returnDefaultIfEmpty:1 state:stateCopy];
      resources = [stateCopy resources];
      v19 = [EDRun runWithCharIndex:v9 font:v17 effects:v14 resources:resources];

      [v10 addObject:v19];
    }

    eXSpreadsheetMLNamespace4 = [stateCopy EXSpreadsheetMLNamespace];
    v21 = OCXFindChild(Child, eXSpreadsheetMLNamespace4, "t");

    if (v21)
    {
      v22 = [self readStringWithAsciiCodeFromXmlStringElement:v21];
      v23 = v22;
      if (v22)
      {
        v24 = [v22 length];
        [v32 appendString:v23];
        v9 += v24;
      }
    }

    eXSpreadsheetMLNamespace5 = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace5, "r");
  }

  while (Child);
  element = elementCopy;
  v6 = v31;
  if (v10)
  {
    [(EDString *)v31 setRuns:v10];
  }

  else
  {
LABEL_29:
    if (![v32 length])
    {
      eXSpreadsheetMLNamespace6 = [stateCopy EXSpreadsheetMLNamespace];
      v27 = OCXFindChild(element, eXSpreadsheetMLNamespace6, "t");

      if (v27)
      {
        v28 = [self readStringWithAsciiCodeFromXmlStringElement:v27];
        if (v28)
        {
          [v32 appendString:v28];
        }
      }
    }

    v10 = 0;
  }

  if (v32)
  {
    [(EDString *)v6 setString:v32];
  }

  return v6;
}

+ (id)edStringWithRunsFromXmlDivElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  if (element)
  {
    v7 = +[EDString string];
    [self buildEDString:v7 fromNode:element edFont:0 keepWhitespace:0 state:stateCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)readStringWithAsciiCodeFromXmlStringElement:(_xmlNode *)element
{
  elementCopy = element;
  if (element)
  {
    elementCopy = [objc_alloc(MEMORY[0x277CCAB68]) tc_initWithContentOfXmlNode:element];
    if (!elementCopy)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    [self parseStringWithAsciiCode:elementCopy];
  }

  return elementCopy;
}

+ (void)parseStringWithAsciiCode:(id)code
{
  v24[1] = *MEMORY[0x277D85DE8];
  codeCopy = code;
  if ([codeCopy length] && objc_msgSend(codeCopy, "rangeOfString:", @"_x") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789abcdefABCDEF"];
    v4 = [codeCopy rangeOfString:@"_x"];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      while (1)
      {
        v5 = [codeCopy rangeOfString:@"_" options:0 range:{v4 + 2, objc_msgSend(codeCopy, "length") - (v4 + 2)}];
        v6 = v5;
        if (v5 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_28;
        }

        if (v5 == v4 + 6)
        {
          break;
        }

        v4 = [codeCopy rangeOfString:@"_x" options:0 range:{v5 + 1, objc_msgSend(codeCopy, "length") - (v5 + 1)}];
LABEL_27:
        if (v4 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_28;
        }
      }

      v7 = [codeCopy substringWithRange:{v4 + 2, 4}];
      v8 = &stru_286EE1130;
      if ([codeCopy length] >= (v6 + 7))
      {
        v8 = [codeCopy substringWithRange:{v6 + 1, 6}];
      }

      if (![v7 caseInsensitiveCompare:@"005F"] && -[__CFString hasPrefix:](v8, "hasPrefix:", @"x") && -[__CFString hasSuffix:](v8, "hasSuffix:", @"_") && (-[__CFString substringWithRange:](v8, "substringWithRange:", 1, 4), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "stringByTrimmingCharactersInSet:", v22), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", &stru_286EE1130), v10, v9, v11))
      {
        [codeCopy replaceCharactersInRange:v4 withString:{6, &stru_286EE1130}];
        v12 = [codeCopy rangeOfString:@"_x" options:0 range:{v4 + 7, objc_msgSend(codeCopy, "length") - (v4 + 7)}];
      }

      else
      {
        v13 = [v7 stringByTrimmingCharactersInSet:v22];
        v14 = [v13 isEqualToString:&stru_286EE1130];

        if (v14)
        {
          v23 = 0;
          v15 = [MEMORY[0x277CCAC80] scannerWithString:v7];
          [v15 scanHexInt:&v23];
          if (v23 >> 11 == 27)
          {
            v16 = 0;
          }

          else
          {
            for (i = 0; i != 4; ++i)
            {
              v24[0].i16[i] = [v7 characterAtIndex:i];
            }

            v18 = vadd_s16(v24[0], 0x2F002F002F002FLL);
            v19 = vcgt_u16(0x1A001A001A001ALL, vadd_s16(v24[0], 0x40004000400040));
            v20 = vshl_u16(vbsl_s8(vorr_s8(vcgt_u16(0xA000A000A000ALL, v18), v19), vbsl_s8(v19, vadd_s16(v24[0], 0x36003600360036), v18), vadd_s16(v24[0], 0x56005600560056)), 0x40008000CLL);
            v16 = v20.i16[0] | v20.i16[2] | ((v20.i32[0] | v20.i32[1]) >> 16);
          }

          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", v16];
          [codeCopy replaceCharactersInRange:v4 withString:{7, v21}];
          if ([codeCopy length] <= (v4 + 1))
          {
            v4 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v4 = [codeCopy rangeOfString:@"_x" options:0 range:{v4 + 1, objc_msgSend(codeCopy, "length") - (v4 + 1)}];
          }

          goto LABEL_26;
        }

        v12 = [codeCopy rangeOfString:@"_x" options:0 range:{v6 + 1, objc_msgSend(codeCopy, "length") - (v6 + 1)}];
      }

      v4 = v12;
LABEL_26:

      goto LABEL_27;
    }

LABEL_28:
  }
}

+ (void)buildEDString:(id)string fromChildrenOfNode:(_xmlNode *)node edFont:(id)font keepWhitespace:(BOOL)whitespace state:(id)state
{
  whitespaceCopy = whitespace;
  stringCopy = string;
  fontCopy = font;
  stateCopy = state;
  for (i = OCXFirstChild(node); i; i = OCXNextSibling(i))
  {
    v15 = xmlStrEqual(i->name, "br");
    type = i->type;
    if (type == XML_ELEMENT_NODE && v15 == 0)
    {
      [self buildEDString:stringCopy fromNode:i edFont:fontCopy keepWhitespace:whitespaceCopy state:stateCopy];
    }

    else if (type == XML_TEXT_NODE)
    {
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:i];
      [self buildEDString:stringCopy fromText:v18 edFont:fontCopy keepWhitespace:whitespaceCopy state:stateCopy];
    }

    else if (v15)
    {
      [self buildEDString:stringCopy fromText:@"\n" edFont:fontCopy keepWhitespace:1 state:stateCopy];
    }
  }
}

+ (void)buildEDString:(id)string fromNode:(_xmlNode *)node edFont:(id)font keepWhitespace:(BOOL)whitespace state:(id)state
{
  whitespaceCopy = whitespace;
  stringCopy = string;
  fontCopy = font;
  stateCopy = state;
  if (node)
  {
    v14 = [fontCopy copy];
    if (!v14)
    {
      v15 = [EDFont alloc];
      resources = [stateCopy resources];
      v14 = [(EDFont *)v15 initWithResources:resources];
    }

    if (xmlStrEqual(node->name, "font"))
    {
      selfCopy2 = self;
      v35 = 0;
      v29 = stringCopy;
      v17 = CXOptionalStringAttribute(node, CXNoNamespace, "face", &v35);
      v18 = v35;
      if (v17)
      {
        [(EDFont *)v14 setName:v18];
      }

      v34 = 0;
      if (CXOptionalLongAttribute(node, CXNoNamespace, "size", &v34))
      {
        [(EDFont *)v14 setHeight:v34];
      }

      v33 = 0;
      v19 = CXOptionalStringAttribute(node, CXNoNamespace, "color", &v33);
      v20 = v33;
      v21 = v20;
      if (v19)
      {
        if ([v20 isEqualToString:@"auto"])
        {
          resources2 = [stateCopy resources];
          [EDColorReference colorReferenceWithSystemColorID:11 resources:resources2];
        }

        else
        {
          intValue = [v21 intValue];
          resources2 = [stateCopy resources];
          [EDColorReference colorReferenceWithColorIndex:intValue resources:resources2];
        }
        v27 = ;

        [(EDFont *)v14 setColorReference:v27];
      }

      stringCopy = v29;
    }

    else
    {
      if (!xmlStrEqual(node->name, "span"))
      {
        if (xmlStrEqual(node->name, "b"))
        {
          [(EDFont *)v14 setBold:1];
        }

        else if (xmlStrEqual(node->name, "i"))
        {
          [(EDFont *)v14 setItalic:1];
        }

        else if (xmlStrEqual(node->name, "u"))
        {
          [(EDFont *)v14 setUnderline:1];
        }

        else
        {
          if (!xmlStrEqual(node->name, "s"))
          {
            if (xmlStrEqual(node->name, "sup"))
            {
              v28 = 1;
            }

            else
            {
              if (!xmlStrEqual(node->name, "sub"))
              {
                goto LABEL_20;
              }

              v28 = 2;
            }

            [(EDFont *)v14 setScript:v28];
            goto LABEL_20;
          }

          [(EDFont *)v14 setStrike:1];
        }

LABEL_20:
        [self buildEDString:stringCopy fromChildrenOfNode:node edFont:v14 keepWhitespace:whitespaceCopy state:stateCopy];

        goto LABEL_21;
      }

      selfCopy2 = self;
      v32 = &stru_286EE1130;
      CXOptionalStringAttribute(node, CXNoNamespace, "style", &v32);
      v18 = v32;
      v23 = OAVReadComposite(v18);
      v24 = [v23 objectForKey:@"mso-spacerun"];
      v25 = v24;
      if (v24)
      {
        whitespaceCopy = [v24 caseInsensitiveCompare:@"yes"] == 0;
      }
    }

    self = selfCopy2;
    goto LABEL_20;
  }

LABEL_21:
}

+ (void)buildEDString:(id)string fromText:(id)text edFont:(id)font keepWhitespace:(BOOL)whitespace state:(id)state
{
  stringCopy = string;
  textCopy = text;
  fontCopy = font;
  stateCopy = state;
  if (!whitespace)
  {
    v15 = [self cleanupWhitespace:textCopy];

    textCopy = v15;
  }

  if (textCopy && [textCopy length])
  {
    string = [stringCopy string];
    v17 = [string length];
    resources = [stateCopy resources];
    v19 = [EDRun runWithCharIndex:v17 font:fontCopy resources:resources];

    runs = [stringCopy runs];
    if ([runs count])
    {
      v21 = [runs objectAtIndex:{objc_msgSend(runs, "count") - 1}];
      v22 = v21;
      if (v21)
      {
        fontIndex = [v21 fontIndex];
        if (fontIndex == [v19 fontIndex])
        {
LABEL_13:
          if (string)
          {
            v24 = [string stringByAppendingString:textCopy];
          }

          else
          {
            v24 = textCopy;
          }

          [stringCopy setString:v24];
          if (string)
          {
          }

          goto LABEL_19;
        }
      }

      if (!runs)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v22 = 0;
      if (!runs)
      {
LABEL_11:
        runs = +[(EDCollection *)EDRunsCollection];
        [stringCopy setRuns:runs];
      }
    }

    [runs addObject:v19];
    goto LABEL_13;
  }

LABEL_19:
}

+ (id)stringInEDString:(id)string start:(unint64_t)start end:(unint64_t)end
{
  string = [string string];
  v8 = [string substringWithRange:{start, end - start}];

  return v8;
}

+ (id)stringInEDString:(id)string forRunIndex:(unsigned int)index
{
  v4 = *&index;
  stringCopy = string;
  runs = [stringCopy runs];
  v8 = [runs count];
  v9 = v4;

  if (v8 <= v4)
  {
    v17 = 0;
  }

  else
  {
    runs2 = [stringCopy runs];
    v11 = [runs2 objectAtIndex:v4];

    charIndex = [v11 charIndex];
    runs3 = [stringCopy runs];
    v14 = [runs3 count] - 1;
    if (v14 == v4)
    {
      string = [stringCopy string];
      charIndex2 = [string length];
    }

    else
    {
      string = [stringCopy runs];
      v4 = [string objectAtIndex:(v4 + 1)];
      charIndex2 = [v4 charIndex];
    }

    v17 = [self stringInEDString:stringCopy start:charIndex end:charIndex2];
    if (v14 != v9)
    {
    }
  }

  return v17;
}

+ (id)cleanupWhitespace:(id)whitespace
{
  whitespaceCopy = whitespace;
  tc_componentsSeparatedByWhitespace = [whitespaceCopy tc_componentsSeparatedByWhitespace];
  v5 = 0;
  v6 = [tc_componentsSeparatedByWhitespace count];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [tc_componentsSeparatedByWhitespace objectAtIndex:i];
      v9 = v8;
      if (v8 && [v8 length])
      {
        if (v5)
        {
          v10 = [v5 stringByAppendingString:@" "];
          v11 = [v10 stringByAppendingString:v9];

          v5 = v11;
        }

        else
        {
          v5 = v9;
        }
      }
    }
  }

  return v5;
}

@end