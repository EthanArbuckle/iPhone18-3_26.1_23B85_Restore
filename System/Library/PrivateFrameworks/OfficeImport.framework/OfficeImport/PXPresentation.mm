@interface PXPresentation
+ (CGSize)readSizeFromChildOfElement:(_xmlNode *)a3 childName:(const char *)a4 state:(id)a5;
+ (id)readFromPackage:(id)a3 fileName:(id)a4 reader:(id)a5 cancel:(id)a6 isThumbnail:(BOOL)a7 delegate:(id)a8;
+ (void)readPresentationProperties:(id)a3 to:(id)a4 state:(id)a5;
+ (void)readSlideIndicesWithPresentationPart:(id)a3 presentationState:(id)a4;
@end

@implementation PXPresentation

+ (id)readFromPackage:(id)a3 fileName:(id)a4 reader:(id)a5 cancel:(id)a6 isThumbnail:(BOOL)a7 delegate:(id)a8
{
  v87 = a7;
  v13 = a3;
  v91 = a4;
  v92 = a5;
  v93 = a6;
  v99 = a8;
  v100 = objc_alloc_init(PDPresentation);
  v14 = objc_alloc_init(OADGraphicStyleCache);
  [(OCDDocument *)v100 setGraphicStyleCache:v14];

  v15 = objc_alloc_init(PXPresentationState);
  [(PXPresentationState *)v15 setCancelDelegate:v93];
  [(PXPresentationState *)v15 setTgtPresentation:v100];
  [(OCDDocument *)v100 setReader:v92];
  v16 = [(OCDDocument *)v100 summary];
  [OCXSummary readSummary:v16 package:v13];

  v101 = [v13 mainDocumentPart];
  if (!v101)
  {

    [TCMessageException raise:TCInvalidFileFormatMessage];
    v15 = 0;
  }

  v17 = [v101 xmlDocument];
  if (!v17)
  {

    v15 = 0;
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v18 = OCXGetRootElement(v17);
  if (!v18)
  {

    v15 = 0;
    [TCMessageException raise:TCInvalidFileFormatMessage];
    v18 = 0;
  }

  v103 = 0;
  v97 = v18;
  CXOptionalStringAttribute(v18, CXNoNamespace, "conformance", &v103);
  v96 = v103;
  if (v96 && [v96 isEqualToString:@"strict"])
  {
    [(PXPresentationState *)v15 setupNSForXMLFormat:1];
  }

  [a1 readSizeFromChildOfElement:v97 childName:"sldSz" state:v15];
  [(PDPresentation *)v100 setSlideSize:?];
  [a1 readSizeFromChildOfElement:v97 childName:"notesSz" state:v15];
  [(PDPresentation *)v100 setNotesSize:?];
  [a1 readPresentationProperties:v13 to:v100 state:v15];
  v19 = [v91 pathExtension];
  v20 = [v19 lowercaseString];

  v89 = v20;
  if (([v20 isEqualToString:@"ppsx"] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", @"ppsm"))
  {
    [(PDPresentation *)v100 setIsAutoPlay:1];
  }

  v21 = [v13 mainDocumentPart];
  v102 = v13;
  v22 = [(OCXState *)v15 OCXPackageViewPropsRelationshipType];
  v23 = [v21 firstPartWithRelationshipOfType:v22];

  v88 = v23;
  if (v23)
  {
    v24 = OCXGetRootElement([v23 xmlDocument]);
    if (!v24)
    {

      v15 = 0;
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v25 = CXDefaultBoolAttribute(v24, CXNoNamespace, "showComments", 1);
  }

  else
  {
    v25 = 1;
  }

  [(PDPresentation *)v100 setIsCommentsVisible:v25];
  [a1 readSlideIndicesWithPresentationPart:v101 presentationState:v15];
  v26 = [v13 mainDocumentPart];
  v27 = [(OCXState *)v15 OCXTableStylesRelationshipType];
  v94 = [v26 firstPartWithRelationshipOfType:v27];

  v28 = [(PXPresentationState *)v15 tableStyleCache];
  v29 = [(PXPresentationState *)v15 officeArtState];
  [OAXTable cacheTableStylesInPart:v94 cache:v28 drawingState:v29];

  v30 = [(OCXState *)v15 OCXCommentAuthorsRelationshipType];
  v31 = [v101 relationshipsByType:v30];

  v95 = v31;
  if ([v31 count])
  {
    if ([v31 count] != 1)
    {

      v15 = 0;
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v32 = [v31 objectAtIndex:0];
    v33 = [v101 package];
    v34 = [v32 targetLocation];
    v35 = [v33 partForLocation:v34];

    [PXCommentAuthor readCommentAuthors:v35 presentation:v100 state:v15];
    v36 = [v101 package];
    v37 = [v32 targetLocation];
    [v36 resetPartForLocation:v37];
  }

  v38 = [(OCXState *)v15 OCXLegacyDocTextInfoRelationshipType];
  v39 = [v101 firstPartWithRelationshipOfType:v38];

  v90 = [v39 data];
  if (v90)
  {
    objc_opt_class();
    v40 = [(PXPresentationState *)v15 oavState];
    [PXLegacyText readLegacyTextGlobalsFromData:v90 state:v40];
  }

  v41 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
  v42 = OCXFindChild(v97, v41, "defaultTextStyle");

  if (v42)
  {
    v43 = [(OCDDocument *)v100 defaultTextStyle];
    v44 = [(PXPresentationState *)v15 officeArtState];
    [OAXTextListStyle readNode:v42 textListStyle:v43 state:v44];
  }

  v45 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
  v46 = OCXFindChild(v97, v45, "sldMasterIdLst");

  if (!v46)
  {

    v15 = 0;
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v47 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
  v48 = CXCountChildren(v46, v47, "sldMasterId");

  [TCProgressContext createStageWithSteps:@"read master slides" takingSteps:v48 name:25.0];
  v49 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
  Child = OCXFindChild(v46, v49, "sldMasterId");

  while (Child)
  {
    if ([(PXPresentationState *)v15 isCancelled])
    {
      break;
    }

    v51 = objc_alloc(MEMORY[0x277CCACA8]);
    v52 = [(OCXState *)v15 OCXRelationshipsNamespace];
    v53 = [v51 tc_initFromXmlNode:Child nsWithFallbackNs:v52 attributeName:"id"];

    if (!v53)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v54 = [v101 relationshipForIdentifier:v53];
    v55 = [v54 targetLocation];
    v56 = [v13 partForLocation:v55];

    v57 = [PXSlideMaster readFromPackagePart:v56 presentationState:v15];
    [v57 setSlideId:{CXRequiredUnsignedLongAttribute(Child, CXNoNamespace, "id")}];
    [(PDPresentation *)v100 addSlideMaster:v57];
    v58 = [v54 targetLocation];
    [v102 resetPartForLocation:v58];

    v13 = v102;
    v59 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
    Child = OCXFindNextChild(Child, v59, "sldMasterId");
  }

  +[TCProgressContext endStage];
  [(PXPresentationState *)v15 resetOfficeArtState];
  v60 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
  v61 = OCXFindChild(v97, v60, "notesMasterIdLst");

  if (v61)
  {
    v62 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
    v63 = CXCountChildren(v61, v62, "notesMasterId");

    [TCProgressContext createStageWithSteps:@"read note slides" takingSteps:v63 name:5.0];
    v64 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
    v65 = OCXFindChild(v61, v64, "notesMasterId");

    while (v65)
    {
      if ([(PXPresentationState *)v15 isCancelled])
      {
        break;
      }

      v66 = [(OCXReadState *)v15 OCXReadRequiredRelationshipForNode:v65 packagePart:v101];
      v67 = [v66 targetLocation];
      v68 = [v13 partForLocation:v67];

      v69 = [PXNotesMaster readFromPackagePart:v68 presentationState:v15];
      [(PDPresentation *)v100 addNotesMaster:v69];
      v70 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
      v65 = OCXFindNextChild(v65, v70, "notesMasterId");

      v71 = [v66 targetLocation];
      [v13 resetPartForLocation:v71];
    }

    +[TCProgressContext endStage];
  }

  else
  {
    [TCProgressContext advanceProgress:5.0];
  }

  [(PXPresentationState *)v15 resetOfficeArtState];
  v72 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
  v73 = OCXFindChild(v97, v72, "sldIdLst");

  if (v73)
  {
    v74 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
    v75 = CXCountChildren(v73, v74, "sldId");

    if (v99 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v99 readerDidStartDocument:v100 withElementCount:v75];
    }

    [TCProgressContext createStageWithSteps:@"read slides" takingSteps:(2 * v75) name:70.0];
    v76 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
    v77 = OCXFindChild(v73, v76, "sldId");

    if (v77)
    {
      v78 = 0;
      v98 = v75 - 1;
      while (![(PXPresentationState *)v15 isCancelled])
      {
        v79 = [(OCXReadState *)v15 OCXReadRequiredRelationshipForNode:v77 packagePart:v101];
        v80 = [v79 targetLocation];
        v81 = [v13 partForLocation:v80];

        if (!v81)
        {

          [TCMessageException raise:TCInvalidFileFormatMessage];
          v15 = 0;
        }

        v82 = [PXSlide readFromPackagePart:v81 presentationState:v15];
        [v82 setSlideId:{CXRequiredUnsignedLongAttribute(v77, CXNoNamespace, "id")}];
        if (([v82 isHidden] & 1) == 0)
        {
          if (v99 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v83 = v78 >= v98 || v87;
            [v99 readerDidReadElement:v82 atIndex:v78 inDocument:v100 isLastElement:v83];
            if (v83)
            {
              [(PXPresentationState *)v15 resetOfficeArtState];

              v13 = v102;
              break;
            }

            ++v78;
          }

          else
          {
            [(PDPresentation *)v100 addSlide:v82];
          }
        }

        [(PXPresentationState *)v15 resetOfficeArtState];
        v84 = [v79 targetLocation];
        [v102 resetPartForLocation:v84];

        v13 = v102;
        v85 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
        v77 = OCXFindNextChild(v77, v85, "sldId");

        if (!v77)
        {
          break;
        }
      }
    }

    +[TCProgressContext endStage];
    if (v99 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v99 readerDidEndDocument:v100];
    }
  }

  else
  {
    [TCProgressContext advanceProgress:70.0];
  }

  return v100;
}

+ (CGSize)readSizeFromChildOfElement:(_xmlNode *)a3 childName:(const char *)a4 state:(id)a5
{
  v7 = [a5 PXPresentationMLNamespace];
  v8 = OCXFindChild(a3, v7, a4);

  v12 = 0;
  CXOptionalLongAttribute(v8, CXNoNamespace, "cx", &v12);
  v11 = 0;
  CXOptionalLongAttribute(v8, CXNoNamespace, "cy", &v11);
  v9 = (v12 / 12700);
  v10 = (v11 / 12700);
  result.height = v10;
  result.width = v9;
  return result;
}

+ (void)readPresentationProperties:(id)a3 to:(id)a4 state:(id)a5
{
  v16 = a4;
  v7 = a5;
  v8 = [a3 mainDocumentPart];
  v9 = [v7 OCXPackagePresPropsRelationshipType];
  v10 = [v8 firstPartWithRelationshipOfType:v9];

  if (v10)
  {
    v11 = OCXGetRootElement([v10 xmlDocument]);
    v12 = [v7 PXPresentationMLNamespace];
    v13 = OCXFindChild(v11, v12, "showPr");

    if (v13)
    {
      [v16 setIsLooping:{CXDefaultBoolAttribute(v13, CXNoNamespace, "loop", 0)}];
      v14 = [v7 PXPresentationMLNamespace];
      v15 = OCXFindChild(v13, v14, "kiosk");

      if (v15)
      {
        [v16 setIsKiosk:1];
      }
    }
  }
}

+ (void)readSlideIndicesWithPresentationPart:(id)a3 presentationState:(id)a4
{
  v15 = a3;
  v5 = a4;
  v6 = OCXGetRootElement([v15 xmlDocument]);
  v7 = [v5 PXPresentationMLNamespace];
  v8 = OCXFindChild(v6, v7, "sldIdLst");

  if (v8)
  {
    v9 = [v5 PXPresentationMLNamespace];
    Child = OCXFindChild(v8, v9, "sldId");

    if (Child)
    {
      v11 = 0;
      do
      {
        v12 = [v5 OCXReadRequiredRelationshipForNode:Child packagePart:v15];
        v13 = [v12 targetLocation];
        [v5 setSlideIndex:v11 forSlideURL:v13];

        v14 = [v5 PXPresentationMLNamespace];
        Child = OCXFindNextChild(Child, v14, "sldId");

        ++v11;
      }

      while (Child);
    }
  }
}

@end