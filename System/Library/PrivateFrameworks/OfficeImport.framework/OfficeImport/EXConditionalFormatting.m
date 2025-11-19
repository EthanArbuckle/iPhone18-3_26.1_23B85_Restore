@interface EXConditionalFormatting
+ (void)readConditionalFormattingsFrom:(_xmlNode *)a3 x14:(BOOL)a4 state:(id)a5;
+ (void)readFrom:(_xmlNode *)a3 x14:(BOOL)a4 state:(id)a5;
@end

@implementation EXConditionalFormatting

+ (void)readConditionalFormattingsFrom:(_xmlNode *)a3 x14:(BOOL)a4 state:(id)a5
{
  v5 = a4;
  v8 = a5;
  v12 = v8;
  if (v5)
  {
    v9 = EXXL2010Namespace;
  }

  else
  {
    v9 = [v8 EXSpreadsheetMLNamespace];
  }

  v10 = v9;
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE && [v10 containsNode:i])
    {
      if (xmlStrEqual(i->name, "conditionalFormatting"))
      {
        [a1 readFrom:i x14:v5 state:v12];
      }
    }
  }
}

+ (void)readFrom:(_xmlNode *)a3 x14:(BOOL)a4 state:(id)a5
{
  v5 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v23 = a5;
  if (a3)
  {
    if (v5)
    {
      v7 = EXXL2010Namespace;
    }

    else
    {
      v7 = [v23 EXSpreadsheetMLNamespace];
    }

    v8 = v7;
    v9 = objc_alloc_init(EDConditionalFormatting);
    if (v5)
    {
      v10 = OCXFindChild(a3, EXMainNamespace, "sqref");
      if (!v10)
      {
        goto LABEL_21;
      }

      v11 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v10];
    }

    else
    {
      v28 = 0;
      CXOptionalStringAttribute(a3, CXNoNamespace, "sqref", &v28);
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
      v21 = a3;
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

      a3 = v21;
      goto LABEL_22;
    }

LABEL_21:
    v22 = 0;
    v14 = 0;
LABEL_22:
    for (j = OCXFindChild(a3, v8, "cfRule"); j; j = OCXFindNextChild(j, v8, "cfRule"))
    {
      [EXConditionalFormattingRule readFrom:j x14:v5 edConditionalFormatting:v9 edReference:v14 state:v23];
    }

    v19 = [v23 currentSheet];
    v20 = [v19 conditionalFormattings];

    [v20 addObject:v9];
  }
}

@end