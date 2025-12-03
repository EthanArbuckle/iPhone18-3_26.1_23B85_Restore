@interface WXMath
+ (void)readMathRootFrom:(_xmlNode *)from paragraphNamespace:(_xmlNs *)namespace to:(id)to targetRun:(id)run state:(id)state;
+ (void)readMathRunFrom:(_xmlNode *)from to:(id)to justification:(int)justification state:(id)state;
@end

@implementation WXMath

+ (void)readMathRootFrom:(_xmlNode *)from paragraphNamespace:(_xmlNs *)namespace to:(id)to targetRun:(id)run state:(id)state
{
  toCopy = to;
  runCopy = run;
  stateCopy = state;
  drawingState = [stateCopy drawingState];
  oAXMathNamespace = [drawingState OAXMathNamespace];

  if ([(CXNamespace *)oAXMathNamespace containsNode:from])
  {
    if (xmlStrEqual(from->name, "oMathPara"))
    {
      v16 = OCXFindChild(from, oAXMathNamespace, "oMathParaPr");
      if (v16)
      {
        v17 = OCXFindChild(v16, oAXMathNamespace, "jc");
        if (v17)
        {
          v18 = CXDefaultStringAttribute(v17, oAXMathNamespace, "val", 0);
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

      for (i = OCXFirstChild(from); i; i = OCXNextSibling(i))
      {
        if ([(CXNamespace *)oAXMathNamespace containsNode:i])
        {
          if (xmlStrEqual(i->name, "oMath"))
          {
            [self readMathRunFrom:i to:toCopy justification:v21 state:stateCopy];
            [WXParagraph readRunsFrom:i paragraphNamespace:namespace to:toCopy targetRun:runCopy state:stateCopy];
          }
        }
      }
    }

    else if (xmlStrEqual(from->name, "oMath"))
    {
      [self readMathRunFrom:from to:toCopy justification:0 state:stateCopy];
      [WXParagraph readRunsFrom:from paragraphNamespace:namespace to:toCopy targetRun:runCopy state:stateCopy];
    }
  }
}

+ (void)readMathRunFrom:(_xmlNode *)from to:(id)to justification:(int)justification state:(id)state
{
  v7 = *&justification;
  toCopy = to;
  stateCopy = state;
  v10 = xmlCopyNode(from, 1);
  v11 = sfaxmlNodeDescription(v10);
  xmlFreeNode(v10);
  v12 = [toCopy addMath:v11];
  [v12 setJustification:v7];
  v13 = [WDCharacterProperties alloc];
  document = [toCopy document];
  v15 = [(WDCharacterProperties *)v13 initWithDocument:document];

  properties = [toCopy properties];
  isCharacterPropertiesOverridden = [properties isCharacterPropertiesOverridden];

  if (isCharacterPropertiesOverridden)
  {
    properties2 = [toCopy properties];
    characterProperties = [properties2 characterProperties];
    [characterProperties copyPropertiesInto:v15];
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
  [WXCharacterProperties applyDeletionInsertionProperties:v15 state:stateCopy];
}

@end