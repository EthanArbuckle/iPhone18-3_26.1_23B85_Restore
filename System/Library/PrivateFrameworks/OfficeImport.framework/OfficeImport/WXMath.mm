@interface WXMath
+ (void)readMathRootFrom:(_xmlNode *)a3 paragraphNamespace:(_xmlNs *)a4 to:(id)a5 targetRun:(id)a6 state:(id)a7;
+ (void)readMathRunFrom:(_xmlNode *)a3 to:(id)a4 justification:(int)a5 state:(id)a6;
@end

@implementation WXMath

+ (void)readMathRootFrom:(_xmlNode *)a3 paragraphNamespace:(_xmlNs *)a4 to:(id)a5 targetRun:(id)a6 state:(id)a7
{
  v23 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [v13 drawingState];
  v15 = [v14 OAXMathNamespace];

  if ([(CXNamespace *)v15 containsNode:a3])
  {
    if (xmlStrEqual(a3->name, "oMathPara"))
    {
      v16 = OCXFindChild(a3, v15, "oMathParaPr");
      if (v16)
      {
        v17 = OCXFindChild(v16, v15, "jc");
        if (v17)
        {
          v18 = CXDefaultStringAttribute(v17, v15, "val", 0);
          if ([v18 length])
          {
            v19 = WXMathJustificationEnumMap();
            v20 = [v19 valueForString:v18];

            if (v20 == -130883970)
            {
              v21 = 1;
            }

            else
            {
              v21 = v20;
            }
          }

          else
          {
            v21 = 1;
          }
        }

        else
        {
          v21 = 1;
        }
      }

      else
      {
        v21 = 0;
      }

      for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
      {
        if ([(CXNamespace *)v15 containsNode:i])
        {
          if (xmlStrEqual(i->name, "oMath"))
          {
            [a1 readMathRunFrom:i to:v23 justification:v21 state:v13];
            [WXParagraph readRunsFrom:i paragraphNamespace:a4 to:v23 targetRun:v12 state:v13];
          }
        }
      }
    }

    else if (xmlStrEqual(a3->name, "oMath"))
    {
      [a1 readMathRunFrom:a3 to:v23 justification:0 state:v13];
      [WXParagraph readRunsFrom:a3 paragraphNamespace:a4 to:v23 targetRun:v12 state:v13];
    }
  }
}

+ (void)readMathRunFrom:(_xmlNode *)a3 to:(id)a4 justification:(int)a5 state:(id)a6
{
  v7 = *&a5;
  v20 = a4;
  v9 = a6;
  v10 = xmlCopyNode(a3, 1);
  v11 = sfaxmlNodeDescription(v10);
  xmlFreeNode(v10);
  v12 = [v20 addMath:v11];
  [v12 setJustification:v7];
  v13 = [WDCharacterProperties alloc];
  v14 = [v20 document];
  v15 = [(WDCharacterProperties *)v13 initWithDocument:v14];

  v16 = [v20 properties];
  v17 = [v16 isCharacterPropertiesOverridden];

  if (v17)
  {
    v18 = [v20 properties];
    v19 = [v18 characterProperties];
    [v19 copyPropertiesInto:v15];
  }

  [v12 setProperties:v15];
  [(WDCharacterProperties *)v15 setResolveMode:0];
  [(WDCharacterProperties *)v15 setDeleted:0];
  [(WDCharacterProperties *)v15 setDeletionDate:0];
  [(WDCharacterProperties *)v15 setIndexToAuthorIDOfDeletion:0];
  [(WDCharacterProperties *)v15 setEdited:0];
  [(WDCharacterProperties *)v15 setEditDate:0];
  [(WDCharacterProperties *)v15 setIndexToAuthorIDOfEdit:0];
  [(WDCharacterProperties *)v15 setResolveMode:2];
  [WXCharacterProperties applyDeletionInsertionProperties:v15 state:v9];
}

@end