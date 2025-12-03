@interface WXTextBox
+ (id)orientationForTextBodyProperties:(id)properties;
+ (id)readFrom:(_xmlNode *)from parent:(id)parent state:(id)state;
@end

@implementation WXTextBox

+ (id)readFrom:(_xmlNode *)from parent:(id)parent state:(id)state
{
  parentCopy = parent;
  stateCopy = state;
  wxReadState = [stateCopy wxReadState];
  if ([wxReadState xmlFormat])
  {
    v9 = [CXNamespace alloc];
    v10 = [WXWord2006Namespace uri];
    wXMainNamespace = [wxReadState WXMainNamespace];
    wXMainNamespace2 = [(CXNamespace *)v9 initWithUri:v10 fallbackNamespace:wXMainNamespace];
  }

  else
  {
    wXMainNamespace2 = [wxReadState WXMainNamespace];
  }

  v13 = OCXFindChild(from, wXMainNamespace2, "txbxContent");
  if (v13)
  {
    v14 = objc_alloc_init(WDATextBox);
    v15 = v14;
    if (v14)
    {
      [(WDATextBox *)v14 setParent:parentCopy];
      v28 = CXDefaultStringAttribute(from, CXNoNamespace, "style", 0);
      v27 = OAVReadComposite(v28);
      v16 = [v27 objectForKey:@"mso-next-textbox"];
      if ([v16 length])
      {
        v17 = [v16 substringFromIndex:1];

        nextVmlShapeIdToTextBoxMap = [stateCopy nextVmlShapeIdToTextBoxMap];
        [nextVmlShapeIdToTextBoxMap setObject:v15 forKey:v17];

        v16 = v17;
      }

      if (OCXFirstChild(v13))
      {
        wxReadState2 = [stateCopy wxReadState];
        if ([wxReadState2 currentOfficeArtTextType])
        {
          v20 = 7;
        }

        else
        {
          v20 = 6;
        }

        v21 = [WDText alloc];
        document = [wxReadState2 document];
        v23 = [(WDText *)v21 initWithDocument:document textType:v20];

        [(WDATextBox *)v15 setText:v23];
        isNewSectionRequested = [wxReadState2 isNewSectionRequested];
        [wxReadState2 setNewSectionRequested:0];
        [WXText readFrom:v13 baseStyle:0 to:v23 state:wxReadState2];
        [wxReadState2 setNewSectionRequested:isNewSectionRequested];
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

+ (id)orientationForTextBodyProperties:(id)properties
{
  if ([properties flowType] == 6)
  {
    return @"eaVert";
  }

  else
  {
    return @"horz";
  }
}

@end