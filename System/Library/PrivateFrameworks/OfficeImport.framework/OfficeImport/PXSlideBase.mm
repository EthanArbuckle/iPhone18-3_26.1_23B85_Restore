@interface PXSlideBase
+ (id)readLegacyDrawables:(id)drawables state:(id)state;
+ (void)readFromPackagePart:(id)part toSlideBase:(id)base presentationState:(id)state;
@end

@implementation PXSlideBase

+ (void)readFromPackagePart:(id)part toSlideBase:(id)base presentationState:(id)state
{
  partCopy = part;
  baseCopy = base;
  stateCopy = state;
  v48 = partCopy;
  xmlDocument = [partCopy xmlDocument];
  if (!xmlDocument)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v11 = OCXGetRootElement(xmlDocument);
  if (!v11)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
    v11 = 0;
  }

  v50 = 0;
  v49 = v11;
  v12 = CXOptionalLongAttribute(v11, CXNoNamespace, "show", &v50);
  if (v50)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (v13)
  {
    [baseCopy setIsHidden:1];
  }

  pXPresentationMLNamespace = [stateCopy PXPresentationMLNamespace];
  v15 = OCXFindChild(v49, pXPresentationMLNamespace, "cSld");

  v16 = CXDefaultStringAttribute(v15, CXNoNamespace, "name", 0);
  v47 = v16;
  if (v16)
  {
    [baseCopy setName:v16];
  }

  officeArtState = [stateCopy officeArtState];
  [officeArtState setPackagePart:partCopy];
  tableStyleCache = [stateCopy tableStyleCache];
  [officeArtState setTableStyleCache:tableStyleCache];

  colorScheme = [baseCopy colorScheme];
  [officeArtState setColorScheme:colorScheme];

  fontScheme = [baseCopy fontScheme];
  [officeArtState setFontScheme:fontScheme];

  colorMap = [baseCopy colorMap];
  [officeArtState setColorMap:colorMap];

  pXPresentationMLNamespace2 = [stateCopy PXPresentationMLNamespace];
  v23 = [OAXBackground readBackgroundFromParentNode:v15 inNamespace:pXPresentationMLNamespace2 state:officeArtState];

  v46 = v23;
  if (v23)
  {
    [baseCopy setBackground:v23];
  }

  pXPresentationMLNamespace3 = [stateCopy PXPresentationMLNamespace];
  v25 = OCXFindChild(v15, pXPresentationMLNamespace3, "spTree");

  p_superclass = (TCEnumerationMultiMap + 8);
  if (v25)
  {
    v27 = [PXSlideBase readLegacyDrawables:v48 state:stateCopy];
    v28 = OCXFirstChild(v25);
    if (v28)
    {
      v29 = 0;
      do
      {
        v28 = OCXNextSibling(v28);
        ++v29;
      }

      while (v28);
      v30 = v29;
    }

    else
    {
      v30 = 0.0;
    }

    [TCProgressContext createStageWithSteps:@"read drawables" takingSteps:v30 name:1.0];
    pXPresentationMLNamespace4 = [stateCopy PXPresentationMLNamespace];
    v32 = [OAXDrawable readDrawablesFromXmlNode:v25 inNamespace:pXPresentationMLNamespace4 drawingState:officeArtState];

    v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v27, "count") + objc_msgSend(v32, "count")}];
    [v33 addObjectsFromArray:v32];
    for (i = 0; [v27 count] > i; ++i)
    {
      v35 = [v27 objectAtIndex:i];
      oavState = [officeArtState oavState];
      v37 = [oavState isDualDrawable:v35];

      if ((v37 & 1) == 0)
      {
        [v33 addObject:v35];
      }
    }

    [baseCopy setDrawables:v33];

    p_superclass = TCEnumerationMultiMap.superclass;
  }

  tgtPresentation = [stateCopy tgtPresentation];
  [tgtPresentation cacheGraphicStylesForSlideBase:baseCopy];

  [p_superclass + 59 endStage];
  pXPresentationMLNamespace5 = [stateCopy PXPresentationMLNamespace];
  v40 = OCXFindChild(v49, pXPresentationMLNamespace5, "timing");

  animation = [baseCopy animation];
  [PXAnimation readAnimationFromTimingXmlNode:v40 tgtAnimation:animation drawingState:officeArtState];

  pXPresentationMLNamespace6 = [stateCopy PXPresentationMLNamespace];
  v43 = OCXFindChild(v49, pXPresentationMLNamespace6, "transition");

  if (v43 || (v43 = OCXFindChild(v49, PXMacPowerPointNamespace, "transition")) != 0)
  {
    v44 = objc_alloc_init(PDTransition);
    [PXTransition readTransitionFromNode:v43 tgtTransition:v44 drawingState:officeArtState];
    [baseCopy setTransition:v44];
  }

  v45 = [OAXTable readDefaultTableStyleWithDrawingState:officeArtState];
  [baseCopy setDefaultTableStyle:v45];
}

+ (id)readLegacyDrawables:(id)drawables state:(id)state
{
  drawablesCopy = drawables;
  stateCopy = state;
  oavState = [stateCopy oavState];
  oCXVmlDrawingRelationshipType = [stateCopy OCXVmlDrawingRelationshipType];
  v9 = [drawablesCopy relationshipsByType:oCXVmlDrawingRelationshipType];

  if (v9)
  {
    package = [drawablesCopy package];
    if (!package)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    if ([v9 count] != 1)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v11 = [v9 objectAtIndex:0];
    targetLocation = [v11 targetLocation];
    v13 = [package partForLocation:targetLocation];

    if (!v13)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v14 = [OAVDrawable vmlDocumentFromPart:v13];
    v15 = v14;
    if (v14)
    {
      v16 = OCXGetRootElement(v14);
      if (!v16)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      [oavState resetForNewDrawing];
      [oavState setPackagePart:v13];
      pXPresentationMLNamespace = [stateCopy PXPresentationMLNamespace];
      v18 = [OAVDrawable readDrawablesFromParent:v16 inNamespace:pXPresentationMLNamespace state:oavState];

      v19 = [v9 objectAtIndexedSubscript:0];
      targetLocation2 = [v19 targetLocation];
      [package resetPartForLocation:targetLocation2];

      xmlFreeDoc(v15);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end