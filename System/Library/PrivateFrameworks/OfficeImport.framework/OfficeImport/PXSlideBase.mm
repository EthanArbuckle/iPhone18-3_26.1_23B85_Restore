@interface PXSlideBase
+ (id)readLegacyDrawables:(id)a3 state:(id)a4;
+ (void)readFromPackagePart:(id)a3 toSlideBase:(id)a4 presentationState:(id)a5;
@end

@implementation PXSlideBase

+ (void)readFromPackagePart:(id)a3 toSlideBase:(id)a4 presentationState:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v48 = v7;
  v10 = [v7 xmlDocument];
  if (!v10)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v11 = OCXGetRootElement(v10);
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
    [v8 setIsHidden:1];
  }

  v14 = [v9 PXPresentationMLNamespace];
  v15 = OCXFindChild(v49, v14, "cSld");

  v16 = CXDefaultStringAttribute(v15, CXNoNamespace, "name", 0);
  v47 = v16;
  if (v16)
  {
    [v8 setName:v16];
  }

  v17 = [v9 officeArtState];
  [v17 setPackagePart:v7];
  v18 = [v9 tableStyleCache];
  [v17 setTableStyleCache:v18];

  v19 = [v8 colorScheme];
  [v17 setColorScheme:v19];

  v20 = [v8 fontScheme];
  [v17 setFontScheme:v20];

  v21 = [v8 colorMap];
  [v17 setColorMap:v21];

  v22 = [v9 PXPresentationMLNamespace];
  v23 = [OAXBackground readBackgroundFromParentNode:v15 inNamespace:v22 state:v17];

  v46 = v23;
  if (v23)
  {
    [v8 setBackground:v23];
  }

  v24 = [v9 PXPresentationMLNamespace];
  v25 = OCXFindChild(v15, v24, "spTree");

  p_superclass = (TCEnumerationMultiMap + 8);
  if (v25)
  {
    v27 = [PXSlideBase readLegacyDrawables:v48 state:v9];
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
    v31 = [v9 PXPresentationMLNamespace];
    v32 = [OAXDrawable readDrawablesFromXmlNode:v25 inNamespace:v31 drawingState:v17];

    v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v27, "count") + objc_msgSend(v32, "count")}];
    [v33 addObjectsFromArray:v32];
    for (i = 0; [v27 count] > i; ++i)
    {
      v35 = [v27 objectAtIndex:i];
      v36 = [v17 oavState];
      v37 = [v36 isDualDrawable:v35];

      if ((v37 & 1) == 0)
      {
        [v33 addObject:v35];
      }
    }

    [v8 setDrawables:v33];

    p_superclass = TCEnumerationMultiMap.superclass;
  }

  v38 = [v9 tgtPresentation];
  [v38 cacheGraphicStylesForSlideBase:v8];

  [p_superclass + 59 endStage];
  v39 = [v9 PXPresentationMLNamespace];
  v40 = OCXFindChild(v49, v39, "timing");

  v41 = [v8 animation];
  [PXAnimation readAnimationFromTimingXmlNode:v40 tgtAnimation:v41 drawingState:v17];

  v42 = [v9 PXPresentationMLNamespace];
  v43 = OCXFindChild(v49, v42, "transition");

  if (v43 || (v43 = OCXFindChild(v49, PXMacPowerPointNamespace, "transition")) != 0)
  {
    v44 = objc_alloc_init(PDTransition);
    [PXTransition readTransitionFromNode:v43 tgtTransition:v44 drawingState:v17];
    [v8 setTransition:v44];
  }

  v45 = [OAXTable readDefaultTableStyleWithDrawingState:v17];
  [v8 setDefaultTableStyle:v45];
}

+ (id)readLegacyDrawables:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 oavState];
  v8 = [v6 OCXVmlDrawingRelationshipType];
  v9 = [v5 relationshipsByType:v8];

  if (v9)
  {
    v10 = [v5 package];
    if (!v10)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    if ([v9 count] != 1)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v11 = [v9 objectAtIndex:0];
    v12 = [v11 targetLocation];
    v13 = [v10 partForLocation:v12];

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

      [v7 resetForNewDrawing];
      [v7 setPackagePart:v13];
      v17 = [v6 PXPresentationMLNamespace];
      v18 = [OAVDrawable readDrawablesFromParent:v16 inNamespace:v17 state:v7];

      v19 = [v9 objectAtIndexedSubscript:0];
      v20 = [v19 targetLocation];
      [v10 resetPartForLocation:v20];

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