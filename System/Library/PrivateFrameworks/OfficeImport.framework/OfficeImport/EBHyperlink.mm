@interface EBHyperlink
+ (id)edHyperlinkFromXlHLink:(XlHLink *)link edResources:(id)resources;
+ (int)edTypeFromXlHyperlinkType:(int)type;
+ (int)xlTypeFromEDHyperlinkType:(int)type;
+ (void)addToolTip:(XlHLinkToolTip *)tip toEdHyperLink:(id)link edResources:(id)resources;
@end

@implementation EBHyperlink

+ (id)edHyperlinkFromXlHLink:(XlHLink *)link edResources:(id)resources
{
  resourcesCopy = resources;
  if (link)
  {
    v7 = objc_alloc_init(EDHyperlink);
    -[EDHyperlink setType:](v7, "setType:", [self edTypeFromXlHyperlinkType:link->var3]);
    v8 = [EBString edStringFromXlString:link->var7 edResources:resourcesCopy];
    [(EDHyperlink *)v7 setDescriptionText:v8];

    v9 = [EBString edStringFromXlString:link->var9 edResources:resourcesCopy];
    [(EDHyperlink *)v7 setPath:v9];

    v10 = [EBString edStringFromXlString:link->var10 edResources:resourcesCopy];
    [(EDHyperlink *)v7 setDosPath:v10];

    v11 = [EBString edStringFromXlString:link->var6 edResources:resourcesCopy];
    [(EDHyperlink *)v7 setTextMark:v11];

    v12 = [EBReference edReferenceFromXlRef:link->var2];
    [(EDHyperlink *)v7 setReference:v12];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)addToolTip:(XlHLinkToolTip *)tip toEdHyperLink:(id)link edResources:(id)resources
{
  linkCopy = link;
  v7 = [EBString edStringFromXlString:tip->var3 edResources:resources];
  [linkCopy setToolTip:v7];
}

+ (int)edTypeFromXlHyperlinkType:(int)type
{
  if ((type - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (int)xlTypeFromEDHyperlinkType:(int)type
{
  if (type >= 3)
  {
    return 3;
  }

  else
  {
    return type;
  }
}

@end