@interface PXPresentation
+ (CGSize)readSizeFromChildOfElement:(_xmlNode *)element childName:(const char *)name state:(id)state;
+ (id)readFromPackage:(id)package fileName:(id)name reader:(id)reader cancel:(id)cancel isThumbnail:(BOOL)thumbnail delegate:(id)delegate;
+ (void)readPresentationProperties:(id)properties to:(id)to state:(id)state;
+ (void)readSlideIndicesWithPresentationPart:(id)part presentationState:(id)state;
@end

@implementation PXPresentation

+ (id)readFromPackage:(id)package fileName:(id)name reader:(id)reader cancel:(id)cancel isThumbnail:(BOOL)thumbnail delegate:(id)delegate
{
  thumbnailCopy = thumbnail;
  packageCopy = package;
  nameCopy = name;
  readerCopy = reader;
  cancelCopy = cancel;
  delegateCopy = delegate;
  v100 = objc_alloc_init(PDPresentation);
  v14 = objc_alloc_init(OADGraphicStyleCache);
  [(OCDDocument *)v100 setGraphicStyleCache:v14];

  v15 = objc_alloc_init(PXPresentationState);
  [(PXPresentationState *)v15 setCancelDelegate:cancelCopy];
  [(PXPresentationState *)v15 setTgtPresentation:v100];
  [(OCDDocument *)v100 setReader:readerCopy];
  summary = [(OCDDocument *)v100 summary];
  [OCXSummary readSummary:summary package:packageCopy];

  mainDocumentPart = [packageCopy mainDocumentPart];
  if (!mainDocumentPart)
  {

    [TCMessageException raise:TCInvalidFileFormatMessage];
    v15 = 0;
  }

  xmlDocument = [mainDocumentPart xmlDocument];
  if (!xmlDocument)
  {

    v15 = 0;
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v18 = OCXGetRootElement(xmlDocument);
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

  [self readSizeFromChildOfElement:v97 childName:"sldSz" state:v15];
  [(PDPresentation *)v100 setSlideSize:?];
  [self readSizeFromChildOfElement:v97 childName:"notesSz" state:v15];
  [(PDPresentation *)v100 setNotesSize:?];
  [self readPresentationProperties:packageCopy to:v100 state:v15];
  pathExtension = [nameCopy pathExtension];
  lowercaseString = [pathExtension lowercaseString];

  v89 = lowercaseString;
  if (([lowercaseString isEqualToString:@"ppsx"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"ppsm"))
  {
    [(PDPresentation *)v100 setIsAutoPlay:1];
  }

  mainDocumentPart2 = [packageCopy mainDocumentPart];
  v102 = packageCopy;
  oCXPackageViewPropsRelationshipType = [(OCXState *)v15 OCXPackageViewPropsRelationshipType];
  v23 = [mainDocumentPart2 firstPartWithRelationshipOfType:oCXPackageViewPropsRelationshipType];

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
  [self readSlideIndicesWithPresentationPart:mainDocumentPart presentationState:v15];
  mainDocumentPart3 = [packageCopy mainDocumentPart];
  oCXTableStylesRelationshipType = [(OCXState *)v15 OCXTableStylesRelationshipType];
  v94 = [mainDocumentPart3 firstPartWithRelationshipOfType:oCXTableStylesRelationshipType];

  tableStyleCache = [(PXPresentationState *)v15 tableStyleCache];
  officeArtState = [(PXPresentationState *)v15 officeArtState];
  [OAXTable cacheTableStylesInPart:v94 cache:tableStyleCache drawingState:officeArtState];

  oCXCommentAuthorsRelationshipType = [(OCXState *)v15 OCXCommentAuthorsRelationshipType];
  v31 = [mainDocumentPart relationshipsByType:oCXCommentAuthorsRelationshipType];

  v95 = v31;
  if ([v31 count])
  {
    if ([v31 count] != 1)
    {

      v15 = 0;
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v32 = [v31 objectAtIndex:0];
    package = [mainDocumentPart package];
    targetLocation = [v32 targetLocation];
    v35 = [package partForLocation:targetLocation];

    [PXCommentAuthor readCommentAuthors:v35 presentation:v100 state:v15];
    package2 = [mainDocumentPart package];
    targetLocation2 = [v32 targetLocation];
    [package2 resetPartForLocation:targetLocation2];
  }

  oCXLegacyDocTextInfoRelationshipType = [(OCXState *)v15 OCXLegacyDocTextInfoRelationshipType];
  v39 = [mainDocumentPart firstPartWithRelationshipOfType:oCXLegacyDocTextInfoRelationshipType];

  data = [v39 data];
  if (data)
  {
    objc_opt_class();
    oavState = [(PXPresentationState *)v15 oavState];
    [PXLegacyText readLegacyTextGlobalsFromData:data state:oavState];
  }

  pXPresentationMLNamespace = [(PXPresentationState *)v15 PXPresentationMLNamespace];
  v42 = OCXFindChild(v97, pXPresentationMLNamespace, "defaultTextStyle");

  if (v42)
  {
    defaultTextStyle = [(OCDDocument *)v100 defaultTextStyle];
    officeArtState2 = [(PXPresentationState *)v15 officeArtState];
    [OAXTextListStyle readNode:v42 textListStyle:defaultTextStyle state:officeArtState2];
  }

  pXPresentationMLNamespace2 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
  v46 = OCXFindChild(v97, pXPresentationMLNamespace2, "sldMasterIdLst");

  if (!v46)
  {

    v15 = 0;
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  pXPresentationMLNamespace3 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
  v48 = CXCountChildren(v46, pXPresentationMLNamespace3, "sldMasterId");

  [TCProgressContext createStageWithSteps:@"read master slides" takingSteps:v48 name:25.0];
  pXPresentationMLNamespace4 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
  Child = OCXFindChild(v46, pXPresentationMLNamespace4, "sldMasterId");

  while (Child)
  {
    if ([(PXPresentationState *)v15 isCancelled])
    {
      break;
    }

    v51 = objc_alloc(MEMORY[0x277CCACA8]);
    oCXRelationshipsNamespace = [(OCXState *)v15 OCXRelationshipsNamespace];
    v53 = [v51 tc_initFromXmlNode:Child nsWithFallbackNs:oCXRelationshipsNamespace attributeName:"id"];

    if (!v53)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v54 = [mainDocumentPart relationshipForIdentifier:v53];
    targetLocation3 = [v54 targetLocation];
    v56 = [packageCopy partForLocation:targetLocation3];

    v57 = [PXSlideMaster readFromPackagePart:v56 presentationState:v15];
    [v57 setSlideId:{CXRequiredUnsignedLongAttribute(Child, CXNoNamespace, "id")}];
    [(PDPresentation *)v100 addSlideMaster:v57];
    targetLocation4 = [v54 targetLocation];
    [v102 resetPartForLocation:targetLocation4];

    packageCopy = v102;
    pXPresentationMLNamespace5 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
    Child = OCXFindNextChild(Child, pXPresentationMLNamespace5, "sldMasterId");
  }

  +[TCProgressContext endStage];
  [(PXPresentationState *)v15 resetOfficeArtState];
  pXPresentationMLNamespace6 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
  v61 = OCXFindChild(v97, pXPresentationMLNamespace6, "notesMasterIdLst");

  if (v61)
  {
    pXPresentationMLNamespace7 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
    v63 = CXCountChildren(v61, pXPresentationMLNamespace7, "notesMasterId");

    [TCProgressContext createStageWithSteps:@"read note slides" takingSteps:v63 name:5.0];
    pXPresentationMLNamespace8 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
    v65 = OCXFindChild(v61, pXPresentationMLNamespace8, "notesMasterId");

    while (v65)
    {
      if ([(PXPresentationState *)v15 isCancelled])
      {
        break;
      }

      v66 = [(OCXReadState *)v15 OCXReadRequiredRelationshipForNode:v65 packagePart:mainDocumentPart];
      targetLocation5 = [v66 targetLocation];
      v68 = [packageCopy partForLocation:targetLocation5];

      v69 = [PXNotesMaster readFromPackagePart:v68 presentationState:v15];
      [(PDPresentation *)v100 addNotesMaster:v69];
      pXPresentationMLNamespace9 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
      v65 = OCXFindNextChild(v65, pXPresentationMLNamespace9, "notesMasterId");

      targetLocation6 = [v66 targetLocation];
      [packageCopy resetPartForLocation:targetLocation6];
    }

    +[TCProgressContext endStage];
  }

  else
  {
    [TCProgressContext advanceProgress:5.0];
  }

  [(PXPresentationState *)v15 resetOfficeArtState];
  pXPresentationMLNamespace10 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
  v73 = OCXFindChild(v97, pXPresentationMLNamespace10, "sldIdLst");

  if (v73)
  {
    pXPresentationMLNamespace11 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
    v75 = CXCountChildren(v73, pXPresentationMLNamespace11, "sldId");

    if (delegateCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegateCopy readerDidStartDocument:v100 withElementCount:v75];
    }

    [TCProgressContext createStageWithSteps:@"read slides" takingSteps:(2 * v75) name:70.0];
    pXPresentationMLNamespace12 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
    v77 = OCXFindChild(v73, pXPresentationMLNamespace12, "sldId");

    if (v77)
    {
      v78 = 0;
      v98 = v75 - 1;
      while (![(PXPresentationState *)v15 isCancelled])
      {
        v79 = [(OCXReadState *)v15 OCXReadRequiredRelationshipForNode:v77 packagePart:mainDocumentPart];
        targetLocation7 = [v79 targetLocation];
        v81 = [packageCopy partForLocation:targetLocation7];

        if (!v81)
        {

          [TCMessageException raise:TCInvalidFileFormatMessage];
          v15 = 0;
        }

        v82 = [PXSlide readFromPackagePart:v81 presentationState:v15];
        [v82 setSlideId:{CXRequiredUnsignedLongAttribute(v77, CXNoNamespace, "id")}];
        if (([v82 isHidden] & 1) == 0)
        {
          if (delegateCopy && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v83 = v78 >= v98 || thumbnailCopy;
            [delegateCopy readerDidReadElement:v82 atIndex:v78 inDocument:v100 isLastElement:v83];
            if (v83)
            {
              [(PXPresentationState *)v15 resetOfficeArtState];

              packageCopy = v102;
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
        targetLocation8 = [v79 targetLocation];
        [v102 resetPartForLocation:targetLocation8];

        packageCopy = v102;
        pXPresentationMLNamespace13 = [(PXPresentationState *)v15 PXPresentationMLNamespace];
        v77 = OCXFindNextChild(v77, pXPresentationMLNamespace13, "sldId");

        if (!v77)
        {
          break;
        }
      }
    }

    +[TCProgressContext endStage];
    if (delegateCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegateCopy readerDidEndDocument:v100];
    }
  }

  else
  {
    [TCProgressContext advanceProgress:70.0];
  }

  return v100;
}

+ (CGSize)readSizeFromChildOfElement:(_xmlNode *)element childName:(const char *)name state:(id)state
{
  pXPresentationMLNamespace = [state PXPresentationMLNamespace];
  v8 = OCXFindChild(element, pXPresentationMLNamespace, name);

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

+ (void)readPresentationProperties:(id)properties to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  mainDocumentPart = [properties mainDocumentPart];
  oCXPackagePresPropsRelationshipType = [stateCopy OCXPackagePresPropsRelationshipType];
  v10 = [mainDocumentPart firstPartWithRelationshipOfType:oCXPackagePresPropsRelationshipType];

  if (v10)
  {
    v11 = OCXGetRootElement([v10 xmlDocument]);
    pXPresentationMLNamespace = [stateCopy PXPresentationMLNamespace];
    v13 = OCXFindChild(v11, pXPresentationMLNamespace, "showPr");

    if (v13)
    {
      [toCopy setIsLooping:{CXDefaultBoolAttribute(v13, CXNoNamespace, "loop", 0)}];
      pXPresentationMLNamespace2 = [stateCopy PXPresentationMLNamespace];
      v15 = OCXFindChild(v13, pXPresentationMLNamespace2, "kiosk");

      if (v15)
      {
        [toCopy setIsKiosk:1];
      }
    }
  }
}

+ (void)readSlideIndicesWithPresentationPart:(id)part presentationState:(id)state
{
  partCopy = part;
  stateCopy = state;
  v6 = OCXGetRootElement([partCopy xmlDocument]);
  pXPresentationMLNamespace = [stateCopy PXPresentationMLNamespace];
  v8 = OCXFindChild(v6, pXPresentationMLNamespace, "sldIdLst");

  if (v8)
  {
    pXPresentationMLNamespace2 = [stateCopy PXPresentationMLNamespace];
    Child = OCXFindChild(v8, pXPresentationMLNamespace2, "sldId");

    if (Child)
    {
      v11 = 0;
      do
      {
        v12 = [stateCopy OCXReadRequiredRelationshipForNode:Child packagePart:partCopy];
        targetLocation = [v12 targetLocation];
        [stateCopy setSlideIndex:v11 forSlideURL:targetLocation];

        pXPresentationMLNamespace3 = [stateCopy PXPresentationMLNamespace];
        Child = OCXFindNextChild(Child, pXPresentationMLNamespace3, "sldId");

        ++v11;
      }

      while (Child);
    }
  }
}

@end