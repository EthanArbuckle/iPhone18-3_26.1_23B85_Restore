@interface EBHyperlink
+ (id)edHyperlinkFromXlHLink:(XlHLink *)a3 edResources:(id)a4;
+ (int)edTypeFromXlHyperlinkType:(int)a3;
+ (int)xlTypeFromEDHyperlinkType:(int)a3;
+ (void)addToolTip:(XlHLinkToolTip *)a3 toEdHyperLink:(id)a4 edResources:(id)a5;
@end

@implementation EBHyperlink

+ (id)edHyperlinkFromXlHLink:(XlHLink *)a3 edResources:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = objc_alloc_init(EDHyperlink);
    -[EDHyperlink setType:](v7, "setType:", [a1 edTypeFromXlHyperlinkType:a3->var3]);
    v8 = [EBString edStringFromXlString:a3->var7 edResources:v6];
    [(EDHyperlink *)v7 setDescriptionText:v8];

    v9 = [EBString edStringFromXlString:a3->var9 edResources:v6];
    [(EDHyperlink *)v7 setPath:v9];

    v10 = [EBString edStringFromXlString:a3->var10 edResources:v6];
    [(EDHyperlink *)v7 setDosPath:v10];

    v11 = [EBString edStringFromXlString:a3->var6 edResources:v6];
    [(EDHyperlink *)v7 setTextMark:v11];

    v12 = [EBReference edReferenceFromXlRef:a3->var2];
    [(EDHyperlink *)v7 setReference:v12];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)addToolTip:(XlHLinkToolTip *)a3 toEdHyperLink:(id)a4 edResources:(id)a5
{
  v8 = a4;
  v7 = [EBString edStringFromXlString:a3->var3 edResources:a5];
  [v8 setToolTip:v7];
}

+ (int)edTypeFromXlHyperlinkType:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int)xlTypeFromEDHyperlinkType:(int)a3
{
  if (a3 >= 3)
  {
    return 3;
  }

  else
  {
    return a3;
  }
}

@end