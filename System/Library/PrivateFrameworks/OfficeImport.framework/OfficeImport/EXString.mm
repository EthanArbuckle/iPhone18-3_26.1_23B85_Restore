@interface EXString
+ (id)cleanupWhitespace:(id)a3;
+ (id)edStringWithRunsFromXmlDivElement:(_xmlNode *)a3 state:(id)a4;
+ (id)edStringWithRunsFromXmlStringElement:(_xmlNode *)a3 state:(id)a4;
+ (id)edTextFromXmlStringElement:(_xmlNode *)a3 state:(id)a4;
+ (id)readStringWithAsciiCodeFromXmlStringElement:(_xmlNode *)a3;
+ (id)stringInEDString:(id)a3 forRunIndex:(unsigned int)a4;
+ (id)stringInEDString:(id)a3 start:(unint64_t)a4 end:(unint64_t)a5;
+ (void)buildEDString:(id)a3 fromChildrenOfNode:(_xmlNode *)a4 edFont:(id)a5 keepWhitespace:(BOOL)a6 state:(id)a7;
+ (void)buildEDString:(id)a3 fromNode:(_xmlNode *)a4 edFont:(id)a5 keepWhitespace:(BOOL)a6 state:(id)a7;
+ (void)buildEDString:(id)a3 fromText:(id)a4 edFont:(id)a5 keepWhitespace:(BOOL)a6 state:(id)a7;
+ (void)parseStringWithAsciiCode:(id)a3;
@end

@implementation EXString

+ (id)edTextFromXmlStringElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = [a4 EXSpreadsheetMLNamespace];
  v7 = OCXFindChild(a3, v6, "t");

  if (v7 && ([a1 readStringWithAsciiCodeFromXmlStringElement:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
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

+ (id)edStringWithRunsFromXmlStringElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(EDString);
  v32 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7 = [v5 EXSpreadsheetMLNamespace];
  Child = OCXFindChild(a3, v7, "r");

  if (!Child)
  {
    goto LABEL_29;
  }

  v30 = a3;
  v31 = v6;
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = [v5 EXSpreadsheetMLNamespace];
    v12 = OCXFindChild(Child, v11, "rPr");

    if (v12)
    {
      if (!v10)
      {
        v10 = +[(EDCollection *)EDRunsCollection];
      }

      v13 = [v5 EXSpreadsheetMLNamespace];
      v14 = OCXFindChild(v12, v13, "effectLst");

      if (v14)
      {
        v15 = [v5 workbookPart];
        v16 = [v5 officeArtState];
        v14 = [OAXEffect readEffectsFromXmlNode:v14 packagePart:v15 drawingState:v16];
      }

      v17 = [EXFont edFontFromXmlFontElement:v12 inConditionalFormat:0 returnDefaultIfEmpty:1 state:v5];
      v18 = [v5 resources];
      v19 = [EDRun runWithCharIndex:v9 font:v17 effects:v14 resources:v18];

      [v10 addObject:v19];
    }

    v20 = [v5 EXSpreadsheetMLNamespace];
    v21 = OCXFindChild(Child, v20, "t");

    if (v21)
    {
      v22 = [a1 readStringWithAsciiCodeFromXmlStringElement:v21];
      v23 = v22;
      if (v22)
      {
        v24 = [v22 length];
        [v32 appendString:v23];
        v9 += v24;
      }
    }

    v25 = [v5 EXSpreadsheetMLNamespace];
    Child = OCXFindNextChild(Child, v25, "r");
  }

  while (Child);
  a3 = v30;
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
      v26 = [v5 EXSpreadsheetMLNamespace];
      v27 = OCXFindChild(a3, v26, "t");

      if (v27)
      {
        v28 = [a1 readStringWithAsciiCodeFromXmlStringElement:v27];
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

+ (id)edStringWithRunsFromXmlDivElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = +[EDString string];
    [a1 buildEDString:v7 fromNode:a3 edFont:0 keepWhitespace:0 state:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)readStringWithAsciiCodeFromXmlStringElement:(_xmlNode *)a3
{
  v3 = a3;
  if (a3)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB68]) tc_initWithContentOfXmlNode:a3];
    if (!v3)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    [a1 parseStringWithAsciiCode:v3];
  }

  return v3;
}

+ (void)parseStringWithAsciiCode:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length] && objc_msgSend(v3, "rangeOfString:", @"_x") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789abcdefABCDEF"];
    v4 = [v3 rangeOfString:@"_x"];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      while (1)
      {
        v5 = [v3 rangeOfString:@"_" options:0 range:{v4 + 2, objc_msgSend(v3, "length") - (v4 + 2)}];
        v6 = v5;
        if (v5 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_28;
        }

        if (v5 == v4 + 6)
        {
          break;
        }

        v4 = [v3 rangeOfString:@"_x" options:0 range:{v5 + 1, objc_msgSend(v3, "length") - (v5 + 1)}];
LABEL_27:
        if (v4 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_28;
        }
      }

      v7 = [v3 substringWithRange:{v4 + 2, 4}];
      v8 = &stru_286EE1130;
      if ([v3 length] >= (v6 + 7))
      {
        v8 = [v3 substringWithRange:{v6 + 1, 6}];
      }

      if (![v7 caseInsensitiveCompare:@"005F"] && -[__CFString hasPrefix:](v8, "hasPrefix:", @"x") && -[__CFString hasSuffix:](v8, "hasSuffix:", @"_") && (-[__CFString substringWithRange:](v8, "substringWithRange:", 1, 4), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "stringByTrimmingCharactersInSet:", v22), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", &stru_286EE1130), v10, v9, v11))
      {
        [v3 replaceCharactersInRange:v4 withString:{6, &stru_286EE1130}];
        v12 = [v3 rangeOfString:@"_x" options:0 range:{v4 + 7, objc_msgSend(v3, "length") - (v4 + 7)}];
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
          [v3 replaceCharactersInRange:v4 withString:{7, v21}];
          if ([v3 length] <= (v4 + 1))
          {
            v4 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v4 = [v3 rangeOfString:@"_x" options:0 range:{v4 + 1, objc_msgSend(v3, "length") - (v4 + 1)}];
          }

          goto LABEL_26;
        }

        v12 = [v3 rangeOfString:@"_x" options:0 range:{v6 + 1, objc_msgSend(v3, "length") - (v6 + 1)}];
      }

      v4 = v12;
LABEL_26:

      goto LABEL_27;
    }

LABEL_28:
  }
}

+ (void)buildEDString:(id)a3 fromChildrenOfNode:(_xmlNode *)a4 edFont:(id)a5 keepWhitespace:(BOOL)a6 state:(id)a7
{
  v8 = a6;
  v19 = a3;
  v12 = a5;
  v13 = a7;
  for (i = OCXFirstChild(a4); i; i = OCXNextSibling(i))
  {
    v15 = xmlStrEqual(i->name, "br");
    type = i->type;
    if (type == XML_ELEMENT_NODE && v15 == 0)
    {
      [a1 buildEDString:v19 fromNode:i edFont:v12 keepWhitespace:v8 state:v13];
    }

    else if (type == XML_TEXT_NODE)
    {
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:i];
      [a1 buildEDString:v19 fromText:v18 edFont:v12 keepWhitespace:v8 state:v13];
    }

    else if (v15)
    {
      [a1 buildEDString:v19 fromText:@"\n" edFont:v12 keepWhitespace:1 state:v13];
    }
  }
}

+ (void)buildEDString:(id)a3 fromNode:(_xmlNode *)a4 edFont:(id)a5 keepWhitespace:(BOOL)a6 state:(id)a7
{
  v31 = a6;
  v11 = a3;
  v12 = a5;
  v13 = a7;
  if (a4)
  {
    v14 = [v12 copy];
    if (!v14)
    {
      v15 = [EDFont alloc];
      v16 = [v13 resources];
      v14 = [(EDFont *)v15 initWithResources:v16];
    }

    if (xmlStrEqual(a4->name, "font"))
    {
      v30 = a1;
      v35 = 0;
      v29 = v11;
      v17 = CXOptionalStringAttribute(a4, CXNoNamespace, "face", &v35);
      v18 = v35;
      if (v17)
      {
        [(EDFont *)v14 setName:v18];
      }

      v34 = 0;
      if (CXOptionalLongAttribute(a4, CXNoNamespace, "size", &v34))
      {
        [(EDFont *)v14 setHeight:v34];
      }

      v33 = 0;
      v19 = CXOptionalStringAttribute(a4, CXNoNamespace, "color", &v33);
      v20 = v33;
      v21 = v20;
      if (v19)
      {
        if ([v20 isEqualToString:@"auto"])
        {
          v22 = [v13 resources];
          [EDColorReference colorReferenceWithSystemColorID:11 resources:v22];
        }

        else
        {
          v26 = [v21 intValue];
          v22 = [v13 resources];
          [EDColorReference colorReferenceWithColorIndex:v26 resources:v22];
        }
        v27 = ;

        [(EDFont *)v14 setColorReference:v27];
      }

      v11 = v29;
    }

    else
    {
      if (!xmlStrEqual(a4->name, "span"))
      {
        if (xmlStrEqual(a4->name, "b"))
        {
          [(EDFont *)v14 setBold:1];
        }

        else if (xmlStrEqual(a4->name, "i"))
        {
          [(EDFont *)v14 setItalic:1];
        }

        else if (xmlStrEqual(a4->name, "u"))
        {
          [(EDFont *)v14 setUnderline:1];
        }

        else
        {
          if (!xmlStrEqual(a4->name, "s"))
          {
            if (xmlStrEqual(a4->name, "sup"))
            {
              v28 = 1;
            }

            else
            {
              if (!xmlStrEqual(a4->name, "sub"))
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
        [a1 buildEDString:v11 fromChildrenOfNode:a4 edFont:v14 keepWhitespace:v31 state:v13];

        goto LABEL_21;
      }

      v30 = a1;
      v32 = &stru_286EE1130;
      CXOptionalStringAttribute(a4, CXNoNamespace, "style", &v32);
      v18 = v32;
      v23 = OAVReadComposite(v18);
      v24 = [v23 objectForKey:@"mso-spacerun"];
      v25 = v24;
      if (v24)
      {
        v31 = [v24 caseInsensitiveCompare:@"yes"] == 0;
      }
    }

    a1 = v30;
    goto LABEL_20;
  }

LABEL_21:
}

+ (void)buildEDString:(id)a3 fromText:(id)a4 edFont:(id)a5 keepWhitespace:(BOOL)a6 state:(id)a7
{
  v25 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (!a6)
  {
    v15 = [a1 cleanupWhitespace:v12];

    v12 = v15;
  }

  if (v12 && [v12 length])
  {
    v16 = [v25 string];
    v17 = [v16 length];
    v18 = [v14 resources];
    v19 = [EDRun runWithCharIndex:v17 font:v13 resources:v18];

    v20 = [v25 runs];
    if ([v20 count])
    {
      v21 = [v20 objectAtIndex:{objc_msgSend(v20, "count") - 1}];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 fontIndex];
        if (v23 == [v19 fontIndex])
        {
LABEL_13:
          if (v16)
          {
            v24 = [v16 stringByAppendingString:v12];
          }

          else
          {
            v24 = v12;
          }

          [v25 setString:v24];
          if (v16)
          {
          }

          goto LABEL_19;
        }
      }

      if (!v20)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v22 = 0;
      if (!v20)
      {
LABEL_11:
        v20 = +[(EDCollection *)EDRunsCollection];
        [v25 setRuns:v20];
      }
    }

    [v20 addObject:v19];
    goto LABEL_13;
  }

LABEL_19:
}

+ (id)stringInEDString:(id)a3 start:(unint64_t)a4 end:(unint64_t)a5
{
  v7 = [a3 string];
  v8 = [v7 substringWithRange:{a4, a5 - a4}];

  return v8;
}

+ (id)stringInEDString:(id)a3 forRunIndex:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [v6 runs];
  v8 = [v7 count];
  v9 = v4;

  if (v8 <= v4)
  {
    v17 = 0;
  }

  else
  {
    v10 = [v6 runs];
    v11 = [v10 objectAtIndex:v4];

    v12 = [v11 charIndex];
    v13 = [v6 runs];
    v14 = [v13 count] - 1;
    if (v14 == v4)
    {
      v15 = [v6 string];
      v16 = [v15 length];
    }

    else
    {
      v15 = [v6 runs];
      v4 = [v15 objectAtIndex:(v4 + 1)];
      v16 = [v4 charIndex];
    }

    v17 = [a1 stringInEDString:v6 start:v12 end:v16];
    if (v14 != v9)
    {
    }
  }

  return v17;
}

+ (id)cleanupWhitespace:(id)a3
{
  v3 = a3;
  v4 = [v3 tc_componentsSeparatedByWhitespace];
  v5 = 0;
  v6 = [v4 count];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [v4 objectAtIndex:i];
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