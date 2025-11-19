@interface WXTextBox
+ (id)orientationForTextBodyProperties:(id)a3;
+ (id)readFrom:(_xmlNode *)a3 parent:(id)a4 state:(id)a5;
@end

@implementation WXTextBox

+ (id)readFrom:(_xmlNode *)a3 parent:(id)a4 state:(id)a5
{
  v29 = a4;
  v7 = a5;
  v8 = [v7 wxReadState];
  if ([v8 xmlFormat])
  {
    v9 = [CXNamespace alloc];
    v10 = [WXWord2006Namespace uri];
    v11 = [v8 WXMainNamespace];
    v12 = [(CXNamespace *)v9 initWithUri:v10 fallbackNamespace:v11];
  }

  else
  {
    v12 = [v8 WXMainNamespace];
  }

  v13 = OCXFindChild(a3, v12, "txbxContent");
  if (v13)
  {
    v14 = objc_alloc_init(WDATextBox);
    v15 = v14;
    if (v14)
    {
      [(WDATextBox *)v14 setParent:v29];
      v28 = CXDefaultStringAttribute(a3, CXNoNamespace, "style", 0);
      v27 = OAVReadComposite(v28);
      v16 = [v27 objectForKey:@"mso-next-textbox"];
      if ([v16 length])
      {
        v17 = [v16 substringFromIndex:1];

        v18 = [v7 nextVmlShapeIdToTextBoxMap];
        [v18 setObject:v15 forKey:v17];

        v16 = v17;
      }

      if (OCXFirstChild(v13))
      {
        v19 = [v7 wxReadState];
        if ([v19 currentOfficeArtTextType])
        {
          v20 = 7;
        }

        else
        {
          v20 = 6;
        }

        v21 = [WDText alloc];
        v22 = [v19 document];
        v23 = [(WDText *)v21 initWithDocument:v22 textType:v20];

        [(WDATextBox *)v15 setText:v23];
        v24 = [v19 isNewSectionRequested];
        [v19 setNewSectionRequested:0];
        [WXText readFrom:v13 baseStyle:0 to:v23 state:v19];
        [v19 setNewSectionRequested:v24];
      }

      v25 = v15;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)orientationForTextBodyProperties:(id)a3
{
  if ([a3 flowType] == 6)
  {
    return @"eaVert";
  }

  else
  {
    return @"horz";
  }
}

@end