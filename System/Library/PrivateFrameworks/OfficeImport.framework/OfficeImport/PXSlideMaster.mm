@interface PXSlideMaster
+ (id)readFromPackagePart:(id)part presentationState:(id)state;
+ (void)readTextStylesFromNode:(_xmlNode *)node slideMaster:(id)master state:(id)state;
@end

@implementation PXSlideMaster

+ (id)readFromPackagePart:(id)part presentationState:(id)state
{
  partCopy = part;
  stateCopy = state;
  v8 = [PDSlideMaster alloc];
  tgtPresentation = [stateCopy tgtPresentation];
  v53 = [(PDSlideMaster *)v8 initWithPresentation:tgtPresentation];

  xmlDocument = [(OCPPackagePart *)partCopy xmlDocument];
  if (!xmlDocument)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v11 = OCXGetRootElement(xmlDocument);
  v12 = v11;
  if (!v11 || !xmlStrEqual(v11->name, "sldMaster"))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  officeArtState = [stateCopy officeArtState];
  v14 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(partCopy, officeArtState, sel_OCXThemeRelationshipType);
  if (!v14)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  theme = [(PDSlideMaster *)v53 theme];
  [OAXTheme readFromPackagePart:"readFromPackagePart:toTheme:state:" toTheme:v14 state:?];
  pXPresentationMLNamespace = [stateCopy PXPresentationMLNamespace];
  v16 = OCXFindChild(v12, pXPresentationMLNamespace, "clrMap");

  if (!v16)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  colorMap = [(PDSlideMaster *)v53 colorMap];
  [OAXColorMap readFromXmlNode:v16 toColorMap:colorMap];

  [(OCXState *)officeArtState setPackagePart:partCopy];
  pXPresentationMLNamespace2 = [stateCopy PXPresentationMLNamespace];
  v19 = OCXFindChild(v12, pXPresentationMLNamespace2, "hf");

  if (v19)
  {
    v20 = CXDefaultStringAttribute(v19, CXNoNamespace, "hdr", @"1");
    v21 = v20;
    if (v20)
    {
      -[PDSlideMaster setHeaderPlaceholderIsVisible:](v53, "setHeaderPlaceholderIsVisible:", [v20 isEqualToString:@"0"] ^ 1);
    }

    v22 = CXDefaultStringAttribute(v19, CXNoNamespace, "ftr", @"1");
    v23 = v22;
    if (v22)
    {
      -[PDSlideMaster setFooterPlaceholderIsVisible:](v53, "setFooterPlaceholderIsVisible:", [v22 isEqualToString:@"0"] ^ 1);
    }

    v24 = CXDefaultStringAttribute(v19, CXNoNamespace, "dt", @"1");
    v25 = v24;
    if (v24)
    {
      -[PDSlideMaster setDateTimePlaceholderIsVisible:](v53, "setDateTimePlaceholderIsVisible:", [v24 isEqualToString:@"0"] ^ 1);
    }

    v26 = CXDefaultStringAttribute(v19, CXNoNamespace, "sldNum", @"1");
    v27 = v26;
    if (v26)
    {
      -[PDSlideMaster setSlideNumberPlaceholderIsVisible:](v53, "setSlideNumberPlaceholderIsVisible:", [v26 isEqualToString:@"0"] ^ 1);
    }
  }

  pXPresentationMLNamespace3 = [stateCopy PXPresentationMLNamespace];
  v29 = OCXFindChild(v12, pXPresentationMLNamespace3, "txStyles");

  if (v29)
  {
    [self readTextStylesFromNode:v29 slideMaster:v53 state:stateCopy];
  }

  [TCProgressContext createStageWithSteps:@"read master slide" takingSteps:1.0 name:0.1];
  [PXSlideBase readFromPackagePart:partCopy toSlideBase:v53 presentationState:stateCopy];
  +[TCProgressContext endStage];
  [stateCopy resetOfficeArtState];
  pXPresentationMLNamespace4 = [stateCopy PXPresentationMLNamespace];
  v31 = OCXFindChild(v12, pXPresentationMLNamespace4, "sldLayoutIdLst");

  if (v31)
  {
    pXPresentationMLNamespace5 = [stateCopy PXPresentationMLNamespace];
    v33 = CXCountChildren(v31, pXPresentationMLNamespace5, "sldLayoutId");

    [TCProgressContext createStageWithSteps:@"read layout slide" takingSteps:v33 name:0.9];
    pXPresentationMLNamespace6 = [stateCopy PXPresentationMLNamespace];
    v50 = v14;
    v51 = officeArtState;
    Child = OCXFindChild(v31, pXPresentationMLNamespace6, "sldLayoutId");

    while (Child)
    {
      v36 = objc_alloc(MEMORY[0x277CCACA8]);
      oCXRelationshipsNamespace = [stateCopy OCXRelationshipsNamespace];
      v38 = [v36 tc_initFromXmlNode:Child nsWithFallbackNs:oCXRelationshipsNamespace attributeName:"id"];

      if (!v38)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      v39 = [(OCPPackagePart *)partCopy relationshipForIdentifier:v38, v50, v51];
      package = [(OCPPackagePart *)partCopy package];
      targetLocation = [v39 targetLocation];
      v42 = [package partForLocation:targetLocation];

      addSlideLayout = [(PDSlideMaster *)v53 addSlideLayout];
      [PXSlideLayout readFromPackagePart:v42 toSlideLayout:addSlideLayout presentationState:stateCopy];
      [addSlideLayout setSlideId:{CXDefaultUnsignedLongAttribute(Child, CXNoNamespace, "id", 0)}];
      transition = [addSlideLayout transition];
      transition2 = [(PDSlideBase *)v53 transition];
      [transition setParent:transition2];

      [stateCopy resetOfficeArtState];
      package2 = [(OCPPackagePart *)partCopy package];
      targetLocation2 = [v39 targetLocation];
      [package2 resetPartForLocation:targetLocation2];

      pXPresentationMLNamespace7 = [stateCopy PXPresentationMLNamespace];
      Child = OCXFindNextChild(Child, pXPresentationMLNamespace7, "sldLayoutId");
    }

    v14 = v50;
    officeArtState = v51;
    [TCProgressContext endStage:v50];
  }

  return v53;
}

+ (void)readTextStylesFromNode:(_xmlNode *)node slideMaster:(id)master state:(id)state
{
  masterCopy = master;
  stateCopy = state;
  officeArtState = [stateCopy officeArtState];
  pXPresentationMLNamespace = [stateCopy PXPresentationMLNamespace];
  v10 = OCXFindChild(node, pXPresentationMLNamespace, "titleStyle");

  if (v10)
  {
    titleTextStyle = [masterCopy titleTextStyle];
    [OAXTextListStyle readNode:v10 textListStyle:titleTextStyle state:officeArtState];
  }

  pXPresentationMLNamespace2 = [stateCopy PXPresentationMLNamespace];
  v13 = OCXFindChild(node, pXPresentationMLNamespace2, "bodyStyle");

  if (v13)
  {
    bodyTextStyle = [masterCopy bodyTextStyle];
    [OAXTextListStyle readNode:v13 textListStyle:bodyTextStyle state:officeArtState];
  }

  pXPresentationMLNamespace3 = [stateCopy PXPresentationMLNamespace];
  v16 = OCXFindChild(node, pXPresentationMLNamespace3, "otherStyle");

  if (v16)
  {
    otherTextStyle = [masterCopy otherTextStyle];
    [OAXTextListStyle readNode:v16 textListStyle:otherTextStyle state:officeArtState];
  }
}

@end