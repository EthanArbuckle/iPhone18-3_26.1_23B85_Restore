@interface EXConditionalFormatting
+ (void)readConditionalFormattingsFrom:(_xmlNode *)from x14:(BOOL)x14 state:(id)state;
+ (void)readFrom:(_xmlNode *)from x14:(BOOL)x14 state:(id)state;
@end

@implementation EXConditionalFormatting

+ (void)readConditionalFormattingsFrom:(_xmlNode *)from x14:(BOOL)x14 state:(id)state
{
  x14Copy = x14;
  stateCopy = state;
  v12 = stateCopy;
  if (x14Copy)
  {
    eXSpreadsheetMLNamespace = EXXL2010Namespace;
  }

  else
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
  }

  v10 = eXSpreadsheetMLNamespace;
  for (i = OCXFirstChild(from); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE && [v10 containsNode:i])
    {
      if (xmlStrEqual(i->name, "conditionalFormatting"))
      {
        [self readFrom:i x14:x14Copy state:v12];
      }
    }
  }
}

+ (void)readFrom:(_xmlNode *)from x14:(BOOL)x14 state:(id)state
{
  x14Copy = x14;
  v30 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (from)
  {
    if (x14Copy)
    {
      eXSpreadsheetMLNamespace = EXXL2010Namespace;
    }

    else
    {
      eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    }

    v8 = eXSpreadsheetMLNamespace;
    v9 = objc_alloc_init(EDConditionalFormatting);
    if (x14Copy)
    {
      v10 = OCXFindChild(from, EXMainNamespace, "sqref");
      if (!v10)
      {
        goto LABEL_21;
      }

      v11 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v10];
    }

    else
    {
      v28 = 0;
      CXOptionalStringAttribute(from, CXNoNamespace, "sqref", &v28);
      v11 = v28;
    }

    if (v11)
    {
      v22 = v11;
      [EXReference edDiscontinousReferencesFromXmlRanges:?];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v12 = v25 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
      fromCopy = from;
      v14 = 0;
      if (v13)
      {
        v15 = *v25;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            if (v14)
            {
              [v14 unionWithReference:*(*(&v24 + 1) + 8 * i)];
            }

            else
            {
              v14 = [EDReference referenceWithReference:*(*(&v24 + 1) + 8 * i)];
            }

            [(EDConditionalFormatting *)v9 addRange:v17];
          }

          v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v13);
      }

      from = fromCopy;
      goto LABEL_22;
    }

LABEL_21:
    v22 = 0;
    v14 = 0;
LABEL_22:
    for (j = OCXFindChild(from, v8, "cfRule"); j; j = OCXFindNextChild(j, v8, "cfRule"))
    {
      [EXConditionalFormattingRule readFrom:j x14:x14Copy edConditionalFormatting:v9 edReference:v14 state:stateCopy];
    }

    currentSheet = [stateCopy currentSheet];
    conditionalFormattings = [currentSheet conditionalFormattings];

    [conditionalFormattings addObject:v9];
  }
}

@end