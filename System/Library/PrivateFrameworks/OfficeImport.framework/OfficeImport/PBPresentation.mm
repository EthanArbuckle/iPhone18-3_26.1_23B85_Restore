@interface PBPresentation
+ (id)drawingGroupHolderWithDocumentContainerHolder:(id)holder;
+ (void)addHeadersFootersToDocumentContainer:(id)container instance:(int)instance;
+ (void)processLayoutTypesFromDocument:(id)document masterLayoutMap:(id)map state:(id)state;
+ (void)readCommentAuthorsFrom:(id)from state:(id)state;
+ (void)readDefaultTextListStyle:(id)style fromDocumentContainer:(id)container state:(id)state;
+ (void)readFrom:(void *)from to:(id)to cancel:(id)cancel asThumbnail:(BOOL)thumbnail delegate:(id)delegate;
+ (void)readMasterAndLayouts:(id)layouts masterLayoutMap:(id)map state:(id)state;
+ (void)readNotes:(id)notes masterLayoutMap:(id)map slideIdMap:(id)idMap state:(id)state delegate:(id)delegate;
+ (void)readSlideListWithInstance:(int)instance documentContainerHolder:(id)holder state:(id)state block:(id)block;
+ (void)readSlides:(id)slides masterLayoutMap:(id)map slideIdMap:(id)idMap state:(id)state isThumbnail:(BOOL)thumbnail delegate:(id)delegate;
+ (void)readTextStyleFromNotesMaster:(id)master toNotesMaster:(id)notesMaster slideMaster:(id)slideMaster state:(id)state;
+ (void)readTextStylesFromSlideMaster:(id)master toSlideMaster:(id)slideMaster state:(id)state;
+ (void)readThemeFromSlideMaster:(id)master document:(id)document theme:(id)theme colorMap:(id)map state:(id)state;
+ (void)readXmlLayoutsFromSlideMaster:(id)master document:(id)document masterInfo:(id)info state:(id)state;
+ (void)scanSlideListForLayoutTypes:(id)types slideListHolder:(id)holder masterLayoutMap:(id)map;
+ (void)setDefaultTextStyleWithEnvironmentHolder:(id)holder state:(id)state;
+ (void)setFontEntites:(id)entites environmentHolder:(id)holder;
@end

@implementation PBPresentation

+ (id)drawingGroupHolderWithDocumentContainerHolder:(id)holder
{
  v3 = [holder firstChildOfType:1035];
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 childCount] == 1;
  TCVerifyInputMeetsCondition(v4);
  v5 = [v3 childAt:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  TCVerifyInputMeetsCondition(isKindOfClass & 1);

  return v5;
}

+ (void)readFrom:(void *)from to:(id)to cancel:(id)cancel asThumbnail:(BOOL)thumbnail delegate:(id)delegate
{
  thumbnailCopy = thumbnail;
  toCopy = to;
  cancelCopy = cancel;
  delegateCopy = delegate;
  v12 = [[PBPresentationReaderState alloc] initWithReader:from tgtPresentation:toCopy];
  [(PBPresentationReaderState *)v12 setCancelDelegate:cancelCopy];
  v13 = [[ESDRoot alloc] initWithPbState:v12];
  [(PBPresentationReaderState *)v12 setDocumentRoot:v13];
  v14 = [(ESDRoot *)v13 pbReferenceWithID:PptBinaryReader::getDocumentRef(from)];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  TCVerifyInputMeetsCondition(isKindOfClass & 1);

  v16 = [v14 firstChildOfType:1010];
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();
  TCVerifyInputMeetsCondition(v17 & 1);
  [self setFontEntites:v12 environmentHolder:v16];
  [self setDefaultTextStyleWithEnvironmentHolder:v16 state:v12];
  v18 = [v14 firstChildOfType:1001];
  Atom = ESDAtomAccess<PptDocumentAtom>::extractAtom(v18, 1);

  [PBHyperlink readHyperlinksWithPresentationState:v12];
  v48 = [v14 firstChildOfType:2000];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();
  TCVerifyInputMeetsCondition(v20 & 1);
  objc_opt_class();
  [PBProgTag readDocumentList:v48 state:v12];
  [toCopy setSlideSize:{(Atom[12] / 8), (Atom[13] / 8)}];
  [toCopy setNotesSize:{(Atom[14] / 8), (Atom[15] / 8)}];
  [toCopy setIsCommentsVisible:*(Atom + 82) != 0];
  v21 = [v14 firstChildOfType:1025];
  v44 = v21;
  if (v21)
  {
    eshObject = [v21 eshObject];
    if (eshObject)
    {
    }

    else
    {
      v23 = 0;
    }

    TCVerifyInputMeetsCondition(v23 != 0);
    [toCopy setIsLooping:*(v23 + 101)];
    [toCopy setIsKiosk:v23[24] == 32];
  }

  v46 = [self drawingGroupHolderWithDocumentContainerHolder:v14];
  officeArtState = [(PBPresentationReaderState *)v12 officeArtState];
  [OABDrawingGroup readBlipsFromDrawingGroup:v46 toDocument:toCopy state:officeArtState];

  v25 = [v16 firstChildOfType:4009];
  v26 = ESDAtomAccess<PptTextDefaultSpecialInfoAtom>::extractAtom(v25, 0);

  if (v26)
  {
    defaultTextStyle = [toCopy defaultTextStyle];
    defaultProperties = [defaultTextStyle defaultProperties];
    [PBCharacterProperties readCharacterProperties:defaultProperties specialInfo:v26 + 48 state:v12];
  }

  officeArtState2 = [(PBPresentationReaderState *)v12 officeArtState];
  xmlDocumentState = [officeArtState2 xmlDocumentState];
  officeArtState3 = [(PBPresentationReaderState *)v12 officeArtState];
  useXmlBlobs = [officeArtState3 useXmlBlobs];

  if (useXmlBlobs)
  {
    v32 = [v14 firstChildOfType:1064];
    v33 = ESDAtomAccess<PptRoundTripCustomTableStylesAtom>::extractAtom(v32, 0);

    if (v33)
    {
      v34 = OCPNewZipPackageWithOcBinaryData(v33 + 1);
      v35 = v34;
      if (v34)
      {
        v43 = cancelCopy;
        v42 = [v34 partByRelationshipType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/tableStyles"];
        tableStyleCache = [xmlDocumentState tableStyleCache];
        officeArtState4 = [xmlDocumentState officeArtState];
        [OAXTable cacheTableStylesInPart:v42 cache:tableStyleCache drawingState:officeArtState4];

        cancelCopy = v43;
      }
    }
  }

  v38 = +[PBMasterLayoutMap masterLayoutMap];
  [self readMasterAndLayouts:v14 masterLayoutMap:v38 state:v12];
  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [self readSlides:v14 masterLayoutMap:v38 slideIdMap:v39 state:v12 isThumbnail:thumbnailCopy delegate:delegateCopy];
  if (!thumbnailCopy)
  {
    [self readNotes:v14 masterLayoutMap:v38 slideIdMap:v39 state:v12 delegate:delegateCopy];
  }

  summary = [toCopy summary];
  if (from)
  {
    v41 = from + 8;
  }

  else
  {
    v41 = 0;
  }

  [OCBSummary readSummary:summary reader:v41];

  if (delegateCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegateCopy readerDidEndDocument:toCopy];
  }
}

+ (void)setFontEntites:(id)entites environmentHolder:(id)holder
{
  entitesCopy = entites;
  holderCopy = holder;
  v6 = [holderCopy firstChildOfType:2005];
  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    TCVerifyInputMeetsCondition(isKindOfClass & 1);
    childCount = [v6 childCount];
    if (childCount)
    {
      for (i = 0; i != childCount; ++i)
      {
        v10 = [v6 childAt:i];
        eshObject = [v10 eshObject];
        if ((*(*eshObject + 16))(eshObject) == 4023)
        {
          eshObject2 = [v10 eshObject];
          if (eshObject2)
          {
          }

          else
          {
            v13 = 0;
          }

          v14 = [MEMORY[0x277CCACA8] stringWithCsString:v13 + 48];
          [entitesCopy addFontEntity:v14 charSet:v13[73] type:v13[72] & 3 family:v13[72] & 0xF0];
        }
      }
    }
  }
}

+ (void)addHeadersFootersToDocumentContainer:(id)container instance:(int)instance
{
  instanceCopy = instance;
  [container addPptContainerChildOfType:4057];
  eshContainer = [objc_claimAutoreleasedReturnValue() eshContainer];
  EshRecord::setInstance(eshContainer, instanceCopy);
  operator new();
}

+ (void)setDefaultTextStyleWithEnvironmentHolder:(id)holder state:(id)state
{
  holderCopy = holder;
  stateCopy = state;
  v6 = [holderCopy indexOfFirstChildOfType:4003 afterIndex:0];
  while (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [holderCopy childAt:v6];
    TCVerifyInputMeetsCondition(v7 != 0);
    eshObject = [v7 eshObject];
    if (eshObject)
    {
      if (v9)
      {
        v10 = v9;
        Instance = EshRecord::getInstance(v9);
        TCVerifyInputMeetsCondition(Instance < 9);
        *[stateCopy docSourceMasterStyleInfoOfType:Instance] = v10;
        if (Instance == 4)
        {
          tgtPresentation = [stateCopy tgtPresentation];
          defaultTextStyle = [tgtPresentation defaultTextStyle];
          [PBMasterStyle readMasterStyleAtom:v10 baseMasterStyleAtom:0 masterBulletStyleAtom:0 textListStyle:defaultTextStyle state:stateCopy];
        }
      }
    }

    v6 = [holderCopy indexOfFirstChildOfType:4003 afterIndex:v6];
  }
}

+ (void)readDefaultTextListStyle:(id)style fromDocumentContainer:(id)container state:(id)state
{
  styleCopy = style;
  containerCopy = container;
  stateCopy = state;
  v25 = containerCopy;
  v26 = [containerCopy firstChildOfType:1010];
  v9 = [v26 firstChildOfType:4005];
  Atom = ESDAtomAccess<PptTextDefaultParagraphStyleAtom>::extractAtom(v9, 0);

  v11 = [v26 firstChildOfType:4004];
  v12 = ESDAtomAccess<PptTextDefaultCharacterStyleAtom>::extractAtom(v11, 0);

  v13 = [v26 firstChildOfType:4009];
  v14 = ESDAtomAccess<PptTextDefaultSpecialInfoAtom>::extractAtom(v13, 0);

  v23 = [v25 firstChildOfType:2000];
  v22 = [PBProgTag binaryTagDataWithName:L"___PPT9" inProgTagsParent:v23];
  v15 = [v22 firstChildOfType:4016];
  ESDAtomAccess<PptTextDefaultStyle9Atom>::extractAtom(v15, 0);

  defaultProperties = [styleCopy defaultProperties];
  if (v14)
  {
    [PBCharacterProperties readCharacterProperties:defaultProperties specialInfo:v14 + 48 state:stateCopy];
  }

  v16 = [v26 childOfType:4003 instance:4];
  v17 = ESDAtomAccess<PptTextMasterStyleAtom>::extractAtom(v16, 1);

  v18 = v17[14] - v17[12];
  v19 = (v18 >> 3);
  if ((v18 >> 3))
  {
    v20 = 0;
    do
    {
      v21 = [styleCopy propertiesForListLevel:v20];
      if (v14)
      {
        [PBCharacterProperties readCharacterProperties:v21 specialInfo:v14 + 48 state:stateCopy];
      }

      if (Atom)
      {
        operator new();
      }

      if (v12)
      {
        operator new();
      }

      ++v20;
    }

    while (v19 != v20);
  }
}

+ (void)readThemeFromSlideMaster:(id)master document:(id)document theme:(id)theme colorMap:(id)map state:(id)state
{
  masterCopy = master;
  documentCopy = document;
  themeCopy = theme;
  mapCopy = map;
  stateCopy = state;
  v16 = [masterCopy firstChildOfType:1038];
  Atom = ESDAtomAccess<PptRoundTripThemeAtom>::extractAtom(v16, 0);

  officeArtState = [stateCopy officeArtState];
  useXmlBlobs = [officeArtState useXmlBlobs];

  if (Atom)
  {
    v20 = useXmlBlobs;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v21 = Atom[9];
    v22 = *(Atom + 16);
    officeArtState2 = [stateCopy officeArtState];
    xmlDrawingState = [officeArtState2 xmlDrawingState];
    [OAXTheme readFromThemeData:v21 themeDataSize:v22 toTheme:themeCopy xmlDrawingState:xmlDrawingState];

    v25 = [masterCopy firstChildOfType:1039];
    v26 = ESDAtomAccess<PptRoundTripColorMappingAtom>::extractAtom(v25, 0);

    if (v26)
    {
      v27 = CXGetRootElement(*(v26 + 9), *(v26 + 16));
      if (v27)
      {
        [OAXColorMap readFromXmlNode:v27 toColorMap:mapCopy];
        xmlFreeDoc(v27->doc);
      }
    }
  }

  else
  {
    baseStyles = [themeCopy baseStyles];
    colorScheme = [baseStyles colorScheme];
    [PBSlideBase readColorScheme:masterCopy colorScheme:colorScheme colorMap:mapCopy state:stateCopy];

    v30 = [self drawingGroupHolderWithDocumentContainerHolder:documentCopy];
    drawableDefaults = [themeCopy drawableDefaults];
    addShapeDefaults = [drawableDefaults addShapeDefaults];

    drawableDefaults2 = [themeCopy drawableDefaults];
    addLineDefaults = [drawableDefaults2 addLineDefaults];

    drawableDefaults3 = [themeCopy drawableDefaults];
    addTextDefaults = [drawableDefaults3 addTextDefaults];

    officeArtState3 = [stateCopy officeArtState];
    [OABDrawingGroup readGraphicalDefaultsFromDrawingGroup:v30 toTheme:themeCopy state:officeArtState3];

    drawableDefaults4 = [themeCopy drawableDefaults];
    shapeDefaults = [drawableDefaults4 shapeDefaults];
    textListStyle = [shapeDefaults textListStyle];
    [self readDefaultTextListStyle:textListStyle fromDocumentContainer:documentCopy state:stateCopy];

    drawableDefaults5 = [themeCopy drawableDefaults];
    textDefaults = [drawableDefaults5 textDefaults];
    textListStyle2 = [textDefaults textListStyle];
    [self readDefaultTextListStyle:textListStyle2 fromDocumentContainer:documentCopy state:stateCopy];
  }
}

+ (void)readXmlLayoutsFromSlideMaster:(id)master document:(id)document masterInfo:(id)info state:(id)state
{
  masterCopy = master;
  documentCopy = document;
  infoCopy = info;
  stateCopy = state;
  v9 = 0;
  while (1)
  {
    v9 = [masterCopy indexOfFirstChildOfType:1054 afterIndex:v9];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v10 = [masterCopy childAt:v9];
    v11 = v10;
    if (v10)
    {
      eshObject = [v10 eshObject];
      if (eshObject)
      {
        if (v13)
        {
          v14 = v13;
          v15 = OCPNewZipPackageWithOcBinaryData(v13 + 1);
          v16 = v15;
          if (v15)
          {
            v17 = [v15 partByRelationshipType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideLayout"];
            if (v17)
            {
              slideMaster = [infoCopy slideMaster];
              addSlideLayout = [slideMaster addSlideLayout];

              Instance = EshRecord::getInstance(v14);
              officeArtState = [stateCopy officeArtState];
              xmlDocumentState = [officeArtState xmlDocumentState];
              [PXSlideLayout readFromPackagePart:v17 toSlideLayout:addSlideLayout presentationState:xmlDocumentState];

              [infoCopy setSlideLayout:addSlideLayout forXmlLayoutId:Instance];
            }
          }
        }
      }
    }
  }
}

+ (void)readTextStylesFromSlideMaster:(id)master toSlideMaster:(id)slideMaster state:(id)state
{
  masterCopy = master;
  slideMasterCopy = slideMaster;
  stateCopy = state;
  v9 = [masterCopy firstChildOfType:1059];
  Atom = ESDAtomAccess<PptRoundTripOfficeArtTextStylesAtom>::extractAtom(v9, 0);

  officeArtState = [stateCopy officeArtState];
  useXmlBlobs = [officeArtState useXmlBlobs];

  if (Atom)
  {
    v13 = useXmlBlobs;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = OCPNewZipPackageWithOcBinaryData(Atom + 1);
    v15 = v14;
    if (v14)
    {
      v16 = [v14 partByRelationshipType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideMaster"];
      v17 = OCXGetRootElement([v16 xmlDocument]);
      officeArtState2 = [stateCopy officeArtState];
      xmlDocumentState = [officeArtState2 xmlDocumentState];
      [PXSlideMaster readTextStylesFromNode:v17 slideMaster:slideMasterCopy state:xmlDocumentState];
    }
  }

  else
  {
    [PBSlideMaster setSlideMasterTextStyles:slideMasterCopy state:stateCopy];
  }
}

+ (void)readTextStyleFromNotesMaster:(id)master toNotesMaster:(id)notesMaster slideMaster:(id)slideMaster state:(id)state
{
  masterCopy = master;
  notesMasterCopy = notesMaster;
  slideMasterCopy = slideMaster;
  stateCopy = state;
  v11 = [masterCopy firstChildOfType:1063];
  Atom = ESDAtomAccess<PptRoundTripNotesMasterTextStylesAtom>::extractAtom(v11, 0);

  officeArtState = [stateCopy officeArtState];
  useXmlBlobs = [officeArtState useXmlBlobs];

  if (Atom)
  {
    v15 = useXmlBlobs;
  }

  else
  {
    v15 = 0;
  }

  if ((v15 & 1) == 0)
  {
    v17 = [stateCopy masterStyles:slideMasterCopy];
    v28 = [MEMORY[0x277CCABB0] numberWithLong:2];
    v18 = [v17 objectForKey:v28];

    notesTextStyle = [notesMasterCopy notesTextStyle];
    [notesTextStyle overrideWithTextStyle:v18];

    theme = [notesMasterCopy theme];
    baseStyles = [theme baseStyles];
    fontScheme = [baseStyles fontScheme];

    minorFont = [fontScheme minorFont];
    xmlDocumentState2 = [v18 propertiesForListLevel:0];
    [PBSlideMaster setFont:minorFont fromCharacterProperties:xmlDocumentState2];
    goto LABEL_9;
  }

  v16 = OCPNewZipPackageWithOcBinaryData(Atom + 1);
  v17 = v16;
  if (!v16)
  {
    goto LABEL_11;
  }

  v18 = [v16 partByRelationshipType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideMaster"];
  v19 = OCXGetRootElement([v18 xmlDocument]);
  officeArtState2 = [stateCopy officeArtState];
  xmlDocumentState = [officeArtState2 xmlDocumentState];
  pXPresentationMLNamespace = [xmlDocumentState PXPresentationMLNamespace];
  v23 = OCXFindChild(v19, pXPresentationMLNamespace, "bodyStyle");

  if (v23)
  {
    fontScheme = [notesMasterCopy notesTextStyle];
    minorFont = [stateCopy officeArtState];
    xmlDocumentState2 = [minorFont xmlDocumentState];
    officeArtState3 = [xmlDocumentState2 officeArtState];
    [OAXTextListStyle readNode:v23 textListStyle:fontScheme state:officeArtState3];

LABEL_9:
  }

LABEL_11:
}

+ (void)readSlideListWithInstance:(int)instance documentContainerHolder:(id)holder state:(id)state block:(id)block
{
  instanceCopy = instance;
  holderCopy = holder;
  stateCopy = state;
  blockCopy = block;
  documentRoot = [stateCopy documentRoot];
  v11 = [holderCopy childOfType:4080 instance:instanceCopy];
  childCount = [v11 childCount];
  [stateCopy setSourceSlideListHolder:v11];
  currentSlideTextBlockRecordIndexRangeVector = [stateCopy currentSlideTextBlockRecordIndexRangeVector];
  v14 = 0;
  v49 = childCount;
  do
  {
    if (v14 >= childCount || ([stateCopy isCancelled] & 1) != 0)
    {
      break;
    }

    v54 = 0;
    v15 = [v11 childAt:v14];
    Atom = ESDAtomAccess<PptSlidePersistAtom>::extractAtom(v15, 1);

    if (Atom)
    {
      v51 = Atom;
      v17 = Atom[13];
      v18 = *currentSlideTextBlockRecordIndexRangeVector;
      currentSlideTextBlockRecordIndexRangeVector[1] = *currentSlideTextBlockRecordIndexRangeVector;
      v52 = v17;
      if (v17 >= 1)
      {
        v19 = 0;
        do
        {
          v20 = currentSlideTextBlockRecordIndexRangeVector[2];
          if (v18 >= v20)
          {
            v22 = *currentSlideTextBlockRecordIndexRangeVector;
            v23 = v18 - *currentSlideTextBlockRecordIndexRangeVector;
            v24 = (v20 - *currentSlideTextBlockRecordIndexRangeVector) >> 4;
            if (2 * v24 <= (v23 >> 4) + 1)
            {
              v25 = (v23 >> 4) + 1;
            }

            else
            {
              v25 = 2 * v24;
            }

            if (v24 >= 0x7FFFFFFF)
            {
              v26 = 0xFFFFFFFFLL;
            }

            else
            {
              v26 = v25;
            }

            if (v26)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(currentSlideTextBlockRecordIndexRangeVector, v26);
            }

            v27 = (v23 & 0xFFFFFFFF0);
            v28 = &v27[-(v18 - *currentSlideTextBlockRecordIndexRangeVector)];
            *v27 = xmmword_25D6FA740;
            v21 = (v27 + 16);
            if (v22 != v18)
            {
              v29 = v28;
              do
              {
                v30 = *v22++;
                *v29 = v30;
                v29 += 16;
              }

              while (v22 != v18);
              v22 = *currentSlideTextBlockRecordIndexRangeVector;
            }

            *currentSlideTextBlockRecordIndexRangeVector = v28;
            currentSlideTextBlockRecordIndexRangeVector[1] = v21;
            currentSlideTextBlockRecordIndexRangeVector[2] = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v18 = xmmword_25D6FA740;
            v21 = v18 + 1;
          }

          currentSlideTextBlockRecordIndexRangeVector[1] = v21;
          ++v19;
          v18 = v21;
        }

        while (v19 != v52);
      }

      v31 = [v11 indexOfFirstChildOfType:1011 afterIndex:v14];
      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = childCount;
      }

      else
      {
        v32 = v31;
      }

      v33 = v14 + 1;
      v53 = v32;
      if (v33 < v32)
      {
        do
        {
          v34 = [v11 indexOfFirstChildOfType:3999 afterIndex:v33];
          if (v34 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v35 = v53;
          }

          else
          {
            v35 = v34;
          }

          if (v35 >= v53)
          {
            v36 = v53;
          }

          else
          {
            v36 = v35;
          }

          if (v36 <= v33)
          {
            v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PBPresentation(Private) readSlideListWithInstance:documentContainerHolder:state:block:]"];
            v38 = v11;
            v39 = stateCopy;
            v40 = holderCopy;
            v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Binary/Mapper/PBPresentation.mm"];
            [OITSUAssertionHandler handleFailureInFunction:v37 file:v41 lineNumber:1697 isFatal:0 description:"If the text block start index was < the start index of the next slide, then the text block must have a positive length"];

            holderCopy = v40;
            stateCopy = v39;
            v11 = v38;
            +[OITSUAssertionHandler logBacktraceThrottled];
          }

          v42 = [v11 childAt:v33];
          v43 = ESDAtomAccess<PptTextHeaderAtom>::extractAtom(v42, 1);

          if (v43)
          {
            v44 = v52 > EshRecord::getInstance(v43);
          }

          else
          {
            v44 = 0;
          }

          TCVerifyInputMeetsCondition(v44);
          v45 = &(*currentSlideTextBlockRecordIndexRangeVector)[EshRecord::getInstance(v43)];
          *v45 = v33;
          v45[1] = v36 - v33;
          v33 = v36;
        }

        while (v35 < v53);
      }

      v46 = [documentRoot pbReferenceWithID:v51[12]];
      if (v46)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        TCVerifyInputMeetsCondition(isKindOfClass & 1);
        blockCopy[2](blockCopy, v46, v51, &v54);
      }

      currentSlideTextBlockRecordIndexRangeVector[1] = *currentSlideTextBlockRecordIndexRangeVector;

      v14 = v53;
      childCount = v49;
    }

    else
    {
      TCVerifyInputMeetsCondition(0);
    }
  }

  while ((v54 & 1) == 0);
}

+ (void)readMasterAndLayouts:(id)layouts masterLayoutMap:(id)map state:(id)state
{
  layoutsCopy = layouts;
  mapCopy = map;
  stateCopy = state;
  tgtPresentation = [stateCopy tgtPresentation];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__PBPresentation_Private__readMasterAndLayouts_masterLayoutMap_state___block_invoke;
  v19[3] = &unk_2799CDAB8;
  v12 = tgtPresentation;
  v20 = v12;
  v13 = stateCopy;
  v21 = v13;
  v14 = mapCopy;
  v22 = v14;
  selfCopy = self;
  v15 = layoutsCopy;
  v23 = v15;
  [self readSlideListWithInstance:1 documentContainerHolder:v15 state:v13 block:v19];
  v16 = [v15 childOfType:4080 instance:0];
  if (v16)
  {
    documentRoot = [v13 documentRoot];
    [self scanSlideListForLayoutTypes:documentRoot slideListHolder:v16 masterLayoutMap:v14];
  }

  [self readCommentAuthorsFrom:v15 state:v13];
  documentRoot2 = [v13 documentRoot];
  [self processLayoutTypesFromDocument:documentRoot2 masterLayoutMap:v14 state:v13];
}

void __70__PBPresentation_Private__readMasterAndLayouts_masterLayoutMap_state___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a3 + 48);
  v7 = *(a3 + 56);
  v37 = v5;
  v8 = [v5 eshObject];
  if ((*(*v8 + 16))(v8) == 1016)
  {
    v9 = [[PDSlideMaster alloc] initWithPresentation:*(a1 + 32)];
    [*(a1 + 32) addSlideMaster:v9];
    v10 = objc_alloc_init(PBMasterInfo);
    [(PBMasterInfo *)v10 setSlideMaster:v9];
    [(PBMasterInfo *)v10 setMainPbRef:v6];
    v11 = [*(a1 + 40) officeArtState];
    -[PBMasterInfo setUseXmlBlobs:](v10, "setUseXmlBlobs:", [v11 useXmlBlobs]);

    [*(a1 + 48) setMasterInfo:v10 forMasterId:v7];
    [*(a1 + 40) setCurrentSourceMasterStyleInfoVector:{-[PBMasterInfo sourceTextStyling](v10, "sourceTextStyling")}];
    v12 = 0;
    do
    {
      v13 = [*(a1 + 40) docSourceMasterStyleInfoOfType:v12];
      *[*(a1 + 40) currentSourceMasterStyleInfoOfType:v12] = *v13;
      v12 = (v12 + 1);
    }

    while (v12 != 9);
    [PBSlideMaster readSlideMasterTextStyles:v9 slideHolder:v37 state:*(a1 + 40)];
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v16 = [(PDSlideMaster *)v9 theme];
    v17 = [(PDSlideMaster *)v9 colorMap];
    [v15 readThemeFromSlideMaster:v37 document:v14 theme:v16 colorMap:v17 state:*(a1 + 40)];

    [*(a1 + 64) readTextStylesFromSlideMaster:v37 toSlideMaster:v9 state:*(a1 + 40)];
    [PBSlideMaster readMasterDrawables:v9 slideHolder:v37 state:*(a1 + 40)];
    [PBSlideMaster readSlideMasterName:v9 slideHolder:v37 state:*(a1 + 40)];
    v18 = [(PDSlideMaster *)v9 theme];
    [v18 validateTheme];

    [*(a1 + 40) setCurrentSourceMasterStyleInfoVector:0];
    if ([(PBMasterInfo *)v10 useXmlBlobs])
    {
      v19 = [v37 firstChildOfType:1052];
      Atom = ESDAtomAccess<PptRoundTripOriginalMainMasterIdAtom>::extractAtom(v19, 0);

      if (Atom)
      {
        [(PBMasterInfo *)v10 setXmlMainMasterId:Atom[12]];
      }

      v21 = [v37 firstChildOfType:1053];
      v22 = ESDAtomAccess<PptRoundTripCompositeMasterIdAtom>::extractAtom(v21, 0);

      if (v22)
      {
        [(PBMasterInfo *)v10 setXmlMainMasterId:v22[12]];
      }

      [*(a1 + 64) readXmlLayoutsFromSlideMaster:v37 document:*(a1 + 56) masterInfo:v10 state:*(a1 + 40)];
    }
  }

  else
  {
    v10 = [v37 firstChildOfType:1007];
    v23 = [(PBMasterInfo *)v10 eshObject];
    if (v23)
    {
    }

    else
    {
      v24 = 0;
    }

    TCVerifyInputMeetsCondition(v24 != 0);
    if (v24)
    {
      LODWORD(v25) = v24[21];
      v26 = [*(a1 + 48) masterInfoForMasterId:v25];
      if (!v26)
      {
        v27 = [*(a1 + 48) allMasterIds];
        v28 = [v27 sortedArrayUsingSelector:sel_compare_];
        v29 = [v28 firstObject];

        TCVerifyInputMeetsCondition(v29 != 0);
        v25 = [v29 intValue];
        v26 = [*(a1 + 48) masterInfoForMasterId:v25];
      }

      [v26 setTitlePbRef:v6];
      v9 = [v26 slideMaster];
      v30 = [(PDSlideMaster *)v9 addSlideLayout];
      [v30 setSlideLayoutType:1];
      [*(a1 + 40) setCurrentSourceMasterStyleInfoVector:{objc_msgSend(v26, "sourceTextStyling")}];
      v34 = __PAIR64__(v7, v25);
      v31 = objc_alloc_init(OADColorScheme);
      v32 = objc_alloc_init(OADColorMap);
      if ([PBSlideBase readColorScheme:v37 colorScheme:v31 colorMap:v32 state:*(a1 + 40)])
      {
        v33 = [v30 themeOverrides];
        [v33 setColorScheme:v31];

        [v30 setColorMapOverride:v32];
      }

      [PBSlideBase readDrawingGroup:v37 slide:v30 state:*(a1 + 40), v34];
      [*(a1 + 40) setCurrentSourceMasterStyleInfoVector:0];
      [v30 setShowMasterShapes:*(v24 + 92)];
      [*(a1 + 48) setMasterId:v35 forTitleId:v36];
    }

    else
    {
      v9 = 0;
    }
  }
}

+ (void)scanSlideListForLayoutTypes:(id)types slideListHolder:(id)holder masterLayoutMap:(id)map
{
  typesCopy = types;
  holderCopy = holder;
  mapCopy = map;
  childCount = [holderCopy childCount];
  if (childCount)
  {
    for (i = 0; i != childCount; ++i)
    {
      v11 = [holderCopy childAt:i];
      eshObject = [v11 eshObject];
      if ((*(*eshObject + 16))(eshObject) == 1011 && (*(*eshObject + 80))(eshObject))
        v13 = {;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        TCVerifyInputMeetsCondition(isKindOfClass & 1);
        v15 = [mapCopy masterInfoForSlideHolder:v13];
        v16 = [v15 slideLayoutForSlideHolder:v13];
        if (!v16)
        {
          [v15 cacheTargetLayoutType:pdSlideLayoutTypeForPptSlideHolder(v13)];
        }
      }
    }
  }
}

+ (void)readCommentAuthorsFrom:(id)from state:(id)state
{
  fromCopy = from;
  stateCopy = state;
  v20 = [fromCopy firstChildOfType:2000];
  v6 = [PBProgTag binaryTagDataWithName:L"___PPT10" inProgTagsParent:v20];
  for (i = 0; ; i = v8 + 1)
  {
    v8 = i;
    if ([v6 childCount] <= i)
    {
      break;
    }

    v9 = [v6 childAt:i];
    eshObject = [v9 eshObject];
    if ((*(*eshObject + 16))(eshObject) == 12004)
    {
      v11 = objc_alloc_init(PDCommentAuthor);
      tgtPresentation = [stateCopy tgtPresentation];
      -[PDCommentAuthor setId:](v11, "setId:", [tgtPresentation commentAuthorCount]);

      tgtPresentation2 = [stateCopy tgtPresentation];
      [tgtPresentation2 addCommentAuthor:v11];

      v14 = [v9 firstChildOfType:12005];
      eshObject2 = [v14 eshObject];

      if (eshObject2)
      {
        [(PDCommentAuthor *)v11 setColorIndex:*(eshObject2 + 48)];
        [(PDCommentAuthor *)v11 setLastCommentIndex:(*(eshObject2 + 52) - 1)];
      }

      v16 = [v9 firstChildOfType:4026];
      eshObject3 = [v16 eshObject];
      if (eshObject3)
      {
        if (v18)
        {
          v19 = [MEMORY[0x277CCACA8] stringWithCsString:v18 + 48];
          [(PDCommentAuthor *)v11 setName:v19];
        }
      }
    }
  }
}

+ (void)processLayoutTypesFromDocument:(id)document masterLayoutMap:(id)map state:(id)state
{
  documentCopy = document;
  mapCopy = map;
  stateCopy = state;
  if ((+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultBoundsInitialized & 1) == 0)
  {
    +[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultBoundsInitialized = 1;
    TCRectMakeWithSides();
    *+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds = v7;
    *&+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds[8] = v8;
    *&+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds[16] = v9;
    *&+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds[24] = v10;
    TCRectMakeWithSides();
    *ymmword_27FC69538 = v11;
    *&ymmword_27FC69538[8] = v12;
    *&ymmword_27FC69538[16] = v13;
    *&ymmword_27FC69538[24] = v14;
    TCRectMakeWithSides();
    *ymmword_27FC69558 = v15;
    *&ymmword_27FC69558[8] = v16;
    *&ymmword_27FC69558[16] = v17;
    *&ymmword_27FC69558[24] = v18;
    TCRectMakeWithSides();
    *ymmword_27FC69578 = v19;
    *&ymmword_27FC69578[8] = v20;
    *&ymmword_27FC69578[16] = v21;
    *&ymmword_27FC69578[24] = v22;
    TCRectMakeWithSides();
    *ymmword_27FC69598 = v23;
    *&ymmword_27FC69598[8] = v24;
    *&ymmword_27FC69598[16] = v25;
    *&ymmword_27FC69598[24] = v26;
    TCRectMakeWithSides();
    qword_27FC695D8 = v27;
    unk_27FC695E0 = v28;
    qword_27FC695E8 = v29;
    unk_27FC695F0 = v30;
    TCRectMakeWithSides();
    qword_27FC695F8 = v31;
    unk_27FC69600 = v32;
    qword_27FC69608 = v33;
    unk_27FC69610 = v34;
    TCRectMakeWithSides();
    qword_27FC69618 = v35;
    unk_27FC69620 = v36;
    qword_27FC69628 = v37;
    unk_27FC69630 = v38;
    TCRectMakeWithSides();
    qword_27FC69638 = v39;
    unk_27FC69640 = v40;
    qword_27FC69648 = v41;
    unk_27FC69650 = v42;
    TCRectMakeWithSides();
    qword_27FC69658 = v43;
    unk_27FC69660 = v44;
    qword_27FC69668 = v45;
    unk_27FC69670 = v46;
    TCRectMakeWithSides();
    qword_27FC69678 = v47;
    unk_27FC69680 = v48;
    qword_27FC69688 = v49;
    unk_27FC69690 = v50;
    TCRectMakeWithSides();
    *ymmword_27FC69698 = v51;
    *&ymmword_27FC69698[8] = v52;
    *&ymmword_27FC69698[16] = v53;
    *&ymmword_27FC69698[24] = v54;
    TCRectMakeWithSides();
    *ymmword_27FC696B8 = v55;
    *&ymmword_27FC696B8[8] = v56;
    *&ymmword_27FC696B8[16] = v57;
    *&ymmword_27FC696B8[24] = v58;
    *ymmword_27FC694B8 = CGRectUnion(*ymmword_27FC69538, *ymmword_27FC69558);
    *ymmword_27FC694D8 = CGRectUnion(*ymmword_27FC69578, *ymmword_27FC69598);
    *ymmword_27FC694F8 = CGRectUnion(*ymmword_27FC69538, *ymmword_27FC69578);
    *ymmword_27FC69518 = CGRectUnion(*ymmword_27FC69558, *ymmword_27FC69598);
    *ymmword_27FC69498 = CGRectUnion(*ymmword_27FC694F8, *ymmword_27FC69518);
    *ymmword_27FC695B8 = CGRectUnion(*+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds, *ymmword_27FC69498);
    *ymmword_27FC696D8 = CGRectUnion(*ymmword_27FC69698, *ymmword_27FC696B8);
  }

  v59 = MEMORY[0x277CBF348];
  v161 = *(MEMORY[0x277CBF348] + 8);
  v162 = *MEMORY[0x277CBF348];
  v187 = *&+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds[8];
  v188 = *+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds;
  v185 = *&+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds[24];
  v186 = *&+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds[16];
  v177 = *&ymmword_27FC69498[8];
  v178 = *ymmword_27FC69498;
  v175 = *&ymmword_27FC69498[24];
  v176 = *&ymmword_27FC69498[16];
  v206 = CGRectUnion(*+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds, *ymmword_27FC69498);
  y = v206.origin.y;
  x = v206.origin.x;
  height = v206.size.height;
  width = v206.size.width;
  tgtPresentation = [stateCopy tgtPresentation];
  [tgtPresentation slideSize];
  v62 = v61;
  v64 = v63;

  memset(&v202, 0, sizeof(v202));
  CGAffineTransformMakeScale(&v202, v62 / 5760.0, v64 / 4320.0);
  v159 = v59[1];
  v160 = *v59;
  allMasterIds = [mapCopy allMasterIds];
  v65 = [allMasterIds count];
  v66 = v65;
  if (v65)
  {
    v67 = 0;
    v183 = v64;
    v184 = v62;
    v154 = v65;
    do
    {
      v150 = v67;
      v68 = [allMasterIds objectAtIndex:documentCopy];
      intValue = [v68 intValue];

      v153 = [mapCopy masterInfoForMasterId:intValue];
      slideMaster = [v153 slideMaster];
      v165 = [stateCopy masterStyles:slideMaster];
      v205 = v202;
      v207.origin.y = v187;
      v207.origin.x = v188;
      v207.size.height = v185;
      v207.size.width = v186;
      v208 = CGRectApplyAffineTransform(v207, &v205);
      v191 = v208.origin.y;
      v192 = v208.origin.x;
      v189 = v208.size.height;
      v190 = v208.size.width;
      v70 = [slideMaster placeholderWithType:0 placeholderTypeIndex:0 overrideIndex:1];
      v152 = v70;
      if (v70)
      {
        drawableProperties = [v70 drawableProperties];
        orientedBounds = [drawableProperties orientedBounds];
        [orientedBounds bounds];
        v191 = v74;
        v192 = v73;
        v189 = v76;
        v190 = v75;
      }

      v205 = v202;
      v209.origin.y = v177;
      v209.origin.x = v178;
      v209.size.height = v175;
      v209.size.width = v176;
      v210 = CGRectApplyAffineTransform(v209, &v205);
      v181 = v210.origin.y;
      v182 = v210.origin.x;
      v179 = v210.size.height;
      v180 = v210.size.width;
      v77 = [slideMaster placeholderWithType:1 placeholderTypeIndex:0 overrideIndex:1];
      v151 = v77;
      if (v77)
      {
        drawableProperties2 = [v77 drawableProperties];
        orientedBounds2 = [drawableProperties2 orientedBounds];
        [orientedBounds2 bounds];
        v181 = v81;
        v182 = v80;
        v179 = v83;
        v180 = v82;
      }

      v211.origin.y = v191;
      v211.origin.x = v192;
      v211.size.height = v189;
      v211.size.width = v190;
      v223.origin.y = v181;
      v223.origin.x = v182;
      v223.size.height = v179;
      v223.size.width = v180;
      v212 = CGRectUnion(v211, v223);
      v172 = v212.origin.y;
      v173 = v212.origin.x;
      v170 = v212.size.height;
      v171 = v212.size.width;
      slideLayoutCount = [slideMaster slideLayoutCount];
      if (slideLayoutCount)
      {
        for (i = 0; i != slideLayoutCount; ++i)
        {
          v86 = [slideMaster slideLayoutAtIndex:i];
          [PBSlideMaster flattenPlaceholderTextStylesIntoLayout:v86 layoutType:0 masterStyleMap:v165];
        }
      }

      allTargetLayoutTypes = [v153 allTargetLayoutTypes];
      v87 = [allTargetLayoutTypes count];
      v88 = v87;
      if (v87)
      {
        v89 = 0;
        v155 = v87;
        do
        {
          v90 = [allTargetLayoutTypes objectAtIndex:v89];
          intValue2 = [v90 intValue];

          v92 = [slideMaster slideLayoutOfType:intValue2];
          if (!v92)
          {
            addSlideLayout = [slideMaster addSlideLayout];
            [addSlideLayout setSlideLayoutType:intValue2];
            v93 = intValue2 - 1;
            v94 = 18;
            v95 = 13;
            v96 = 14;
            v97 = 15;
            v98 = 16;
            v99 = 17;
            v100 = 7;
            v101 = 1;
            v102 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyLayoutBoundsArray;
            v103 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::title4BodiesLayoutBoundsArray;
            v104 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleOnlyLayoutBoundsArray;
            v105 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::emptyLayoutBoundsArray;
            v106 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyNextToBodyLayoutBoundsArray;
            v107 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyOverBodyLayoutBoundsArray;
            v108 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::verticalTitleBodyLayoutBoundsArray;
            v109 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::title2BodiesOverBodyLayoutBoundsArray;
            v110 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::largeBodyLayoutBoundsArray;
            v111 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::verticalTitleBodyOverBodyLayoutBoundsArray;
            switch(intValue2)
            {
              case 1:
              case 3:
                v101 = 0;
                v102 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::centerTitleSubtitleLayoutBoundsArray;
                goto LABEL_17;
              case 2:
              case 10:
              case 12:
              case 16:
              case 18:
              case 31:
                goto LABEL_17;
              case 4:
              case 13:
              case 14:
              case 15:
              case 19:
              case 20:
              case 22:
              case 24:
              case 30:
              case 32:
              case 33:
                v101 = 8;
                v102 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyNextToBodyLayoutBoundsArray;
                goto LABEL_17;
              case 5:
LABEL_30:
                v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                goto LABEL_54;
              case 6:
LABEL_31:
                v103 = v104;
                v96 = v100;
                v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                goto LABEL_54;
              case 7:
LABEL_27:
                v103 = v105;
                v96 = v98;
                v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                goto LABEL_54;
              case 8:
LABEL_28:
                v103 = v106;
                v96 = intValue2;
LABEL_29:
                v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__26_;
                goto LABEL_54;
              case 9:
LABEL_24:
                v103 = v107;
                v96 = intValue2;
                v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                goto LABEL_54;
              case 11:
LABEL_32:
                v103 = v108;
                v96 = v99;
                v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                goto LABEL_54;
              case 17:
LABEL_33:
                v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__15_;
                goto LABEL_54;
              case 21:
LABEL_25:
                v103 = v109;
                v96 = v95;
LABEL_26:
                v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__21_;
                goto LABEL_54;
              case 23:
              case 34:
                v101 = 11;
                v102 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::title2BodiesNextToBodyLayoutBoundsArray;
                goto LABEL_17;
              case 25:
              case 29:
                v101 = 10;
                v102 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyNextTo2BodiesLayoutBoundsArray;
                goto LABEL_17;
              case 26:
              case 28:
                v101 = 9;
                v102 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyOverBodyLayoutBoundsArray;
                goto LABEL_17;
              case 27:
LABEL_34:
                v103 = v110;
                v96 = v97;
                v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__25_;
                goto LABEL_54;
              case 35:
LABEL_23:
                v103 = v111;
                v96 = v94;
                v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__33_;
                goto LABEL_54;
              default:
                v113 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"PptSlideLayoutType pptSlideLayoutTypeForPDSlideLayoutType(PDSlideLayoutType)", &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyLayoutBoundsArray, &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyOverBodyLayoutBoundsArray, &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::verticalTitleBodyLayoutBoundsArray, &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::title2BodiesOverBodyLayoutBoundsArray, &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::largeBodyLayoutBoundsArray}];
                v114 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Binary/Mapper/PBPresentation.mm"];
                [OITSUAssertionHandler handleFailureInFunction:v113 file:v114 lineNumber:545 isFatal:0 description:"Unknown slide layout type"];

                +[OITSUAssertionHandler logBacktraceThrottled];
                v101 = 1;
                v102 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyLayoutBoundsArray;
LABEL_17:
                v103 = v102;
                v96 = v101;
                v104 = v102;
                v100 = v101;
                v105 = v102;
                v98 = v101;
                v106 = v102;
                LODWORD(intValue2) = v101;
                v107 = v102;
                v108 = v102;
                v99 = v101;
                v109 = v102;
                v95 = v101;
                v110 = v102;
                v97 = v101;
                v111 = v102;
                v94 = v101;
                v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                switch(v93)
                {
                  case 0:
                    break;
                  case 1:
                    v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                    break;
                  case 2:
                  case 30:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__29_;
                    break;
                  case 3:
                    v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                    break;
                  case 4:
                    goto LABEL_30;
                  case 5:
                    goto LABEL_31;
                  case 6:
                    goto LABEL_27;
                  case 7:
                    goto LABEL_28;
                  case 8:
                    goto LABEL_24;
                  case 9:
                    v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                    break;
                  case 10:
                    goto LABEL_32;
                  case 11:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__10_;
                    break;
                  case 12:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__11_;
                    break;
                  case 13:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__12_;
                    break;
                  case 14:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__13_;
                    break;
                  case 15:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__14_;
                    break;
                  case 16:
                    goto LABEL_33;
                  case 17:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__16_;
                    break;
                  case 18:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__17_;
                    break;
                  case 19:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__18_;
                    break;
                  case 20:
                    goto LABEL_25;
                  case 21:
                  case 25:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__24_;
                    break;
                  case 22:
                    goto LABEL_26;
                  case 23:
                  case 27:
                    goto LABEL_29;
                  case 24:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__23_;
                    break;
                  case 26:
                    goto LABEL_34;
                  case 28:
                  case 33:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__32_;
                    break;
                  case 29:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__28_;
                    break;
                  case 31:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__30_;
                    break;
                  case 32:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__31_;
                    break;
                  case 34:
                    goto LABEL_23;
                  default:
                    v115 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const PptPlaceholder *pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)"];
                    v116 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Binary/Mapper/PBPresentation.mm"];
                    [OITSUAssertionHandler handleFailureInFunction:v115 file:v116 lineNumber:484 isFatal:0 description:"Unexpected PD layout type"];

                    +[OITSUAssertionHandler logBacktraceThrottled];
                    v112 = 0;
                    break;
                }

LABEL_54:
                v193 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v156 = v96;
                v157 = v89;
                v117 = *v112;
                v118 = *v103;
                if (v117)
                {
                  v119 = 0;
                  v120 = v103 + 1;
                  v121 = v112 + 1;
                  do
                  {
                    TCVerifyInputMeetsCondition(v118 != 0xFF);
                    v122 = objc_alloc_init(OADShape);
                    [v193 addObject:v122];
                    v123 = objc_alloc_init(OADPresetShapeGeometry);
                    [(OADShape *)v122 setGeometry:v123];
                    [(OADShapeGeometry *)v123 setIsEscher:1];
                    [(OADPresetShapeGeometry *)v123 setType:1];
                    v124 = objc_alloc_init(PDOfficeArtClient);
                    [(OADDrawable *)v122 setClientData:v124];
                    v125 = objc_alloc_init(PDPlaceholder);
                    [(PDOfficeArtClient *)v124 setPlaceholder:v125];
                    [(PDPlaceholder *)v125 setIndex:v119];
                    [(PDPlaceholder *)v125 setType:[PBPlaceholder readPlaceholderType:v117]];
                    if ((v118 - 2) >= 0x11u)
                    {
                      v126 = 0;
                    }

                    else
                    {
                      v126 = dword_25D70F7C8[(v118 - 2)];
                    }

                    [(PDPlaceholder *)v125 setSize:v126];
                    v127 = [PBPlaceholder readPlaceholderOrientation:v117];
                    [(PDPlaceholder *)v125 setOrientation:v127];
                    v128 = v185;
                    v129 = v186;
                    v130 = v187;
                    v131 = v188;
                    v199 = v190;
                    rect = v189;
                    v132 = v192;
                    v198 = v191;
                    if (v118)
                    {
                      v128 = v175;
                      v129 = v176;
                      v130 = v177;
                      v131 = v178;
                      v199 = v180;
                      rect = v179;
                      v132 = v182;
                      v198 = v181;
                      if (v118 >= 0xAu)
                      {
                        if (v118 - 16 < 4 || (v128 = 4320.0, v129 = 5760.0, v130 = v161, v131 = v162, v199 = v62, rect = v64, v132 = v160, v198 = v159, v118 == 10))
                        {
                          v128 = height;
                          v129 = width;
                          v130 = y;
                          v131 = x;
                          v199 = v171;
                          rect = v170;
                          v132 = v173;
                          v198 = v172;
                        }
                      }
                    }

                    v133 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds[32 * v118];
                    v196 = v133[1];
                    v197 = *v133;
                    v194 = v133[3];
                    v195 = v133[2];
                    memset(&v201, 0, sizeof(v201));
                    v213.origin.x = v131;
                    v213.origin.y = v130;
                    v213.size.width = v129;
                    v213.size.height = v128;
                    MidX = CGRectGetMidX(v213);
                    v214.origin.x = v131;
                    v214.origin.y = v130;
                    v214.size.width = v129;
                    v214.size.height = v128;
                    MidY = CGRectGetMidY(v214);
                    CGAffineTransformMakeTranslation(&v201, -MidX, -MidY);
                    t1 = v201;
                    v215.origin.x = v132;
                    v215.origin.y = v198;
                    v215.size.width = v199;
                    v215.size.height = rect;
                    v136 = CGRectGetWidth(v215);
                    v216.origin.x = v131;
                    v216.origin.y = v130;
                    v216.size.width = v129;
                    v216.size.height = v128;
                    v137 = CGRectGetWidth(v216);
                    v217.origin.x = v132;
                    v217.origin.y = v198;
                    v217.size.width = v199;
                    v217.size.height = rect;
                    v138 = CGRectGetHeight(v217);
                    v218.origin.x = v131;
                    v218.origin.y = v130;
                    v218.size.width = v129;
                    v218.size.height = v128;
                    v139 = CGRectGetHeight(v218);
                    CGAffineTransformMakeScale(&t2, v136 / v137, v138 / v139);
                    CGAffineTransformConcat(&v205, &t1, &t2);
                    v201 = v205;
                    t1 = v205;
                    v219.origin.x = v132;
                    v219.origin.y = v198;
                    v219.size.width = v199;
                    v219.size.height = rect;
                    v140 = CGRectGetMidX(v219);
                    v220.origin.x = v132;
                    v220.origin.y = v198;
                    v220.size.width = v199;
                    v220.size.height = rect;
                    v141 = CGRectGetMidY(v220);
                    CGAffineTransformMakeTranslation(&t2, v140, v141);
                    CGAffineTransformConcat(&v205, &t1, &t2);
                    v201 = v205;
                    v221.origin.y = v196;
                    v221.origin.x = v197;
                    v221.size.height = v194;
                    v221.size.width = v195;
                    v222 = CGRectApplyAffineTransform(v221, &v205);
                    v142 = [[OADOrientedBounds alloc] initWithBounds:v222.origin.x, v222.origin.y, v222.size.width, v222.size.height];
                    drawableProperties3 = [(OADDrawable *)v122 drawableProperties];
                    [drawableProperties3 setOrientedBounds:v142];

                    v144 = objc_alloc_init(OADTextBody);
                    [(OADShape *)v122 setTextBody:v144];
                    v64 = v183;
                    v62 = v184;
                    if (v127 == 1)
                    {
                      properties = [(OADTextBody *)v144 properties];
                      [properties setFlowType:6];
                    }

                    v117 = v121[v119];
                    v118 = v120[v119++];
                  }

                  while (v117);
                }

                TCVerifyInputMeetsCondition(v118 == 255);
                [PBHeadersFooters readHeadersFootersToSlideLayout:addSlideLayout drawables:v193 state:stateCopy];
                v66 = v154;
                v88 = v155;
                v89 = v157;
                [addSlideLayout setDrawables:v193];
                tgtPresentation2 = [stateCopy tgtPresentation];
                [tgtPresentation2 cacheGraphicStylesForSlideBase:addSlideLayout];

                [PBSlideBase mapSlideNumberPlaceholder:slideMaster tgtSlideBase:addSlideLayout state:stateCopy];
                [PBSlideMaster flattenPlaceholderTextStylesIntoLayout:addSlideLayout layoutType:v156 masterStyleMap:v165];

                v92 = addSlideLayout;
                break;
            }
          }

          ++v89;
        }

        while (v89 != v88);
      }

      [v153 cacheSlideLayouts];

      v67 = v150 + 1;
    }

    while (v150 + 1 != v66);
  }
}

+ (void)readSlides:(id)slides masterLayoutMap:(id)map slideIdMap:(id)idMap state:(id)state isThumbnail:(BOOL)thumbnail delegate:(id)delegate
{
  slidesCopy = slides;
  mapCopy = map;
  stateCopy = state;
  delegateCopy = delegate;
  v30 = stateCopy;
  tgtPresentation = [stateCopy tgtPresentation];
  if (delegateCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = objc_opt_respondsToSelector();
      if (v17)
      {
        v18 = [slidesCopy childOfType:4080 instance:0];
        v19 = v18;
        if (v18)
        {
          v20 = [v18 indexOfFirstChildOfType:1011 afterIndex:-1];
          selfCopy3 = self;
          if (v20 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v22 = 0;
            do
            {
              v20 = [v19 indexOfFirstChildOfType:1011 afterIndex:v20];
              ++v22;
            }

            while (v20 != 0x7FFFFFFFFFFFFFFFLL);
            goto LABEL_16;
          }
        }

        else
        {
          selfCopy3 = self;
        }

        v22 = 0;
LABEL_16:
        v23 = tgtPresentation;
        [delegateCopy readerDidStartDocument:tgtPresentation withElementCount:v22];
        v24 = v17 & 1;

        v25 = 1;
        goto LABEL_10;
      }
    }
  }

  selfCopy3 = self;
  v23 = tgtPresentation;
  v24 = 0;
  v25 = 0;
LABEL_10:
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__24;
  v49 = __Block_byref_object_dispose__24;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __92__PBPresentation_Private__readSlides_masterLayoutMap_slideIdMap_state_isThumbnail_delegate___block_invoke;
  v32[3] = &unk_2799CDAE0;
  v26 = v30;
  v33 = v26;
  v27 = mapCopy;
  thumbnailCopy = thumbnail;
  v40 = v24;
  v34 = v27;
  v37 = &v45;
  v28 = delegateCopy;
  v35 = v28;
  v38 = &v41;
  v29 = v23;
  v36 = v29;
  [selfCopy3 readSlideListWithInstance:0 documentContainerHolder:slidesCopy state:v26 block:v32];
  if (v25 && v46[5])
  {
    ++v42[3];
    [v28 readerDidReadElement:? atIndex:? inDocument:? isLastElement:?];
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
}

void __92__PBPresentation_Private__readSlides_masterLayoutMap_slideIdMap_state_isThumbnail_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  [*(a1 + 32) setSourceSlideId:*(a3 + 56)];
  v7 = objc_alloc_init(PDSlide);
  v8 = [*(a1 + 40) slideLayoutForSlideHolder:v13];
  [(PDSlide *)v7 setSlideLayout:v8];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) masterInfoForSlideHolder:v13];
  [v9 setCurrentSourceMasterStyleInfoVector:{objc_msgSend(v10, "sourceTextStyling")}];

  [PBSlide readFromSlideContainer:v13 toSlide:v7 state:*(a1 + 32)];
  [*(a1 + 32) setCurrentSourceMasterStyleInfoVector:0];
  if (![(PDSlideBase *)v7 isHidden])
  {
    *a4 = *(a1 + 80);
    if (*(a1 + 81) == 1)
    {
      v11 = *(*(a1 + 64) + 8);
      if (*(v11 + 40))
      {
        v12 = *(a1 + 48);
        ++*(*(*(a1 + 72) + 8) + 24);
        [v12 readerDidReadElement:? atIndex:? inDocument:? isLastElement:?];
        v11 = *(*(a1 + 64) + 8);
      }

      objc_storeStrong((v11 + 40), v7);
    }

    else
    {
      [*(a1 + 56) addSlide:v7];
    }
  }

  [*(a1 + 32) setSourceSlideId:0xFFFFFFFFLL];
}

+ (void)readNotes:(id)notes masterLayoutMap:(id)map slideIdMap:(id)idMap state:(id)state delegate:(id)delegate
{
  notesCopy = notes;
  mapCopy = map;
  stateCopy = state;
  delegateCopy = delegate;
  documentRoot = [stateCopy documentRoot];
  tgtPresentation = [stateCopy tgtPresentation];
  v15 = objc_alloc_init(PDNotesMaster);
  [tgtPresentation addNotesMaster:v15];
  v16 = [notesCopy firstChildOfType:1001];
  Atom = ESDAtomAccess<PptDocumentAtom>::extractAtom(v16, 1);

  if (Atom[16])
  {
    v18 = [documentRoot pbReferenceWithID:?];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    TCVerifyInputMeetsCondition(isKindOfClass & 1);
    v20 = [v18 firstChildOfType:1009];
    v21 = ESDAtomAccess<PptNotesAtom>::extractAtom(v20, 1);

    v22 = [mapCopy masterInfoForMasterId:v21[12]];
    if (!v22)
    {
      allMasterIds = [mapCopy allMasterIds];
      v24 = [allMasterIds sortedArrayUsingSelector:sel_compare_];
      firstObject = [v24 firstObject];

      TCVerifyInputMeetsCondition(firstObject != 0);
      v22 = [mapCopy masterInfoForMasterId:{objc_msgSend(firstObject, "intValue")}];
    }

    TCVerifyInputMeetsCondition(v22 != 0);
    [stateCopy setCurrentSourceMasterStyleInfoVector:{objc_msgSend(v22, "sourceTextStyling")}];
    theme = [(PDNotesMaster *)v15 theme];
    colorMap = [(PDNotesMaster *)v15 colorMap];
    [self readThemeFromSlideMaster:v18 document:notesCopy theme:theme colorMap:colorMap state:stateCopy];

    slideMaster = [v22 slideMaster];
    [self readTextStyleFromNotesMaster:v18 toNotesMaster:v15 slideMaster:slideMaster state:stateCopy];
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __79__PBPresentation_Private__readNotes_masterLayoutMap_slideIdMap_state_delegate___block_invoke;
  v34[3] = &unk_2799CDB08;
  v29 = stateCopy;
  v35 = v29;
  v30 = delegateCopy;
  v36 = v30;
  v31 = tgtPresentation;
  v37 = v31;
  [self readSlideListWithInstance:2 documentContainerHolder:notesCopy state:v29 block:v34];
  [v29 setCurrentSourceMasterStyleInfoVector:0];
}

void __79__PBPresentation_Private__readNotes_masterLayoutMap_slideIdMap_state_delegate___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 eshObject];
  if ((*(*v3 + 16))(v3) == 1008)
  {
    v4 = [PBSlide notesSlideFromSlideContainer:v5 state:*(a1 + 32)];
    [*(a1 + 40) readerDidReadElement:v4 atIndex:0x7FFFFFFFFFFFFFFFLL inDocument:*(a1 + 48) isLastElement:0];
  }
}

@end